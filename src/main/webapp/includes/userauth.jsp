<%@page import="br.com.fiap.model.*"%>
<% Usuario user = (Usuario)request.getSession().getAttribute("user");
	if(user!=null){
		request.setAttribute("user", user);
	}
%>