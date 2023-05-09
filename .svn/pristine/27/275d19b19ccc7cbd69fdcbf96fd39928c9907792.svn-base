<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#imgArea { 
  	text-align: center;
    width: 200px; 
    height: 200px; 
    object-fit: contain; 
} 
</style>

<!-- 페이지 타이틀 -->
<div class="page-titles">
   <ol class="breadcrumb">
      <li><h5 class="bc-title">자료실</h5></li>
      <li class="breadcrumb-item"><a href="javascript:void(0)">
        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M10.0122 1.82893L11.6874 5.17545C11.8515 5.50399 12.1684 5.73179 12.5359 5.78451L16.2832 6.32391C17.2091 6.45758 17.5775 7.57968 16.9075 8.22262L14.1977 10.8264C13.9314 11.0825 13.8101 11.4505 13.8731 11.812L14.5126 15.488C14.6701 16.3974 13.7023 17.0911 12.8747 16.6609L9.52545 14.9241C9.1971 14.7537 8.80385 14.7537 8.47455 14.9241L5.12525 16.6609C4.29771 17.0911 3.32986 16.3974 3.48831 15.488L4.12686 11.812C4.18986 11.4505 4.06864 11.0825 3.80233 10.8264L1.09254 8.22262C0.422489 7.57968 0.790922 6.45758 1.71678 6.32391L5.4641 5.78451C5.83158 5.73179 6.14942 5.50399 6.31359 5.17545L7.98776 1.82893C8.40201 1.00148 9.59799 1.00148 10.0122 1.82893Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		</svg>
         자료 등록 </a>
      </li>
      <li class="breadcrumb-item active"><a href="#">${className }</a></li>
   </ol>
</div>
<div class="container-fluid">
	<!-- 표현하고자 하는 내용 넣기 --> 
	<div class="row">
		<div class="card">
			<div class="col-xl-12">
				<div class="card-header" style="padding-bottom:10px;">
						<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;${className } 자료실</strong></h4>
				</div>				
				<div class="card-body">
					   <label for="lrTitle" class="form-label" style="font-size: 17px;">제목</label>
					   <input type="text" class="form-control" id="lrTitle" />
					 <div class="mb-3">
					 <br>
					   <label for="lecCode" class="form-label" style="font-size: 17px;">업로드 일자</label>
					   <input type="text" class="form-control" id="update"/>
					 </div>
					 <div class="mb-3">
					   <label for="inputFile" class="form-label" style="font-size: 17px;">파일</label>
					   <input class="form-control" type="file" id="inputFile" multiple="multiple" />
					   <div class="mt-3 uploadedList"></div>
					 </div>
				</div>
				<div class="card-footer gap-2 d-flex justify-content-end align-items-center">
					<button type="button" class="btn btn-primary" id="registerBtn">등록</button>
					<button type="button" class="btn btn-secondary" onclick="javascript:location.href='/reference/referenceList'">목록</button>
				</div>	
			</div>
		</div>
	</div>	
</div>


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	const currentDate = new Date();
	 // 년, 월, 일을 문자열로 변환하여 입력란에 값으로 설정
	 const year = currentDate.getFullYear();
	 const month = String(currentDate.getMonth() + 1).padStart(2, '0');
	 const day = String(currentDate.getDate()).padStart(2, '0');
	 document.getElementById('update').value = `\${year}-\${month}-\${day}`;	
	
	var inputFile = $("#inputFile");
	var registerBtn = $("#registerBtn");
	
	inputFile.on("change", function(event){
	
		
		console.log("change event", event);
		
		
			var files = event.target.files;
			console.log(files);
			var formData = new FormData();
			for(var i = 0; i < files.length; i++){
				formData.append("file", files[i]); // 키 (자바클래스의 MultipartFile file 과 매핑됨)
			}
			
			// cf) 동기처리는 form 태그로 보내면 서버에서 처리가 됨
			var filePath;	
			var fileName;	
			var fileType;	
			var objArray = []; // obj 배열 선언
			
			// 비동기이면서 파일데이터를 서버로 보내려면 폼 데이터를 만들어서 키와 밸류 형식으로 보내야한다.
				$.ajax({
					type : "post",
					url : "/reference/uploadFile",
					data : formData,
					dataType : "json",	// 응답데이터 타입
					processData : false, // 파일데이터는 쿼리스트링으로 보내는 게 아니니까 해당 부분을 false 로
					contentType : false, // 기본 설정된 contentType은 false로 설정하고 multipart form data로 데이터를 보냄
					success : function(data) {
						
						for(let  i=0; i< data.length; i++){
							filePath = data[i].substr(0,12);
							fileName = data[i].substr(12);
							fileType = getExtension(data[i]);
							var str = "";
							if(checkImageType(data[i])) { // 이미지이면 이미지 태그를 이용한 출력형태
								str += "<div class='d-inline-block'>";
								str += "<a href = '/reference/displayFile?fileName="+ data[i] + "'>";
								str += "<img class='img-fluid' id='imgArea' src = '/reference/displayFile?fileName=" + data[i] + "'/>";
								str += "</a>";
								str += "<span><i class='bi bi-x'></i></span>";
								str += "</div>";
							} else { // 파일이면 파일명에 대한 링크로만 출력
								str += "<div class='d-inline-block'>";
								str += "<a href ='/reference/displayFile?fileName="+data[i]+"'>" +getOriginalName(data[i]) + "</a>";
								str += "<span><i class='bi bi-x'></i></span>";
								str += "</div>";
							}
							$(".uploadedList").append(str);
							objArray.push({ // obj를 배열에 저장
				                "lrTitle": $("#lrTitle").val(),
				                "lecCode": '${lecCode}',
				                "lrContent": $("#lrContent").val(),
				                "lrFilePath": filePath,
				                "lrFileName": fileName,
				                "lrFileType": fileType,
				            });

							
					}
						console.log("objArray >>>> ", objArray);
						registerBtn.on("click", function() {
							$.ajax({
								type :"post",
								url : "/reference/registerReference/${lecCode}",
								contentType : "application/json", // json 타입으로 보낼거임
								dataType : "text",
								data: JSON.stringify(objArray), // json 타입을 서버로 바로 보낼 수 없어 텍스트화 할 거임
								success: function (res) {
									Swal.fire({
									   title :  '자료 등록 성공',
									   html:  '자료가 등록 되었습니다.', 
									   icon : 'success'  
									}).then((result) => {
										location.href = `/reference/referenceList/${lecCode}`;
									});
// 									swal("등록하였습니다.").then(function() {
// 								          location.href = `/reference/referenceList/${lecCode}`;
// 								    });
								 },
							});
						})	
				}
			});
		})
	// x를 누르면 삭제되는 function
	$(".uploadedList").on("click","span",function(){
		$(this).parent("div").remove();
	});
	
	
	
	function getOriginalName(fileName){
		if(checkImageType(fileName)){
			return;
		}		
		var idx = fileName.indexOf("_") + 1;
		return fileName.substr(idx);
	}
	
	function checkImageType(fileName){
		var pattern = /jpg|gif|png|jpeg/i;
		return fileName.match(pattern); // 패턴과 일치하면 true (너 이미지 맞구나?)
	}
	function getExtension(filename) {
		var ext = filename.split('.').pop();
		return ext;
	}
});
</script>