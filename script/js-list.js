function start(){
	$.getJSON(
		"data/jsonkategory.php",
		displayData
		); 
	};

function displayData(data){
	var dropdown =$("#category");

	for (var i=0; i < data.length;i++)
	{
		$("<option>").val(data[i].c_id).text(data[i].name).appendTo(dropdown);
	//	console.log(data[i].c_name);
	}
	}; 

$(start);