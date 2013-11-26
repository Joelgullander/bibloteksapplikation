function start(){
	$.getJSON(
		"data/jsonkategory.php",
		displayData
		); 
	};
	
// Render a result for genre as HTML

function displayData(data){
	var menu =$('.menu');

	for (var i=0; i < data.length;i++)
	{
		$("<li>").val(data[i].c_id).text(data[i].name).appendTo(menu);
		console.log(data[i].c_name);
	}
	addEvents();
	}; 
	
	// Klick events
function addEvents(){
	$(".menu").on("click","li", function(){
    $("li").removeClass('highlight_stay');
     $(this).addClass('highlight_stay');
     if ($(this).val() == "1"){
	     console.log("Lista med böcker från c_id = 1");
     }
     if ($(this).val() == "2"){
	     console.log("Lista med böcker från c_id = 2");
     }
     if ($(this).val() == "3"){
	     console.log("Lista med böcker från c_id = 3");
     }
     if ($(this).val() == "4"){
	     console.log("Lista med böcker från c_id = 4");
     }
		})
		};
		

$(start);


/* function renderResult(data){
        var html = "<ul>";
        // loop through result array
        for(var x = 0; var i = 0; i < data.length; i++ x++){
                // for each database post
                html +=  "<li class='"+ x + "'>" + data[i].genre 
                       
        }
        html += "</ul>";
        // add the html to the dom
        $(".menu").html(html);
}


start(); 

*/
