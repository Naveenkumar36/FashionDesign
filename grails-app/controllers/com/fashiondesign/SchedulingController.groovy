package com.fashiondesign



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SchedulingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Scheduling.list(params), model:[schedulingInstanceCount: Scheduling.count()]
    }

    def show(Scheduling schedulingInstance) {
        respond schedulingInstance
    }

    def create() {
        respond new Scheduling(params)
    }

    @Transactional
    def save(Scheduling schedulingInstance) {
        if (schedulingInstance == null) {
            notFound()
            return
        }

        if (schedulingInstance.hasErrors()) {
            respond schedulingInstance.errors, view:'create'
            return
        }

        schedulingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'scheduling.label', default: 'Scheduling'), schedulingInstance.id])
                redirect schedulingInstance
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
