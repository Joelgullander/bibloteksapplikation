function start(){
	$.getJSON(
		"data/jsonkategory.php",
		renderKategori
		); 
		
		$('<div class="result"/>').appendTo("#content");
		$('<div class="result"/>').appendTo(".searchbox, .searchboxadmin");

		$('<div class="resultbok"/>').appendTo('.maincontentadmin, .maincontent');

	// add a input field
	$('<form><input type="text" id="search" value=""/></form>').prependTo("#searchbar");

	// add event handler keyup to #search
	$('#search').keyup(function (){
		//console.log($('#search').val());
		$.ajax({
			url:"sql",
			cache:false,
			data: {
				action: "autoComplete",
				fragment: $(this).val()

			},
			success:function(data){
				renderSearch(data);
				// test click
				addEvents();
			},
			error:function(errordata){
				console.log(errordata.responseJSON);
			}

			
		});

		 if($(this).val() == '')
			      {
			        $('.result').hide();
			      }
			      else {
			      $('.result').show();	
			      } 

	}); 
	

	};
	
// Render a result for genre as HTML

function renderKategori(data){
	var menu =$('.menu');

	for (var i=0; i < data.length;i++)
	{
		$("<li>").val(data[i].c_id).text(data[i].name).appendTo(menu);
		console.log(data[i].c_name);
	}
	addEvents();
	}; 
	
function renderSearch(data){
	var html = "<table>";
	html += "<thead><tr>"
			+ "<th>Title</th>"
			+ "<th>Author</th>"
			+ "<th>ISBN</th>"
			+ "</tr></thead>";						
	// loop through result array
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
