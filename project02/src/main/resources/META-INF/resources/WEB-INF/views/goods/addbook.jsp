 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jQuery 설치 -->
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		

		
		
		
	});// ready()

</script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
    <form:form class="row g-3 m-4" modelAttribute="goodsDTO" method="post"> 
		  <div class="row mb-3">
		    <label for="bCode" class="col-sm-2 col-form-label">code</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" path="bCode"></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">category</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" path="bCategory" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">name</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" path="bName" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">price</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" path="bPrice" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">inventory</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" path="bInventory" ></input>
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="username" class="col-sm-2 col-form-label">image</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" path="bImage" ></input>
		    </div>
		  </div>
		  <hr>


		  </div>
		  <div class="col-12">
		    <button type="submit" class="btn btn-primary">추가</button>
		    <button type="reset" class="btn btn-primary">취소</button>
		  </div>
 </form:form>
	
</div>


