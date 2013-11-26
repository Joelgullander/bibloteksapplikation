function start(){
        // Add a div to hold our result table
        $('<div class="result"/>').appendTo("p.res");
 
        // Add an input field #search
        $('<input type="text" id="search"/>')
                .appendTo("p.searth");
                console.log("Add input");
 
        // Add event handler keyup to #search
        $('#search').keyup(function(){
                $.ajax({
                        url:"sql",
                        cache:false,
                        data: {
                                action: "autoComplete",
                                fragment: $(this).val()
                        },
                        success:function(data){
                                // We have recieved the answer
                                // to our question an array (JSON)
                                // now render it to HTML
                                renderResult(data);
                        },
                        error:function(errorData){
                                alert(
                                  "There seems to be an error:\n"
                                  + errorData.responseJSON.error
                                );
                        }
                });
        });
 
       
};
 
// Render a result (booklist) as HTML
function renderResult(data){
        var html = "<table>";
        html += "<thead><tr>"
      + "<th>ISBN</th>"
      + "<th>Title</th>"
      + "<th>Author</th>"
      + "</tr></thead>"
        // loop through result array
        for(var i = 0; i < data.length; i++){
                // for each database post
                html += "<tr>"
                        + "<td>" + data[i].isbn + "</td>"
                        + "<td>" + data[i].titel + "</td>"
                        + "<td>" + data[i].forfattare + "</td>"
                        + "<td>"+"<form action='laggaNyEx.php'><button>Lägga ny ex</button></form>"+ "</td>"
                        + "</tr>"
        }
        html += "</table>";
        // add the html to the dom
        $(".result").html(html);
}

 function look(type)
                      {
                       param=document.getElementById(type);
                       if(param.style.display == "none") param.style.display = "block";
                       else param.style.display = "none"
                      }
 
// Wait for the DOM to load then run start
$(start);