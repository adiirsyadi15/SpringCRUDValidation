<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Modal -->
<div class="modal fade" id="mdladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Mahasiswa</h4>
      </div>
      <div class="modal-body">
        <form:form action="jurusan" commandName="jurusanForm">
		  
		  
			<spring:bind path="noJur">
				  <div class="form-group ${status.error ? 'has-error' : ''}">
				    <label for="Jurusan">Kode</label>
				  	 <form:input path="noJur" size="30" class="form-control" />
				  	<form:errors path="noJur" class="control-label"/>
				  </div>
			</spring:bind>
		  
			<spring:bind path="nama">
			  <div class="form-group ${status.error ? 'has-error' : ''}">
			    <label for="Jurusan">Nama</label>
			  	 <form:input path="nama" size="30" class="form-control" />
			  	<form:errors path="nama" class="control-label" />
			  </div>
			</spring:bind>
		  
        <button type="submit" class="btn btn-primary">Save</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
		</form:form>
      </div>
      <div class="modal-footer">

      </div>
    </div>
  </div>
</div>