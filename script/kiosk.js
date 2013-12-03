function start(){
		$('<div class="result"/>').appendTo("#content");

	// add a input field
	$('<form><input type="text" placeholder="ISBN, Titel, Författare" id="search" value=""/></form>').prependTo("#searchbar");

	// add event handler 

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
	
	kategori();
	

};

// Kategori is called by start when the page has loaded
function kategori(){
    $.ajax({
		url:"sql",
		cache:false,
		data: {
			action: "getCategory",
		},
		success:function(data){
						renderKategori(data);
						addEvents();
		},
		error:function(errordata){
			console.log(errordata.responseJSON);
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
	var html = "";
	for(var i = 0; i < data.length; i++){
		//console.log(data[i]);
		html += '<table>'+ '<tr id="' + data[i].isbn + '">' 
				+ "<td>" + 'ISBN: ' + data[i].isbn + "</td>"
				+ "<td>" + 'Titel: ' + data[i].title + "</td>"
				+ "<td>" + 'Författare: ' + data[i].author + "</td>"
				+ "<td>" + 'Hylla: ' + data[i].shelf + "</td>"
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

		$.ajax({
					url:"sql",
					cache:false,
					data: {
						action: "getentriesCat",
						c_id: $(this).val()
		
					},
					success:function(data){
						renderSearch(data);
					},
					error:function(errordata){
						console.log(errordata.responseJSON);
					}
		
					
				});
		
		
		   	});
		};
		

$(start);
