



function start(){
// add a input field for the search box
 //   $("form.uppdate").append('<div class="info" id="andrabok"><input type="submit" value="Ändra bok">');
              
for (var i = 1; i <5; i++) { 
    //ask of books writen by Paul Taylor
        $.ajax(
        {     
            url:"sql",
            cache:false,
            data: {
                action: "getCat",
                c_id: i
            },
            success:function(data){
               displayData(data);
            },
            error:function(errorData){
                //console.log(x.responseJSON);
                alert("It is error:"+errorData.responseJSON.error);
            }

        });
}
};
$(start);
$(uppdate);


function displayData(data){
    var dropdown =$("#category");
     
    for (var i=0; i < data.length;i++)
    {
        $("<option>").val(data[i].c_id).text(data[i].name).appendTo(dropdown);
    }
}; 


function uppdate(){



 // Add event handler klick to btn #andrebok

    console.log( $(".andraForm").length);
    console.log($('body').children().length)
    $(".andraForm").submit(function(e){

        // do not reload the page
         e.preventDefault();

        //$("#andrabok").mousedown(function(){
        //$("#andrabok").click(function(){
    
        var getIsbn=$("#myisbn").val();
        var getStock=$("#mystock").val();
        var getShelf=$("#myshelf").val();
        var getPrice=$("#myprice").val();
        var getDate=$("#mydate").val();  

                    $.ajax(
                    {     
                        url:"sql",
                        cache:false,
                        data: {
                            action: "uppdateStock",
                            stock: getStock,
                            isbn: getIsbn
                        },
                        success:function(data){
                            
                           alert("success uppdateStock");
                        },
                        error:function(errorData){
                            //console.log(x.responseJSON);
                            alert("It is error:"+errorData.responseJSON.error);
                    }
            });

                      $.ajax(
                    {     
                        url:"sql",
                        cache:false,
                        data: {
                            action: "uppdateShelf",
                            shelf: getShelf,
                            isbn: getIsbn
                        },
                        success:function(data){
                           alert("success uppdateShelf");
                           
                        },
                        error:function(errorData){
                            //console.log(x.responseJSON);
                            alert("It is error:"+errorData.responseJSON.error);
                    }
            });

                        $.ajax(
                    {     
                        url:"sql",
                        cache:false,
                        data: {
                            action: "uppdateButicPrice",
                            price: getPrice,
                            isbn: getIsbn
                        },
                        success:function(data){
                           alert("success uppdateButicPrice");
                           
                        },
                        error:function(errorData){
                            //console.log(x.responseJSON);
                            alert("It is error:"+errorData.responseJSON.error);
                    }
            });

               
                        $.ajax(
                    {     
                        url:"sql",
                        cache:false,
                        data: {
                            action: "uppdateDate",
                            book_delivery: getDate,
                            isbn: getIsbn
                        },
                        success:function(data){
                           alert("success uppdateDate");
                           
                        },
                        error:function(errorData){
                            //console.log(x.responseJSON);
                            alert("It is error:"+errorData.responseJSON.error);
                    }
            });
                        console.log("getStock ",getStock);
                        console.log("getShelf ",getShelf);
                        console.log("getPrice ",getPrice);    
                        console.log("getDate ",getDate);
                        console.log("getIsbn ",getIsbn);
               
    });

       
};
/*
function addnybok(){
 // Add event handler klick to btn #andrebok
        $("#addnybok").mousedown(function(){
        //$("#addnybok").click(function(){

            var getIsbn=$("#nybokisbn").val();
            var getTitle=$("#nyboktitel").val();
            var getAuthor=$("#forfattarel").val();
            var getStock=$("#nybokantal").val();
            var getShelf=$("#nybokhylla").val();
            var getFprice=$("#nybokfpris").val();
            var getPrice=$("#nybokpris").val();
            var getDate=$("#date").val();  
            var getCat=$("#category").val(); 

                        $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "insertNyIsbn",
                                //stock: getStock,
                                isbn: getIsbn
                            },
                            success:function(data){
                                
                               alert("success");
                            },
                            error:function(errorData){
                                //console.log(x.responseJSON);
                                alert("It is error:"+errorData.responseJSON);

                        }

                });

                          $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "insertNyTitel",
                                //shelf: getShelf,
                                title: getTitle
                            },
                            success:function(data){
                               alert("success");
                               console.log("getTitle ",getTitle);
                            },
                            error:function(errorData){
                                //console.log(x.responseJSON);
                                alert("It is error:"+errorData.responseJSON);
                        }
                });
                   
        });

       
};*/