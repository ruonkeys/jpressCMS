<jsp:include page="header.jsp"></jsp:include>
<%@ page import="com.jpress.CategoryFetch" %>
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
               <li><h4><small>Select Your Post Category</small></h4></li>
               
                    <li>
                    
                   <% CategoryFetch ct= new CategoryFetch();
            		   out.println(ct.allCategory());
            		   %>
                    
                    </li>
                 
              </ul>
              <a href="javascript:void(0)" id="np">Add New Category</a><br>
              <div id="r" style="display:none;">
              <input type="text" id="catgory">
              <input type="button" id="ins" value="insert">
              </div>
              
             <script type="text/javascript" src="jquery-1.11.1.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	$("#np").click(function()
    			{
    		       $("#r").show();
    			});
    	$("#ins").click(function(){
    		
    	    var mydata="ar="+$("#catgory").val();
    	    //alert(mydata);
    		$.ajax({
    			type:"post",
    			data:mydata,
    			url:"category-db-insert.jsp",
    			success:function(result,status,xhr)
    			{
    				if(result!=1)
    					{
    			    dd = result.split(",");
    				$("#ctgry").append("<option value=\""+dd[0]+"\">"+dd[1]+"</option>");
    				alert("successfully inserted");
    					}
    				else
    					{
    					alert("already exists");
    					}
    			}
    		})
    	});
    	
    });
    </script>
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
                        Add New Page 
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
                        <div class="alert alert-info">
                            Please fill details to create New Page
                        </div>
                        <hr>
                        <label>Enter Post Title : </label>
                        <input type="text" class="form-control1 control3" id="title">
                        <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!---->
                    <!--TO BE REPLACED HERE-->
                    <!---->
                    <!---->
                        <a href="#" class="btn btn-warning btn-warng1"><span class="glyphicon glyphicon-envelope tag_02"></span> Add Media</a></br>
                         <!---->
                          <!---->
                    <!-- insert media and blog editor option section-->
                    <!---->
                        <label>Page Data : </label>
                        <textarea rows="6" class="form-control1 control2" id="content"></textarea>
                        <hr>
                        
                    <!-- post author will be filled here -->
                        <label>Page Author : </label><br>
                        <input type="text" id="author">
                        <hr>
                        
                        <a href="#" class="btn btn-warning btn-warng1" id="publish"><span class="glyphicon glyphicon-envelope tag_02"></span> Publish Post </a>&nbsp;
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
