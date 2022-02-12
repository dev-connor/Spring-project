<%@ page contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <h1>Register Page</h1>
   
   <label>Writer</label> <input value="<sec:authentication property="principal.username"/>" disabled>
   <form role="form" action="/board/register" method="post">
   		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
   
      <div class="form-group">
         <label>Title</label> <input class="form-control" name='title' autofocus>
      </div>

      <div class="form-group">
         <label>Text area</label>
         <textarea class="form-control" rows="3" name='content'></textarea>
      </div>

      <div class="form-group">
      <input class="form-control" name='writer' 
      	value="<sec:authentication property="principal.username"/>" hidden>
      </div>
      <button type="submit" class="btn btn-default">글 작성</button>
      <button type="reset" class="btn btn-default">모두 지우기</button>
   </form>
   <button type="button" onclick="location.href='/board/list'">이전</button>

    

</body>
</html>