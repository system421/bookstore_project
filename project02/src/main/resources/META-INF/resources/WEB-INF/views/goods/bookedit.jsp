<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    ${goodsRetrieve}
    <!-- jQuery 설치 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
    <form class="row g-3 m-4" modelAttribute="GoodsDTO" method="post"> 
		  <div class="row mb-3">
		    <label for="bCode" class="col-sm-2 col-form-label">code</label>
		    <div class="col-auto">
		      <input type="text" class="form-control" name="bCode" value="${bookedit.bCode}"></input>
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
		      <input type="text" class="form-control" name="bImage" value="${bookedit.bImage}"></input>
		    </div>
		  </div>
		  <hr>
		    <a href="#" class="btn btn-primary mt-3">수정</a>
		    <a href="#" class="btn btn-primary mt-3">삭제</a>
		    <a href="#" class="btn btn-primary mt-3">취소</a>
		  </div>
		</div>
	   
	  </div>
	</form>
</div>