function start (){ 

	$('<div class="resultbok"/>').appendTo('.maincontent');

	


	// add a input field for the search box
	$('<form><input type="text" id="search" value=""/></form>').prependTo(".searchbox");
	// add div to hold our result table from the searchbox
	$('<div class="result"/>').appendTo(".searchbox");



	// add event handler keyup to #search
	$('#search').keyup(function (){
		//console.log($('#search').val());
		$.ajax({
			url:"sql",
			cache:false,
			data: {
				// *** Valentin ändrade detta. 
				// nu har vi en sökfunktion för hela projektet
				// man kan lägga till flera för specifika sidor och vad för resultat det ska få ut ***
				action: "autoComplete",
				fragment: $(this).val()

			},
			success:function(data){
				// we have recived the answer to our question as an array (JSON)
				// now render it to HTML
				renderResult(data);
				// test click
				clickEvents();
			},
			error:function(errordata){
				console.log(errordata.responseJSON);
			}

			
		});

		// *** Valentin/ La till denna koden som säger om sökrutan är empty så ska inga resultat visas 
		 if($(this).val() == '')
			      {
			        $('.result').hide();
			      }
			      else {
			      $('.result').show();	
			      } 

	}); 

		
};


// *** valentin/ vi kan ändra detta utseende när admin sidans html css är klar
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
		html += '<tr id="' + data[i].isbn + '">' 
				+ "<td>" + data[i].title + "</td>"
				+ "<td>" + data[i].author + "</td>"
				+ "<td>" + data[i].isbn + "</td>"
				+ "</tr>";								
	}
	html += "</table>";
	// add the html to the dom
	// console.log(html);
	$('.result').html(html);

};

//function addEvent for the click to work 
function clickEvents() {
	// The click function point it into the text on the result
	console.log($('.result tr').length);

	$(".result tr").click(function (){
		var isbn = this.id;
        $.ajax({
			url:"sql",
			cache:false,
			data: {
				action: "getBookByISBN",
				isbn: this.id
			},
			success:function(data){
				console.log("Book details",data[0]);
				// gör function som får ut info om boken på main content.
				renderBookdetails(data[0]);
			},
			error:function(errordata){
				console.log(errordata.responseJSON);
			}	

		});
    	
    	// efter man har sökt och klickat på resultate så ska sökrutan försvinna
    	$(".result").hide();
    	// efter man har sökt och klickat på resultate så ska sökrutan vara blank
    	document.getElementById('search').value=''; 


	});
};


function renderBookdetails (bookObj) {
	//console.log("Titel: " + bookObj.title);
	
	// test
	/*for(var i  in bookObj){
		console.log(i,bookObj[i])
	}*/

	var bokResultat = "<div>";
	bokResultat += "<p>" + "Boktitel: " + bookObj.title + "</p>";
	bokResultat += "<p>" + "Författare : " + bookObj.author + "</p>";
	bokResultat += "<p>" + "ISBN: " + bookObj.isbn + "</p>";
	bokResultat += "<p>" + "Antal exemplar: " + bookObj.stock + "</p>";
	bokResultat += "<p>" + "Pris: " + bookObj.price + ":-" + "</p>";
	bokResultat += "<p>" + "Hylla: " + bookObj.shelf + "</p>";
	bokResultat += "</div>";

	$('.resultbok').html(bokResultat);

};


// wait for the dom to load then run start
$(start);

$(function() {
    $( "#date" ).datepicker();
  });
