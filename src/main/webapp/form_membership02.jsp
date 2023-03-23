<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 정보</title>
</head>
<body>
	<%
		String m_id = request.getParameter("p_id");//아이디
		String m_pw = request.getParameter("p_pw");//비밀번호
		String m_name = request.getParameter("p_name");//이름
		String m_choice = request.getParameter("choice");//통신사 선택
		String m_phone1 = request.getParameter("phone1");//전화번호 앞자리
		String m_phone2 = request.getParameter("phone2");//전화번호 가운데 자리
		String m_phone3 = request.getParameter("phone3");//전화번호 뒷자리
		String m_gender = request.getParameter("gender");//성별
		String m_hobby[] = request.getParameterValues("hobby");//취미
		String m_intro = request.getParameter("introduction");//자기 소개
	%>
	
	아이디 : <%= m_id %> <br><br>
	비밀번호 : <%= m_pw %><br><br>
	이름 : <%= m_name %><br><br>
	통신사 : <%= m_choice %> <%= m_phone1 %> - <%= m_phone2 %> - <%= m_phone3 %><br><br>
	성별 : <%= m_gender %><br><br>
	취미 : <%
		if(m_hobby != null){
			for(int i = 0; i < m_hobby.length; i++){
				out.println(m_hobby[i] + " / ");
			}
		}
		else
			out.println("취미 없음");
		   %><br><br>
	본인 소개 : <%= m_intro %><br><br>
</body>
</html>