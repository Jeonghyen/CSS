<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
		  //인코딩
		request.setCharacterEncoding("UTF-8");
    
    	//너비
   	 	String width = request.getParameter("width");
    	
    	//높이
   	 	String height = request.getParameter("height");
    	
    	//텍스트
    	String txt = request.getParameter("txt");
    	
    	//배경색
    	String bcolor = request.getParameter("bcolor");
    	
    	//글자색
    	String fcolor = request.getParameter("fcolor");
    	
    	//글자 크기
   		String fsize = request.getParameter("fsize");	 	
   
    	//버튼 간격
    	String mside = request.getParameter("mside");
    	String mtop = request.getParameter("mtop");
    	
    	//이모티콘
    	String emo = request.getParameter("emo");
    	
    	
    	
    	//개수
    	 int num = Integer.parseInt(request.getParameter("num"));
    	
    	String sborder = request.getParameter("sborder");
    	
    	//테두리
    	//두께
    	String width2 =request.getParameter("width2");
    	//색
    	String color2 = request.getParameter("color2");
    	//형태
    	String style1 = request.getParameter("style1");
    	//모서리
    	String radius = request.getParameter("radius");
		
    	
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.12.4.js"></script>
<script src="https://kit.fontawesome.com/3808a8762d.js" crossorigin="anonymous"></script>
<style>

	

	.btn {
		
		width: <%= width%>px;
		height: <%= height%>px;
		background-color : <%= bcolor%>;
		color : <%= fcolor%>;
		margin: <%= mtop%>px <%= mside%>px;
		font-size: <%= fsize%>px;
		
		<% if(sborder.equals("1"))  {%>

		border: <%= width2%>px <%= style1%> <%= color2%>;
		border-radius: <%= radius%>px;
		
		<%  } else{ %>
			
			border: 0;
		
		<% }%>
	
	}
	
</style>
</head>
<body>
	<h1>결과</h1>
	
	<div id="result">
		<% for(int i=0; i<num; i++){ %>
		
			<button class="btn">
				<i class="<%= emo %>"></i>
				<%= txt %>
			</button>
		
		<%  } %>
		
	</div>
	
	<script>
		
	
	
	
	</script>
	
	
</body>
</html>