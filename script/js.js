start function(){
        // Add a div to hold our result table
        $('<div class="menu"/>').appendTo("#content");
        
         $.ajax({
                        url:"sql",
                        cache:false,
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
}

// Render a result for genre as HTML
function renderResult(data){
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