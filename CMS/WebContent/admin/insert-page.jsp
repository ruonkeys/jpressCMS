<jsp:useBean id="insertObj" class="com.jpress.AddPage"></jsp:useBean>
<jsp:setProperty property="*" name="insertObj"/>
<% boolean b = insertObj.insertData();%>
<% int id= insertObj.getId();%>

<%if(b)
	{
	%>
	<%=id%>
	<%
	}
      else
     {
    	  %>
    	  <%="error" %>
    	  <% 
	
     }
	
	
	
	
	%>
