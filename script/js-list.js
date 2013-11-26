function start(){
	$.getJSON(
		"data/jsonkategory.php",
		displayData
		); 
	};

function displayData(data){
	var dropdown = $("#category");

	for (var i=0; i < data.length;i++)
	{
		$("<option>").val(data[i].catid).text(data[i].catnamn).appendTo(dropdown);
		alert(data[i].catnamn);
		//listItem = $("<li>"+ data[i].rubric+ "</li>"+"<p>"+ data[i].articeltext+ "</p>"+
		//	"<p>"+ data[i].bild+ "</p>");

		//addToDOM.append(listItem);
	//alert(data[i].rubric);



	}
		//$("#pagecontent").append(addToDOM);

	}; //end function

$(start);