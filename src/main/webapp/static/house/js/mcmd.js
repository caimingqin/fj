$(document).ready(function(){
	$("button[maction=cmd]").on("click",function(){
		var cmdUrl=$(this).attr("cmd");
		$.ajax({
			url : cmdUrl,
			success : function(rep) {
				console.log(rep);
			},
			error : function(data) {//请求成功后，怎么跑到这里了
				console.log(data);
				alert(data);
			}
		});
		
		
	})
	
})