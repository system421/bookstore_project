
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
  <div class="TodoApp">
   >>>${cartList}
    <div class="container">
            <div>
                <table class="table">
                    <thead>
                            <tr>
                                <th>전체삭제
                                    &nbsp;
                                    <input type="checkbox" name="allCheck" id="allCheck"></th>
                                <th>번호</th>
                                <th>상품이미지</th>
                                <th>상품정보</th>
                                <th>상품가격</th>
                                <th>상품수량</th>
                                <th>합계</th>
                                <th>날짜</th>
                                <th>Delete</th>
                            </tr>
                    </thead>
                    <tbody>
                      <c:set var="sum" value="0"/>
                      <c:forEach var="dto" items="${AllList}" varStatus="status">
						 <tr>
					                <td>${dto.bCode}</td> 
                                    <td><img src="images/items/${dto.bImage} width="50" height="50" ></td>
                                    <td>${dto.bCode}&nbsp;/&nbsp;${dto.bName}&nbsp;/&nbsp;${dto.bPrice}</td>
                                    
                                    <td>${dto.bPrice}</td>
                                    
                                    <td>${dto.bDate}</td>
                                    <td> <a href="#" class="btn btn-warning" >Delete</a> </td>
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
