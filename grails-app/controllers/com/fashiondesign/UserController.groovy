package com.fashiondesign


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST"]
	
	
	LoginService loginService
	
	
	
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
				}else if(user && user.role.equals("customerExecutive")){
				session.user = user
					redirect action:'index',controller:'CustomerDetail'
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
		
		
		def dashboard(){
			render view:'dashboard'
		}
		
		def gallery(){
			render view:'gallery'
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
