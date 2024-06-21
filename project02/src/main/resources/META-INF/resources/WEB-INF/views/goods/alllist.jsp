
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
 
  <div class="TodoApp">
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  
 
    <div class="container">
            <div>
                <table class="table">
                    <thead>
                            <tr>
                           		<th>번호</th>
                                <th>책 코드</th>
                                <th>책 카테고리</th>
                                <th>책 이미지</th>
                                <th>책 이름</th>
                                <th>책 수량</th>
                                <th>책 가격</th>
                                <th>날짜</th>
                                <th>Delete</th>
                                <th>상세 정보 보기</th>
                            </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="dto" items="${AllList}" varStatus="status" >
                      <form class="row g-3 m-4"  method="post" enctype="multipart/form-data"> 
						 <tr>
						 			<td> ${status.count}</td>
					                <td id="bcode">${dto.bCode}</td> 
					                <td id="bCategory">${dto.bCategory}</td> 
                                    <td id="bImage"><img src="images/items/${dto.bImage}" width="20"></td>
                                    <td id="bName">${dto.bName}</td>
                                    <td id="bInventory">${dto.bInventory}</td>
                                    <td id="bPrice">${dto.bPrice}</td>
                                    <td id="bDate">${dto.bDate}</td>
                                    <td> <a id="delete" href="bookdeleteone?bCode=${dto.bCode}" class="btn btn-warning" >Delete</a> </td>
                                    <td> <a id="update" href="bookedit?bCode=${dto.bCode}" class="btn btn-warning" >상세보기</a> </td>
								     
						</tr>
						</form>
				      </c:forEach>
				      <br>
				      <input type="button" class="btn btn-primary" value="home 화면으로" onclick="location.href='main'" >

	
                    </tbody>

                  </table>
				      <input type="button" class="btn btn-primary" value="home 화면으로" onclick="location.href='main'" >
              </div>
        </div>
    </div>
	