<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#List {
	 hight : 2000px;
      display:grid ;
      grid-auto-flow: row;
      grid-template-columns: repeat(4, 343px);
      grid-template-rows: 500px, 500px;
      margin: 10px;
    }
    #Name{
    	font-weight : bold;
    	font-size : 1.6rem;
    }

</style>



<div class="container">
  <div id="List">
    <c:forEach var="dto" items="${goodsList}">
	    <div class="col border border-dark m-4 w-80" >
	      <a href="bookedit?bCode=${dto.bCode}"> 
			<img src="images/items/${dto.bImage}" width="200">
		  </a>
	       <div class="mt-4 fs-6"><span id="Name"> ${dto.bName} </span> </div>
	       <div class="mt-2 fs-6">${dto.bPrice}<a>원</a></div>
	       <br>
	       <div class="mt-2 fs-6">재고 : ${dto.bInventory}<a>개</a></div>
	    </div>
    </c:forEach>
  </div>
</div>