<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- jQuery 설치 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

 <script type="text/javascript">
		$(document).ready(function(){
			
			$("#edit").on("click",function(){
				console.log(this.innerText);;
				var form = document.querySelector("form")
				form.action="bookupdate";
				form.submit();
			});
			
			
			$("#delete").on("click",function(){
				console.log(this.innerText);
				var form = document.querySelector("form")
				form.action="bookdelete";
				form.submit();
				
				
				
			});
			$("#theFile").on("change",function(){
				let fname = $("#theFile")[0].files[0].name;
				console.log($("#theFile")[0].files[0].name);
				console.dir($("#theFile")[0].files[0]);
				$("#bImage").val(fname);
			
				
			
				
			});
		});
</script>

    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <form class="row g-3 m-4"  method="post"> 
<div class="container">
		  <div class="row mb-3">
		    <label for="bCode" class="col-sm-2 col-form-label" hidden="hidden">code</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bCode" value="${bookedit.bCode}" hidden="hidden" ></input>
		      
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">category</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bCategory" value="${bookedit.bCategory}"></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">name</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bName" value="${bookedit.bName}"></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">price</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bPrice" value="${bookedit.bPrice}"></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">inventory</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bInventory" value="${bookedit.bInventory}"></input>
		    </div>
		  </div>
		  
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">image</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" id="bImage" name="bImage" value="${bookedit.bImage}" hidden="hidden"></input>
		      <img src="images/items/${bookedit.bImage}" width="200">
		      <input type="file" class="btn btn-primary" name="theFile" id="theFile"><br>
		    </div>
		  </div>
		  <hr>
		
		    <button type="submit" class="btn btn-primary" id="edit"  >수정</button>
		    <button type="submit" class="btn btn-primary" id="delete" >삭제</button>
		    <input type="button" class="btn btn-primary" value="취소" onclick="location.href='main'" >  
		    
		  </div>

	</form>