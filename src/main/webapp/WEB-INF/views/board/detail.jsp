<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
     integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/default.css">
	<link rel="stylesheet" href="../resources/css/boardList.css">
	<link href="https://fonts.googleapis.com/css?family=Cute+Font" rel="stylesheet">
	<!-- 제이쿼리 -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
			var formObj = $("form[role='form']");
			
			$("#delete_btn").on("click", function(){
				var check = confirm("삭제하시겠습니까??")
				if(check == true){
					formObj.attr("action", "/board/remove")
					formObj.submit();
					alert("삭제완료");
				}
				
			});
			$("#modity_btn").on("click", function(){
				formObj.attr("action", "/board/modify")
				formObj.attr("method", "get")
				formObj.submit();
			});
			$("#return").on("click", function(){
				self.location="/board/listPage";
			});
		});
	
	</script>
</head>
<body>
	<jsp:include page="../header/header.jsp"></jsp:include>
	
    <section class="content">
          <nav>
          </nav>
          <main>
            <div id="board_div_1">
              <h2>게시글</h2>
              <div id="board_1">
                  <table class="table table-striped">
                        <tr>
                            <th style="width:20%" id="board_th">NO . ${boardVO.b_no}</th>
                            <th style="width:30%" id="board_th">제목 : ${boardVO.b_title}</th>
                            <th style="width:30%" id="board_th">작성자 : ${boardVO.b_writer}</th>
                            <th style="width:20%" id="board_th"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.b_date}" /></th>
                        </tr>
                  </table>
                  <div class="board_content">
                      <p>${boardVO.b_detail}</p>
                  </div>
                   <div id="board_1_button">
                      <button type="submit" id="return" class="btn btn-outline-info">리스트</button>
                      <button type="submit" id="modity_btn" class="btn btn-outline-success">수정</button>
                      <button type="submit" id="delete_btn" class="btn btn-outline-danger">삭제</button>
                  </div>
              </div>
            </div>
          </main>
          <aside>
          </aside>
      </section>
      <form role="form" method="post">
      		<input type="hidden" name="b_no" value="${boardVO.b_no}">
      </form>
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