<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
  <div class="row">
    <c:forEach var="dto" items="${goodsList}">
	    <div class="col border border-dark m-4 w-80">
	      <a href="goodsRetrieve?bCode=${dto.bCode}"> 
			<img src="images/items/${dto.bImage}.jpg" width="200">
		  </a>
	       <div class="mt-4 fs-6">${dto.bName}</div>
	       <div class="mt-2 fs-6">${dto.bPrice}<a>원</a></div>
	    </div>
    </c:forEach>
  </div>
</div>