<jsp:include page="header.jsp"></jsp:include>
<div class="container">
		<div class="content">
		<div class="features">
				<h5>Featured news</h5>
				<h2>Nokia offering customers printable STL phone cases for the Lumia 820</h2>
			</div>
			<div class="col-md-7 content-left">
				<div class="article">
					<h5 class="head">in recent news</h5>
                    </div>
                    <%!int lim=0,k=0; %>
                    <%String a=request.getParameter("r");
                    if(a!=null)
                    {   
                    	k=Integer.parseInt(a);
                    	lim=5*k;
                    }
                    %>
                    
                    <!--looping content start here 1-->
                    <%@page import="com.jpress.Loop" %>
                    
                    <%
                    Loop loop = new Loop(lim,"post"); 
                    while(loop.havePost())
                    {
                    %>
                    <div class="article">
					<h6>Software </h6>
					<a class="title" href="single.jsp?id=<%=loop.the_id()%>"><%=loop.the_title()%></a>
					<a href="single.html"><img src="images/a1.jpg" alt="" /></a>
					<%=loop.the_content() %>
					<div style="text-align:right">posted by: <%=loop.the_author() %></div>
					</div>
				<%} %>
			       <!--looping content end here 1-->
			       <a href="index.jsp?r=<%=k+1 %>">next </a>
			       <%
			       if(lim>0)
			       {%>
			    	   <a href="index.jsp?r=<%=k-1 %>">previous</a>
			       <% }%>
			      
			</div>
            
            
            <!--right content start here -->
            
			<div class="col-md-5 content-right">
			<div class="content-right-top">
				<h5 class="head">Popular</h5>	
				   
                   
                   <!--looping content start here 2-->
				<a class="active" href="single.html">
					<div class="editor text-center">
						<h3>Software Review: Autodesk Inventor Fusion for Mac</h3>
						<p>3D Printing, 3D Software</p>
						<label>3 Days Ago</label>
						<span></span>
					</div>
				</a>
				 <!--looping content end here 2-->
				</div>
					</div>
					
				</div>
			</div>
			<div class="clearfix"></div>
			
	<jsp:include page="footer.jsp"></jsp:include>