package com.fashiondesign


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.text.SimpleDateFormat


@Transactional
class UserController {

    static allowedMethods = [save: "POST"]
	def beforeInterceptor = [action: this.&auth, except: ['login', 'doLogin','recover','recoverEmail','signUp']]
	
	
	LoginService loginService	
	def mailService
	
	private auth() {
		if (!session.user) {
			redirect(action: 'login', controller:'user')
			return false
		}
	}
	
	/**
	 * This action for login user based on user role redirect to specific page
	 * @return
	 */
		def doLogin(){
			println "====="+params
			try{
				User user = loginService.authentication(params)
				if(user && user.role.equals("admin")){
					session.user = user
					redirect action:'dashboard'
				}else if(user && user.role.equals("normal")){
				session.user = user
					redirect action:'dashboard'
				}else{
					flash.error = "User Not Exist"
						render view:'login'
				}
			}
			catch(CustomException custom){
				custom.printStackTrace()
				flash.error = custom.getMessage();
				render view:'login'
			}
			catch(Exception e){
				e.printStackTrace()
				flash.error = "Something Went Worng" 
				render view:'login'
			}
		}
		
		def login(){
			println" == where are you going =="
			render view:'login'
		}
		
		
		def dashboard(){
			render view:'dashboard'
		}
		
		def gallery(){
			render view:'gallery'
		}
		
		def signUp(){
			println " === "+params
			if(params.email && params.phone && params.fname){
				def checkEmailExist = User.findByEmailId(params.email)
				def checkPhoneExist = User.findByPhone_No(params.phone)
				if(checkEmailExist && checkPhoneExist){
					flash.error = " Email_Id and phone_No has  already been use "
					render(view:'signup')
					return
				}
				if(checkEmailExist){
					flash.error = " Email_Id  has  already been use "
					render(view:'signup')
					return
				}
				if(checkPhoneExist){
					flash.error = " phone_No  has  already been use "
					render(view:'signup')
					return
				}
				User user = new User();
				user.firstName = params.fname;
				user.lastName = params.lname;
				user.phone_No = params.phone
				user.emailId = params.email
				user.role = "normal";
				user.userId = params.fname+""+params.email
				user.password  = params.password
				Date curDate = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
			String DateToStr = format.format(curDate);
			Date strToDate
			try {
				strToDate = format.parse(DateToStr);
				System.out.println(strToDate);
			}catch(Exception e) {
				e.printStackTrace();
			}
			user.dateCreated = strToDate;
			user.lastUpdated = strToDate;
			
			def success = user.save(flush:true)
			if(!success){
				println " == hdf "+success
				flash.error = " OOPS something went wrong "
				redirect(action:'signUp')
				return
			}
			println " =sdfhkas "
			render(view:'login')
			return
		}
			render view:'signup'
		}
		
		def recover(){
			println " === recover === "
			render view:'recover' 
		}
		
		def recoverEmail(){
			println  " === recoveing mail === "
			if(!(params.phone && params.emailId)){
				flash.error = "Please enter PhoneNo and Email"
				redirect(action:'recover');
			}
			
			def getUser = User.findByEmailIdAndPhone_No(params.emailId,params.phone)
			if(!getUser){
				flash.error = "User details not exists, please SignUp"
				redirect(action:'recover')
				return
			}
			
			try{
				mailService.sendMail {
					//multipart true
					to "jnaveen771@gmail.com"
					//from "prevasystemspreva@gmail.com"
					subject "fashionDesign Email and Password recovery"
					body 	"Dear user, your email and password for fashionDesign "+"email : "+getUser.emailId+" password : "+getUser.password
					//html groovyPageRenderer.render(view: '/mailDelivery/mailTemplate',model:[logData:logData,deviceData:deviceData])
					//html g.render(template:"/mailDelivery/mailTemplate",model:[logData:logData,deviceData:deviceData])
					//inline 'simulia', 'image/jpg', new File('./web-app/images/simulia.png')
				}
				}
				catch (Exception e) {
						e.printStackTrace()
						//log.error "Problem sending email"
						flash.error =" Something went wrong, try again"
						redirect(action:'recover')
						return
				}
				
				flash.message=" Email and password has been sent to your email account"
				render view:'login'
				return
			
		}
	
		/**
		 * This action for LogOut User
		 * @return
		 */
		def doLogout(){
			if(session.user){
				session.user=null
				session.invalidate()
				render view:'login'
			}else{
			render view:'login'
			}
		}

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    } 

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
	
	
	def feedback(){
		println " ===Providing feedback ==== "
		render(view:'feedback')
	}
	
	
	

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
