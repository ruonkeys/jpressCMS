<jsp:useBean id="updateObj" class="com.jpress.UpdatePost"></jsp:useBean>
<jsp:setProperty property="*" name="updateObj"/>
<% boolean b = updateObj.updateData();%>

<%if(b)
	{
	%>
	<%="success"%>
	<%
	}
      else
     {
    	  %>
    	  <%="error" %>
    	  <% 
	
     }
	
	
	
	
	%>
