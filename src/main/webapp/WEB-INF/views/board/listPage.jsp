<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
     integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/reset.css">
<link rel="stylesheet" href="../resources/css/default.css">
<link rel="stylesheet" href="../resources/css/boardList.css">
<link href="https://fonts.googleapis.com/css?family=Cute+Font" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../header/header.jsp"></jsp:include>
 
      <section class="content">
          <nav>
          </nav>
          <main>
            <div id="board_div">
              <h2>게시글</h2>
              <div id="board">
                  <table class="table table-striped">
                        <tr>
                            <th style="width:15%"id="board_th">NO</th>
                            <th style="width:30%"id="board_th">게시글</th>
                            <th style="width:20%"id="board_th">작성자</th>
                            <th style="width:20%"id="board_th">날짜</th>
                            <th style="width:15%"id="board_th">조회수</th>
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
              
	          <div class="text-center">
			  	 <ul>
				 <c:if test="${pageMaker.prev}">
				<a href="listPage?page=${pageMaker.startPage-1}"><li class="list-group-item">&laquo;</li></a>
				 </c:if>
				
				 <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<a href="listPage?page=${idx}"><li class="list-group-item" 
					<c:out value="${pageMaker.cri.page==idx?'class = active':''}"/>>${idx}</li></a>
				 </c:forEach>
	
				 <c:if test="${pageMaker.next && pageMaker.endPage>0 }">
					<a href="listPage?page=${pageMaker.endPage + 1}"><li class="list-group-item">&raquo;</li></a>
				 </c:if>
		     	</ul>
			</div> 
			<a href="/board/create"><button id="createbutton" type="button" name="button" class="btn btn-outline-primary">글쓰기</button></a>  
				
            </div>
          </main>
          <aside>
          </aside>
      </section>
      <footer>
      </footer>
  
	
	

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity=
"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" 
integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" 
integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>