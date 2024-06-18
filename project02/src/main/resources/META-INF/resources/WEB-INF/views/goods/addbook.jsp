 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jQuery 설치 -->
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		

		$("form").on("submit", function(){
			alert("memberForm submit");
			this.action="add_book";  //MemberAddServlet의 맵핑값
			this.method="post";
		}); 
		
		// bCode 중복 체크
		$("#bcodein").on("click", function(){
			 //jQuery Ajax
			   $.ajax({
                   method:"get",
                   url:"Codecheck",   // MemberIdCheckServlet
                   dataType:'text', // 응답되는 데이터타입, 반환값(사용가능|사용불가)
                   data:{
                	   bCode:$("#bCode").val()
                   },
                   success:function(data, status, xhr){
                       console.log("data:", data);
                       console.log("status:", status);
                       $("#bCode").text(data);
                   },
                   error:function(xhr, status, error){
                       console.log("error:", error);
                   }

               });
		}); // bCode 중복 체크
		
		
	});// ready()

</script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
    <form:form class="row g-3 m-4" modelAttribute="GoodsDTO" method="post"/> 
		  <div class="row mb-3">
		    <label for="bCode" class="col-sm-2 col-form-label">code</label>
		    <div class="col-auto">
		      <form:input type="text" class="form-control" name="bCode" id="bCode"/>
		    </div>
		    <div class="col-auto">
			    <button type="button" class="btn btn-primary mb-3" id="bcodein">코드중복</button>
  			</div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">category</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bCategory" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">name</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bName" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">price</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bPrice" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">inventory</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bInventory" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">image</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bImage" ></input>
		    </div>
		  </div>
		  <hr>


		  </div>
		  <div class="col-12">
		    <button type="submit" class="btn btn-primary">추가</button>
		    <button type="reset" class="btn btn-primary">취소</button>
		  </div>
 </form>
	
</div>


