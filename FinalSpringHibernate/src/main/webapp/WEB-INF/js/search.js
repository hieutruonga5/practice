$(document).ready(function() {
	$(".btnSearch").click(function(){
	let sefl = this;
	var content = $(".content").val();
	$.ajax({
	    type: "GET",
	    url : "AjaxSearchContent",
	    data: {content :  content },
	    success: function(response) {
	      $("#searchTemp").html(response)
	    },
	    error: function (request, status, error) {
	        alert(request.responseText);
	    }
	});
})
});