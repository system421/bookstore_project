<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    ${goodsRetrieve}
    <!-- jQuery 설치 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		$("#up").on("click", function(){
			var gAmount = Number.parseInt($("#gAmount").val());
			$("#gAmount").val(gAmount+1);
		});
		
		$("#down").on("click", function(){
			var gAmount = Number.parseInt($("#gAmount").val());
			if(gAmount==1){
				$("#gAmount").val(1);
			}else{
				$("#gAmount").val(gAmount-1);
			}
			
		});
		
		
	});// ready()

</script>
    
    
<div class="container">
	<form class="row g-3 m-4">
	  <div class="row">    
		<div class="card" style="width:25rem;">
		 
		  <div class="card-body">
		    <h6 class="card-title">
		        <span class="fw-bold">제품코드:</span>  
		       </h6>
		    <h6 class="card-text">
		      <span class="fw-bold ">상품명:</span>
		     </h6>
		    <h6 class="card-text">
		      <span class="fw-bold ">가격:</span>
		       </h6>
		     <h6 class="card-text">
		      <span class="fw-bold ">상품옵션:</span>
		       <select class="select_change" size="1" name="gSize" id="gSize">
						<option selected value="사이즈선택">사이즈선택</option>
						<option value="L">L</option>
						<option value="M">M</option>
						<option value="S">S</option>
				</select>
				<select class="select_change" name="gColor" id="gColor">
	                <option selected value="색상선택">색상선택</option>
					<option value="navy">navy</option>
					<option value="black">black</option>
					<option value="ivory">ivory</option>
					<option value="white">white</option>
					<option value="gray">gray</option>
				</select>
				</h6>
			 <h6 class="card-text">
			 
			      <span class="fw-bold ">주문수량:</span>
			      <input type="text" name="gAmount" value="1" id="gAmount">
			      <img src="images/up.PNG" id="up"> 
			      <img src="images/down.PNG" id="down">
		     
		      </h6>
		    <a href="#" class="btn btn-primary mt-3">수정</a>
		    <a href="#" class="btn btn-primary mt-3">삭제</a>
		    <a href="#" class="btn btn-primary mt-3">취소</a>
		  </div>
		</div>
	   
	  </div>
	</form>
</div>