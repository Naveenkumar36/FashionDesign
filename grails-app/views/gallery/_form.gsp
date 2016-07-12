<%@ page import="com.fashiondesign.Gallery"%>


<div class="form-group">
	<div class="col-lg-2"></div>
	<div
		class="fieldcontain ${hasErrors(bean: galleryInstance, field: 'type', 'error')} required">
		<label class="col-lg-3 control-label" for="type"> <g:message
				code="gallery.type.label" default="Type" /> <span
			class="required-indicator">*</span>
		</label>
		<div class="col-lg-6">
			<g:textField name="type" required="" value="${galleryInstance?.type}" />
		</div>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<div
		class="fieldcontain ${hasErrors(bean: galleryInstance, field: 'item', 'error')} required">
		<label class="col-lg-3 control-label" for="item"> <g:message
				code="gallery.item.label" default="Item" /> <span
			class="required-indicator">*</span>
		</label>
		<div class="col-lg-6">
			<input type="file" id="item" name="item" />
		</div>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<div
		class="fieldcontain ${hasErrors(bean: galleryInstance, field: 'description', 'error')} ">
		<label class="col-lg-3 control-label" for="description"> <g:message
				code="gallery.description.label" default="Description" />
		</label>
		<div class="col-lg-6">
			<g:textArea name="description" maxlength="250"
				value="${galleryInstance?.description}" />
		</div>
	</div>
	<div class="row"></div>
</div>

