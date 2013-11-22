function start (){ 
	// *** Valentin/ Just nu appendas resultatet och sökboxen till body detta kan vi ändra när vi har en 
	// html css till rapport sidan ***  
	// add div to hold our result table
	$('<div class="result"/>').appendTo("body");

	// add a input field
	$('<input type="text" id="search"/>').prependTo("body");

	// add event handler keyup to #search
	$('#search').keyup(function (){
		//console.log($('#search').val());
		$.ajax({
			url:"sql",
			cache:false,
			data: {
				// *** Valentin ändrade detta. action till autoCompleteTitle. Gjorde en ändring i dbquestion.json
				// för att bara fokusera på titlar i rapport eftersom de var det Karl Kristian ville ha på sin rapport sida ***
				action: "autoCompleteTitle",
				fragment: $(this).val()
			},
			success:function(data){
				// we have recived the answer to our question as an array (JSON)
				// now render it to HTML
				renderResult(data);
			},
			error:function(errordata){
				console.log(errordata.responseJSON);
			}
		});

	});

		
};
// *** valentin/ vi kan ändra detta utseende när admin rapport sidans html css är klar
// just nu är det som den vi gjorde på lektionen med Thomas ***
// Render a result (booklist) as HTML
function renderResult (data) {
	var html = "<table>";
	html += "<thead><tr>"
			+ "<th>Title</th>"
			+ "<th>Author</th>"
			+ "<th>ISBN</th>"
			+ "</tr></thead>";						
	// loop through reuslt array
	for(var i = 0; i < data.length; i++){
		//console.log(data[i]);
		html += "<tr>" 
				+ "<td>" + data[i].title + "</td>"
				+ "<td>" + data[i].author + "</td>"
				+ "<td>" + data[i].ISBN + "</td>"
				+ "</tr>";								
	}
	html += "</table>";
	// add the html to the dom
	// console.log(html);
	$('.result').html(html);

};

// wait for the dom to load then run start
$(start);