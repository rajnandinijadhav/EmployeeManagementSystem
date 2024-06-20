<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<style>


.form-container {
	width: 320px;
	border-radius: 0.75rem;
	background-color: rgba(17, 24, 39, 1);
	padding: 2rem;
	
	padding-left:40px;
	padding-right:40px;
	color: rgba(243, 244, 246, 1);
	margin-top:40px;
	margin-left:530px;
}

.title {
	text-align: center;
	font-size: 1.5rem;
	line-height: 2rem;
	font-weight: 700;
}

.form {
	margin-top: 1.5rem;
}

.input-group {
	margin-top: 0.25rem;
	font-size: 0.875rem;
	line-height: 1.25rem;
}

.input-group label {
	display: block;
	color: rgba(156, 163, 175, 1);
	margin-bottom: 4px;
}

.input-group input {
	width: 25rem;
	border-radius: 0.375rem;
	border: 1px solid rgba(55, 65, 81, 1);
	outline: 0;
	background-color: rgba(17, 24, 39, 1);
	padding: 0.75rem 1rem;
	color: rgba(243, 244, 246, 1);
}

.input-group input:focus {
	border-color: rgba(167, 139, 250);
}

.forgot {
	display: flex;
	justify-content: flex-end;
	font-size: 0.75rem;
	line-height: 1rem;
	color: rgba(156, 163, 175, 1);
	margin: 8px 0 14px 0;
}

.forgot a, .signup a {
	color: rgba(243, 244, 246, 1);
	text-decoration: none;
	font-size: 14px;
}

.forgot a:hover, .signup a:hover {
	text-decoration: underline rgba(167, 139, 250, 1);
}

.sign {
	display: block;
	width: 100%;
	background-color: rgba(167, 139, 250, 1);
	padding: 0.75rem;
	text-align: center;
	color: rgba(17, 24, 39, 1);
	border: none;
	border-radius: 0.375rem;
	font-weight: 600;
}

.social-message {
	display: flex;
	align-items: center;
	padding-top: 1rem;
}

.line {
	height: 1px;
	flex: 1 1 0%;
	background-color: rgba(55, 65, 81, 1);
}

.social-message .message {
	padding-left: 0.75rem;
	padding-right: 0.75rem;
	font-size: 0.875rem;
	line-height: 1.25rem;
	color: rgba(156, 163, 175, 1);
}

.social-icons {
	display: flex;
	justify-content: center;
}

.social-icons .icon {
	border-radius: 0.125rem;
	padding: 0.75rem;
	border: none;
	background-color: transparent;
	margin-left: 8px;
}

.social-icons .icon svg {
	height: 1.25rem;
	width: 1.25rem;
	fill: #fff;
}

.signup {
	text-align: center;
	font-size: 0.75rem;
	line-height: 1rem;
	color: rgba(156, 163, 175, 1);
}
</style>
</head>
<body style="background-color">
<%@include file="navbar.jsp"%>
	<div class="form-container">
		<p class="title">Login</p>
		<c:if test="${not empty msg }">
			<h6 class="text-success">${msg }</h6>
			<c:remove var="msg" />
		</c:if>
		<form class="form"  action="userlogin" method="post">
			<div class="input-group">
				<label for="username">Username</label> <input type="text"
					name="email" id="username" placeholder="">
			</div>
			<div class="input-group">
				<label for="password">Password</label> <input type="password"
					name="password" id="password" placeholder="">
				<div class="forgot">
					<a rel="noopener noreferrer" href="#">Forgot Password ?</a>
				</div>
			</div>
			<button class="sign">Log In</button>
		</form>
		<div class="social-message">
			<div class="line"></div>
			<p class="message">Login with social accounts</p>
			<div class="line"></div>
		</div>
		<div class="social-icons">
			<button aria-label="Log in with Google" class="icon">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
					class="w-5 h-5 fill-current">
				<path
						d="M16.318 13.714v5.484h9.078c-0.37 2.354-2.745 6.901-9.078 6.901-5.458 0-9.917-4.521-9.917-10.099s4.458-10.099 9.917-10.099c3.109 0 5.193 1.318 6.38 2.464l4.339-4.182c-2.786-2.599-6.396-4.182-10.719-4.182-8.844 0-16 7.151-16 16s7.156 16 16 16c9.234 0 15.365-6.49 15.365-15.635 0-1.052-0.115-1.854-0.255-2.651z"></path>
			</svg>
			</button>
			<button aria-label="Log in with Twitter" class="icon">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
					class="w-5 h-5 fill-current">
				<path
						d="M31.937 6.093c-1.177 0.516-2.437 0.871-3.765 1.032 1.355-0.813 2.391-2.099 2.885-3.631-1.271 0.74-2.677 1.276-4.172 1.579-1.192-1.276-2.896-2.079-4.787-2.079-3.625 0-6.563 2.937-6.563 6.557 0 0.521 0.063 1.021 0.172 1.495-5.453-0.255-10.287-2.875-13.52-6.833-0.568 0.964-0.891 2.084-0.891 3.303 0 2.281 1.161 4.281 2.916 5.457-1.073-0.031-2.083-0.328-2.968-0.817v0.079c0 3.181 2.26 5.833 5.26 6.437-0.547 0.145-1.131 0.229-1.724 0.229-0.421 0-0.823-0.041-1.224-0.115 0.844 2.604 3.26 4.5 6.14 4.557-2.239 1.755-5.077 2.801-8.135 2.801-0.521 0-1.041-0.025-1.563-0.088 2.917 1.86 6.36 2.948 10.079 2.948 12.067 0 18.661-9.995 18.661-18.651 0-0.276 0-0.557-0.021-0.839 1.287-0.917 2.401-2.079 3.281-3.396z"></path>
			</svg>
			</button>

		</div>
		<p class="signup">
			Don't have an account? <a rel="noopener noreferrer" href="register"
				class="">Register</a>
		</p>
	</div>
	<div style="margin-top:60px;">
	<%@include file="footer.jsp" %>
	</div>
</body>
</html>