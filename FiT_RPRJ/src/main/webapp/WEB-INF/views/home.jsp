<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<span><a href="/member/joinForm">join</a></span>
<span><a href="/main">main</a></span>
<span><a href="/member/loginForm">login</a></span>
<span><a href="/myPage">myPage</a></span>
<span><a href="/board/boardMain">board</a></span>
</body>
</html>
