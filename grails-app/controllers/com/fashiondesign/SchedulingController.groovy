package com.fashiondesign

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.text.SimpleDateFormat

@Transactional(readOnly = true)
class SchedulingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def beforeInterceptor = [action: this.&auth, except: ['login', 'dologin']]
	
	private auth() {
		if (!session.user) {
			redirect(action: 'login', controller:'Account')
			return false
		}
	}
	
	def mailService
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Scheduling.list(params), model:[schedulingInstanceCount: Scheduling.count()]
    }

    def show(Scheduling schedulingInstance) {
        respond schedulingInstance
    }
	
	def bookTailor() {
		respond new Scheduling(params),model:[tailor:'tailor']
	}
	
	def bookBeautician() {
		respond new Scheduling(params),model:[beautician:'beautician']
	}


    def create() {
        respond new Scheduling(params)
    }

    @Transactional
    def save(Scheduling schedulingInstance) {
		println " ==inside= "
		String dynamicView="";
		String dynamicValue=""
        if (schedulingInstance == null) {
            notFound()
            return
        }
		if(params.beautician){
			dynamicView = "bookBeautician"
			dynamicValue = "beautician"
			schedulingInstance.type = params.beautician
		}
			
		if(params.tailor){
			dynamicView = "bookTailor"
			dynamicValue = "tailor"
			schedulingInstance.type = params.tailor
		}
		schedulingInstance.visitTiming = (Integer.parseInt(params.fromDateHour)*100)+Integer.parseInt(params.fromDateMin)
		
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
		schedulingInstance.dateCreated = strToDate
		schedulingInstance.lastUpdated = strToDate
			
		println " == after not found =="
        if (schedulingInstance.hasErrors()) {
			println schedulingInstance.dump()
            respond schedulingInstance.errors, view:dynamicView
            return
        }
		println " == after error =="
		println " == "+params
		println " === "+schedulingInstance

        schedulingInstance.save flush:true
		
		try{
			mailService.sendMail {
				//multipart true
				to "jnaveen771@gmail.com"
				//from "prevasystemspreva@gmail.com"
				subject "Daily Pearson report"
				body 	schedulingInstance.name+" has booked "+schedulingInstance.type
				//html groovyPageRenderer.render(view: '/mailDelivery/mailTemplate',model:[logData:logData,deviceData:deviceData])
				//html g.render(template:"/mailDelivery/mailTemplate",model:[logData:logData,deviceData:deviceData])
				//inline 'simulia', 'image/jpg', new File('./web-app/images/simulia.png')
			}
			}
			catch (Exception e) {
					e.printStackTrace()
					//log.error "Problem sending email"
			}

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'scheduling.label', default: 'Scheduling'), schedulingInstance.id])
                redirect(action:'dashboard',controller:'user')
            }
            '*' { respond schedulingInstance, [status: CREATED] }
        }
    }

    def edit(Scheduling schedulingInstance) {
        respond schedulingInstance
    }

    @Transactional
    def update(Scheduling schedulingInstance) {
        if (schedulingInstance == null) {
            notFound()
            return
        }

        if (schedulingInstance.hasErrors()) {
            respond schedulingInstance.errors, view:'edit'
            return
        }

        schedulingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Scheduling.label', default: 'Scheduling'), schedulingInstance.id])
                redirect schedulingInstance
            }
            '*'{ respond schedulingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Scheduling schedulingInstance) {

        if (schedulingInstance == null) {
            notFound()
            return
        }

        schedulingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Scheduling.label', default: 'Scheduling'), schedulingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'scheduling.label', default: 'Scheduling'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
