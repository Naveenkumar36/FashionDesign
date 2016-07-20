package com.fashiondesign



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GalleryController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
        respond Gallery.list(params), model:[galleryInstanceCount: Gallery.count()]
    }

    def show(Gallery galleryInstance) {
        respond galleryInstance
    }

    def create() {
        respond new Gallery(params)
    }

    @Transactional
    def save(Gallery galleryInstance) {
        if (galleryInstance == null) {
            notFound()
            return
        }

        if (galleryInstance.hasErrors()) {
            respond galleryInstance.errors, view:'create'
            return
        }

        if(!(galleryInstance.save(flush:true))){
			flash.error = "Something went Worng"
			respond galleryInstance.errors, view:'create'
			return
		}
		redirect action:'index'

        /*request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gallery.label', default: 'Gallery'), galleryInstance.id])
                redirect galleryInstance
            }
            '*' { respond galleryInstance, [status: CREATED] }
        }*/
    }

    def edit(Gallery galleryInstance) {
        respond galleryInstance
    }

    @Transactional
    def update(Gallery galleryInstance) {
        if (galleryInstance == null) {
            notFound()
            return
        }

        if (galleryInstance.hasErrors()) {
            respond galleryInstance.errors, view:'edit'
            return
        }

        galleryInstance.save flush:true

        /*request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Gallery.label', default: 'Gallery'), galleryInstance.id])
                redirect galleryInstance
            }
            '*'{ respond galleryInstance, [status: OK] }
        }*/
    }

    @Transactional
    def delete(Gallery galleryInstance) {

        if (galleryInstance == null) {
            notFound()
            return
        }

        galleryInstance.delete flush:true
		redirect action:'index'
       /* request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Gallery.label', default: 'Gallery'), galleryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }*/
    }
	 
	def itemUploaded = {
		def emp = Gallery.get( params.id )
		response.contentType = "image/png,image/jpeg,image/gif,image/jpg"
		response.contentLength = emp?.item?.length
		response.outputStream.write(emp?.item)

	}

	
	def getAllItems(){ 
		println "=======================3333========"
		def items = Gallery.findAll()
		println "itemsitemsitems"+items
		//redirect action:'index'
		render view:'itemGallery',model:[galleryInstanceList:items]
	}
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gallery.label', default: 'Gallery'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
