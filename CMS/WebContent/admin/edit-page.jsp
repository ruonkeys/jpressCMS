<jsp:include page="header.jsp"></jsp:include>\
<%@ page import="com.jpress.CategoryFetch" %>
<%@ page import="com.jpress.GetEditPostOrPage" %>

                    <% int id = Integer.parseInt(request.getParameter("id"));
                    %>
                        <% GetEditPostOrPage ge = new GetEditPostOrPage(id,"page");%>
        <div id="page-wrapper">
        <div class="graphs">
	     <div class="xs">
  	       <h3>Compose</h3>
  	         <div class="col-md-2 email-list1">
               <ul class="collection">
               
               <!---->
               <!---->
               <!--left sidebar section-->
               <!--for category and publish status-->
               <!---->
               <li><h3><small>Select Your Post Category</small></h3></li>
                    <li>
                    
                    <% CategoryFetch ct= new CategoryFetch(ge.the_categoryId());
            		   out.println(ct.allCategory());
            		   %>
                    
                    </li>
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
              </ul>
         <div class="content-box  mrg15B">
          <div class="content-box-wrapper text-center">
            <h4 class="content-box-header">
            Chat
            <small>(Online friends)</small>
            </h4>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/1.png" alt="">
                <div class="small-badge bg-red"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/2.png" alt="">
                <div class="small-badge bg-orange"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/3.png" alt="">
                <div class="small-badge bg-red"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/4.png" alt="">
                <div class="small-badge bg-green1"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/5.png" alt="">
                <div class="small-badge bg-orange"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/1.png" alt="">
                <div class="small-badge bg-red"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/2.png" alt="">
                <div class="small-badge bg-green1"></div>
            </div>
            <div class="status-badge mrg10A">
                <img class="img-circle" width="40" src="images/3.png" alt="">
                <div class="small-badge bg-orange"></div>
            </div>
          </div>
        </div>
        </div>
        <div class="col-md-10 inbox_right">
        	<div class="Compose-Message">               
                <div class="panel panel-default">
                    <div class="panel-heading">
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                       <a href="new-post.jsp">Add New Page</a> 
                        <!---->
                        <!---->
                        <!---->
                        <!---->
                        <!---->
                        <!---->
                    </div>
                    <div class="panel-body">
                     <!---->
                    <!---->
                    <script src="js/insert-page.js"></script>
                     <!---->
                    <!---->
                    
                     <input type="hidden" name="hid" id="hid" value="<%=id %>" />
                        <div class="alert alert-info">
                            You can update Your Page Here
                        </div>
                        <hr>
                        
                        <label>Enter Page Title : </label>
                        <input type="text" class="form-control1 control3" id="title" value="<%=ge.the_title()%>">
                       
                        <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!--TO BE REPLACED HERE-->
                    <!---->
                    <!---->
                        <a href="#" id="addmedia" class="btn btn-warning btn-warng1"><span class="glyphicon glyphicon-envelope tag_02"></span> Add Media</a></br>
                         <!---->
                          <!---->
                    <!-- insert media and blog editor option section-->
                    <!---->
                        <label>Page Data : </label>
                        <textarea rows="6" class="form-control1 control2" id="content"><%=ge.the_content() %></textarea>
                        <hr>
                        
                    <!-- post author will be filled here -->
                        <label>Page Author : </label><br>
                        <input type="text" id="author" value="<%=ge.the_author()%>">
                        <hr>    
                        
                        <a href="#" class="btn btn-warning btn-warng1" id="update"><span class="glyphicon glyphicon-envelope tag_02"></span> Update </a>&nbsp;
                      <a href="#" class="btn btn-success btn-warng1"><span class="glyphicon glyphicon-tags tag_01"></span> Save To Drafts </a>
                    </div>
                 </div>
              </div>
         </div>
         <div class="clearfix"> </div>
   </div>
    <div class="copy_layout">
         <p>Copyright &copy; 2015 Jpress. All Rights Reserved | Design by <a href="http://repositoryphp.com" target="_blank">Jpress</a> </p>
       </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
