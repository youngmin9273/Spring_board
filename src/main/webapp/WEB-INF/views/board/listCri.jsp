<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
     integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="../resources/css/reset.css">
    <link rel="stylesheet" href="../resources/css/default.css">
    <link rel="stylesheet" href="../resources/css/board.css">
    
</head>
<body>
	<jsp:include page="../header/header.jsp"></jsp:include>

    
 	
 	<div id="board">
      <h2>게시판</h2>
      <div>
      <a href="/board/create"><button type="button" name="button" class="btn btn-primary">글쓰기</button></a>
		<table  class="table table-striped" border="1px" width="60%">
	        <tr>
	            <th style="width:10%" >글 번호</th>
	            <th style="width:30%">제목</th>
	            <th style="width:20%">작성자</th>
	            <th style="width:20%">날짜</th>
	            <th style="width:10%">조회수</th>
	        </tr>
	    <c:forEach items="${boardList}" var="boardVO">
	        <tr>
	            <td>${boardVO.b_no}</td>
	            <td><a href="/board/detail?b_no=${boardVO.b_no}">${boardVO.b_title}</a></td>
	            <td>${boardVO.b_writer}</td>
	            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.b_date}" /> </td>
	            <td><span> ${boardVO.b_count}</span> </td>
	        </tr>
	    </c:forEach> 
    </table>
    
      </div>
    </div>
    


	<div class="footer"></div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity=
"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" 
integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" 
integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>

</html>
