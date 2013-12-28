this.hoverbox = function(){	
	/* CONFIG */
		
		xOffset = 10;
		yOffset = 15;
		
		// these 2 variable determine popup's distance from the cursor
		// you might want to adjust to get the right result
		
	/* END CONFIG */
	$("area").hover(function(e){
		this.t = this.title;
		this.title = "";	
		var c = (this.t != "") ? this.t : "";
		$("body").append("<p id='hoverbox'>"+ c +"</p>");								 
		$("#hoverbox")
			.css("z-index", "1000")
			.css("position", "absolute")
			.css("top",(e.pageY - yOffset) + "px")
			.css("left",(e.pageX + xOffset) + "px")
			.fadeIn("fast");
    },
	function(){
		this.title = this.t;
		$("#hoverbox").remove();
    });	
	$("area").mousemove(function(e){
		$("#hoverbox")
			.css("top",(e.pageY - yOffset) + "px")
			.css("left",(e.pageX + xOffset) + "px");
	});			
};


// starting the script on page load
$(document).on("ready page:load", function(){
	hoverbox();
});

