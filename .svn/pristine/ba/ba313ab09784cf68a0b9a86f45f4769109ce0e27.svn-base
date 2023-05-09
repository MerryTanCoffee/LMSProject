<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 페이지 타이틀 -->
	<div class="page-titles">
		<ol class="breadcrumb">
			<li><h5 class="bc-title">과제</h5></li>
			<li class="breadcrumb-item"><a href="javascript:void(0)">
				<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M10.0122 1.82893L11.6874 5.17545C11.8515 5.50399 12.1684 5.73179 12.5359 5.78451L16.2832 6.32391C17.2091 6.45758 17.5775 7.57968 16.9075 8.22262L14.1977 10.8264C13.9314 11.0825 13.8101 11.4505 13.8731 11.812L14.5126 15.488C14.6701 16.3974 13.7023 17.0911 12.8747 16.6609L9.52545 14.9241C9.1971 14.7537 8.80385 14.7537 8.47455 14.9241L5.12525 16.6609C4.29771 17.0911 3.32986 16.3974 3.48831 15.488L4.12686 11.812C4.18986 11.4505 4.06864 11.0825 3.80233 10.8264L1.09254 8.22262C0.422489 7.57968 0.790922 6.45758 1.71678 6.32391L5.4641 5.78451C5.83158 5.73179 6.14942 5.50399 6.31359 5.17545L7.98776 1.82893C8.40201 1.00148 9.59799 1.00148 10.0122 1.82893Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg>
				과제 등록 </a>
			</li>
			<li class="breadcrumb-item active"><a href="#">${className }</a></li>
		</ol>
	</div>

<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<div class="container-fluid">
	<div class="row">
		<div class="card">
		  <div class="card-header" style="padding-bottom:10px;">
            <div>
              <h4 id="cateName">
              	 <span style="font-size: 20px; color: #f96d00;">|&nbsp;</span> <strong>${className } 과제 등록</strong> 
              </h4>
            </div>
          </div>
	      <div class="page-header min-height-300 border-0" style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');">
	        <span class="mask bg-gradient-secondary opacity-6"></span>
	      </div>
		<!-- <div class="card card-body mx-3 mx-md-4 mt-n6 m-0"> -->
	      <div class="card-body">
	        <form class="row gx-4 mb-2" id="insertForm" action="/submit/insertHomework/${lecCode}" method="post" enctype="multipart/form-data">
			  <div class="col-md-12 fs-4">
				<div class="input-group input-group-outline mb-4 align-items-center">
				  제목 :&nbsp;&nbsp;<input type="text" class="form-control input-default " name="hwTitle" placeholder="제목을 입력해주세요.">
				</div>
			  </div>
			  <div class="col-md-12 fs-4">
			    <div class="mb-4" style="padding-left:3px;">
				  <textarea class="form-txtarea form-control" rows="20" id="hwContent" name="hwContent" style="width:100%;"></textarea>
			    </div>
			  </div>
			  <div class="col-md-12">
			    <div class="mb-1 ps-1">
	              <h6 class="mb-1 fs-4">첨부파일</h6>
				  <div class="input-group input-group-outline">
				    <input type="file" class="form-control" name="boAttach">
				  </div>
	            </div>
				<div class="card-footer bg-white" style="border-color:#fff;">
					<ul class="mailbox-attachments d-flex align-items-stretch clearfix">
						</ul>
					</div>
			  </div>
			  <div class="col-md-12 d-grid gap-3 d-md-flex justify-content-md-end">
			  <button type="button" class="btn badge light badge-primary" id="insertBtn">등록</button>
			    <button type="button" class="btn badge light badge-danger" id="cancelBtn">취소</button>
			    <button type="button" class="btn badge light badge-dark" id="listBtn">목록</button>
			  </div>
	        </form>
	       
	        </div>
      	</div>
     </div>
</div>      
      
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="/resources/vendor/global/global.min.js"></script>
	<script src="/resources/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/resources/vendor/ckeditor/ckeditor.js"></script>
    <script src="/resources/js/custom.js"></script>
	<script src="/resources/js/deznav-init.js"></script>
    <script>
    
    $(function(){
    	CKEDITOR.replace("hwContent",{
    		footnotesPrefix : 'a',
    		filebrowserUploadUrl:'${pageContext.request.contextPath }/imageUpload'
    	})
    	
    	var insertBtn = $("#insertBtn")
    	var cancelBtn = $("#cancelBtn")
    	var listBtn = $("#listBtn")
    	var insertForm = $("#insertForm")
    	var lecCode = $("#lecCode").val()
    	
    		listBtn.on("click", function () {
			location.href="/submit/homeworkList/"+lecCode;
    	
		});
    	
    	insertBtn.on("click",function(){
    		if($("#hwTitle").val() == ""){
    			alert("제목을 입력해주세요")
    			return false;
    		}
    		if(CKEDITOR.instances.hwContent.getData() ==""){
    			alert("내용을 입력해주세요")
    			return false;
    		}
    	
    		insertForm.submit();
    	})
    	
// 	})
    	
    })
    
    
    </script>