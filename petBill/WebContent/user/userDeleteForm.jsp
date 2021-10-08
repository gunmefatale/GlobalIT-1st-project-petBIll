<%@page import="pet.user.model.UserDTO"%>
<%@page import="pet.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8"); 
%>

	<style> 
		
		div.left{
			width:40%;
			float:left;
		}
		div.right{
			width:60%;
			float:right;
		}
	</style>
	
	<%
		//회원 정보 뿌려주기
		String id = (String)session.getAttribute("userId");
		UserDAO dao = UserDAO.getInstance();
		UserDTO dto = dao.getUser(id);
	%>
	
</head>
<body>
	<body>
	<div align="right">
		<button onclick = "window.location = 'logoutPro.jsp'">로그아웃</button>
		<button onclick = "window.location = 'userMypage.jsp'">마이페이지</button>
	</div>
	
	<div style="text-align : center;">
		<a href = "/petBill/search/main.jsp"><img src="/petBill/save/로고.png" width="200"/></a>
		<br/>
		<br/>
	</div>
	
	<div class="left"  style="font-size:3.5em;">
		<table>
			<tr>
				<td><a href = "/petBill/user/userMypage.jsp">회원정보</a></td>
			</tr>
			<tr>
				<td>후기관리</td>
			</tr>
			<tr>
				<td>QnA</td>
			</tr>
			<tr bgcolor="lightgray">
				<td >회원탈퇴</td>
			</tr>
		</table>
	</div>
	
	<div class="right">
		<form action="userDeletePro.jsp" method="post">
			<table>
				<tr>
					<td>아이디<br/>
						<%= dto.getUserId()%>
					</td>
				</tr>
				<tr>
					<td><br/>이름<br/>
						<%= dto.getUserName() %>
					</td>
				</tr>
				<tr>
					<td><br/>휴대폰<br/>
						<%=dto.getUserMobile()%>
					</td>
				</tr>
				<tr>
					<td><br/>닉네임<br/>
						<%=dto.getUserNick() %>
					</td>
				</tr>
				<tr>
					<td><br/>주소<br/>
							<%=dto.getUserSiAddress()%>
				</tr>
				<tr>
					<td>
						<%=dto.getUserSelectAddress() %>
					</td>
				</tr>
				<tr>
					<td>
						<%=dto.getUserDetailAddress() %>
					</td>
				</tr>
				<tr>
					<td>비밀번호<br/>
					<input type="password" name="userPw"/></td>
				</tr>
				
				<tr>	
					<td><br/>
						<input type="submit" value = "탈퇴하기"/>
					</td>
				</tr>
				
			</table>
		</form>
	
	</div>
</body>
</html>