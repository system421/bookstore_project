
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 
 
 <script type="text/javascript">
		$(document).ready(function(){
			
			$("#delete").on("click",function(){
				 $.ajax({
		                type: "POST",
		                url: "bookdelete",
		                data: {
		                	bCode: $("#param1").val(),
		                    param2: $("#param2").val()
		                },
		                success: function(response) {
		                    $("#result").html(response);
		                }
		            });
				
				
				
			});
			
		
	});
</script>
  <div class="TodoApp">
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
    <div class="container">
            <div>
                <table class="table">
                    <thead>
                            <tr>
                           		<th>번호</th>
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
                      <c:forEach var="dto" items="${AllList}" varStatus="status" >
                      <form class="row g-3 m-4"  method="post" enctype="multipart/form-data"> 
						 <tr>
						 			<td> ${status.count}</td>
					                <td id="bcode">${dto.bCode}</td> 
                                    <td id="bImage"><img src="images/items/${dto.bImage}" width="200"></td>
                                    <td id="bName">${dto.bName}</td>
                                    <td id="bInventory">${dto.bInventory}</td>
                                    <td id="bPrice">${dto.bPrice}</td>
                                    <td id="bDate">${dto.bDate}</td>
                                    <td> <a id="delete" href="bookdelete" class="btn btn-warning" >Delete</a> </td>
						</tr>
						</form>
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
	