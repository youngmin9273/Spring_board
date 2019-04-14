<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>게시글 작성</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
     integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/default.css">
	<link rel="stylesheet" href="../resources/css/boardList.css">
	<link href="https://fonts.googleapis.com/css?family=Cute+Font" rel="stylesheet">
	<!-- 제이쿼리 -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<jsp:include page="../header/header.jsp"></jsp:include>
    
    <section class="content">
          <nav>
          </nav>
          <main>
            <div id="board_div_1">
              <h2>게시글 작성</h2>
              <div id="board_1">
                <form method="post" action="/board/create">
                  <input type="text" name="b_title" id="b_title" placeholder="제   목 : 10글자 이하" maxlength="10"/>
                  <input type="text" name="b_writer" id="b_writer" placeholder="작성자 : 10글자 이하" maxlength="10"/>
                  <textarea name="b_detail" id="b_detail" placeholder="내   용 : 100글자 이하" maxlength="100"></textarea>
                  <button id="createbutton" type="submit" class="btn btn-outline-primary">작성</button></a>
                </form>
              </div>
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


