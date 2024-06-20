
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
  <div class="TodoApp">
    <div class="container">
            <div>
                <table class="table">
                    <thead>
                            <tr>
                                <th>책 코드</th>
                                <th>책 이미지</th>
                                <th>책 이름</th>
                                <th>책 수량</th>
                                <th>책 가격</th>
                                <th>날짜</th>
                                <th>Delete</th>
                            </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="dto" items="${AllList}" varStatus="status">
						 <tr>
					                <td>${dto.bCode}</td> 
                                    <td><img src="images/items/${dto.bImage}" width="200"></td>
                                    <td>${dto.bName}</td>
                                    <td>${dto.bInventory}</td>
                                    <td>${dto.bPrice}</td>
                                    <td>${dto.bDate}</td>
                                    <td> <a href="bookdelete" class="btn btn-warning" >Delete</a> </td>
						</tr>
				      </c:forEach>
					    <tr>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					    </tr>
                    </tbody>

                  </table>
              </div>
             <div class="btn btn-success m-5">전체삭제</div>
        </div>
    </div>
