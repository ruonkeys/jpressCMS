<%@ page import="com.jpress.DynamicArea" %>
<% DynamicArea sidebar=new DynamicArea(); %>
<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="col-md-3 footer-links">
					<%
					if(sidebar.isDynamic("footer1"))
					{
						String a=sidebar.getSidebar("footer1");
	                    out.print(a);  		 		
					}
				
					%>
				</div>
				<div class="col-md-3 footer-links span_66">
					<%
					if(sidebar.isDynamic("footer2"))
					{
						sidebar.getSidebar("footer2");
					}
					%>
				</div>
				<div class="col-md-3 footer-links">
					<%
					if(sidebar.isDynamic("footer3"))
					{
						sidebar.getSidebar("footer3");
					}
					%>
				</div>
				<div class="col-md-3 footer-links">
					<%
					if(sidebar.isDynamic("footer4"))
					{
						sidebar.getSidebar("footer4");
					}
					%>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="copyrights">
					<p>Konstructs © 2015 All rights reserved | Template by  <a href="http://w3layouts.com">  W3layouts</a></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>