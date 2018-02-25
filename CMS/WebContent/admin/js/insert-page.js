$(document).ready(function(e) {
	$("#publish").click(function(evnt){
		evnt.preventDefault();
		alert("Publishing is Going To Work soon");
		var content = $("#content").val();
		var title = $("#title").val();
		var cotegory=$("#ctgry").val();
		var author=$("#author").val();
		var pdata = "content="+content+"&title="+title+"&cotegory="+cotegory+"&author="+author;
		$.ajax({
			url:'http://localhost:9999/CMS/admin/insert-page.jsp',
			data:pdata,
			type:'POST',
			success:function(result,status,xhr)
			{
				if(result!="error")
					{
					window.location.href="http://localhost:9999/CMS/admin/edit-page.jsp?id="+result;
					}
			
				else
					{
					
					alert("Error Occured while saving plz check it");
					}
			}
			
			
			});
		
		
		});
		
		$("#addmedia").click(function(evnt){
		evnt.preventDefault();
		alert("Publishing is Going To Work soon");
		var content = $("#content").val();
		var title = $("#title").val();
		
		
		
		});
		
		$("#update").click(function(evnt){
			evnt.preventDefault();
		
			var content = $("#content").val();
			var title = $("#title").val();
			var cotegory=$("#ctgry").val();
			var id=$("#hid").val();
			var pdata = "content="+content+"&title="+title+"&cotegory="+cotegory+"&id="+id;
			alert("Updating is Going To Work soon"+pdata);
			$.ajax({
				url:'http://localhost:9999/CMS/admin/update-post.jsp',
				data:pdata,
				type:'POST',
				success:function(result,status,xhr)
				{
					if(result!="error")
						{
						alert("successfully updated");
						//window.location.href="http://localhost:9999/CMS/admin/edit-post.jsp?id="+result;
						}
				
					else
						{
						
						alert("Error Occured while saving plz check it");
						}
				}
				
				
				});
			
			
			});
		
    
});
