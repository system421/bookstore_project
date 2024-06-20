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
			$("#up").on("click",function(){
				
				let value = Number.parseInt($("#bInventory").val());
				let value2 = $("#bInventory").val();
				value += 1;
				console.log("up");
				console.log(value);
				console.log(value2);
				$("#bInventory").val(value);
				
				
			});
			$("#down").on("click",function(){
				let value =Number.parseInt($("#bInventory").val());
				let value2 = $("#bInventory").val();
				if(value <= 1)
				{
					value = 1;	
				}else{
					value -= 1;
				}
				console.log("down");
				console.log(value);
				console.log(value2);
				$("#bInventory").val(value);
				
			});
			$("#theFile").on("change",function(){
				let cur_inven = $("#bInventory").val
				
				$("#bInventory").val
			
			
				
			
				
			});
		});
</script>

    <!--  -->>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <form class="row g-3 m-4"  method="post" enctype="multipart/form-data"> 
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
		    
		    <input type="text" id="bInventory"  name="bInventory" value="${bookedit.bInventory}">  
		    <img src="images/up.PNG" id="up"> 
			<img src="images/down.PNG" id="down">
		    
		    </div>
			
		  </div>
		  
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">image</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" id="bImage" name="bImage" value="${bookedit.bImage}" hidden="hidden"></input>
		     
		      <input type="file" class="btn btn-primary" name="theFile" id="theFile"><br>
		      <input type="text" class="btn btn-primary" name="theText" id="theText" hidden="hidden"><br>
		    </div>
		  </div>
		  <hr>
		
		    <button type="submit" class="btn btn-primary" id="edit"  >수정</button>
		    <button type="submit" class="btn btn-primary" id="delete" >삭제</button>
		    <input type="button" class="btn btn-primary" value="취소" onclick="location.href='main'" >  
		    
		  </div>

	</form>