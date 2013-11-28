function start(){
		$('<div class="result"/>').appendTo("#content");

	// add a input field
	$('<form><input type="text" id="search" value=""/></form>').prependTo("#searchbar");

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
	var c_id = this.id;
    $.ajax({
		url:"sql",
		cache:false,
		data: {
			action: "getCategory",
			c_id: this.id
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
