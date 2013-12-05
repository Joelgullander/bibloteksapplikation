//*****************************
//Get category from DB and place to page
//*****************************
function start(){
              
for (var i = 1; i <5; i++) { 
 
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
$(addnyline);

function displayData(data){
    var dropdown =$("#category");
     
    for (var i=0; i < data.length;i++)
    {
        $("<option>").val(data[i].c_id).text(data[i].name).appendTo(dropdown);
    }
}; 

//*****************************
//Uppdate book
//*****************************
function uppdate(){
 // Add event handler klick to btn #andrebok

    console.log( $(".andraForm").length);
    console.log($('body').children().length)
    $(".andraForm").submit(function(e){

        // do not reload the page
         e.preventDefault();
    
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
    });

       
};
//*****************************
//Insert new book
//*****************************
function addnyline(){
 // Add event handler klick to btn #andrebok

            $(".addbook").submit(function(e){
                 e.preventDefault();

            var getCat=$("#category").val(); 

                    $.ajax(
                            {     
                                url:"sql",
                                cache:false,
                                data: {
                                    action: "getCat",
                                    c_id: getCat
                                },
                                success:function(data){
                                   displayData(data);
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
                                action: "insertCat",
                                c_id:getCat
                            },
                            success:function(data){
                               addnyIsbn();
                            },
                            error:function(errorData){
                                alert("It is error:"+errorData.responseJSON);
                        }
                }); 
        });     
};

function addnyIsbn(){

            var getIsbn=$("#nybokisbn").val();

             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokIsbn",
                                isbn: getIsbn,
                                fprice: 0
                            },
                            success:function(data){
                               addnyFprice(); 
                            },
                            error:function(errorData){
                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };

    function addnyFprice(){

            var getIsbn=$("#nybokisbn").val();
            var getFprice=$("#nybokfpris").val();

             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokFprice",
                                fprice: getFprice,
                                isbn: getIsbn
                            },
                            success:function(data){
                                addnyTitel();
                            },
                            error:function(errorData){
                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };

        function addnyTitel(){

            var getIsbn=$("#nybokisbn").val();
            var getTitle=$("#nyboktitel").val();
           
             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokTitel",
                                title: getTitle,
                                isbn: getIsbn
                            },
                            success:function(data){
                               addnyAuthor(); 
                            },
                            error:function(errorData){
                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };

     function addnyAuthor(){
            var getIsbn=$("#nybokisbn").val();
            var getAuthor=$("#nybokforfattare").val();

             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokAuthor",
                                author: getAuthor,
                                isbn: getIsbn
                            },
                            success:function(data){
                                addnyShelf();
                            },
                            error:function(errorData){
                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };
     function addnyShelf(){

            var getIsbn=$("#nybokisbn").val();
            var getShelf=$("#nybokhylla").val();

             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokShelf",
                                shelf: getShelf,
                                isbn: getIsbn
                            },
                            success:function(data){
                                addnyPrice();
                            },
                            error:function(errorData){

                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };

         function addnyPrice(){

            var getIsbn=$("#nybokisbn").val();
            var getPrice=$("#nybokpris").val();

             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokPrice",
                                price: getPrice,
                                isbn: getIsbn
                            },
                            success:function(data){
                                addnyStock();
                            },
                            error:function(errorData){
                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };
    
    function addnyStock(){

            var getIsbn=$("#nybokisbn").val();
            var getStock=$("#nybokantal").val();

             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokStock",
                                stock: getStock,
                                isbn: getIsbn
                            },
                            success:function(data){
                                addnyDelivery();
                            },
                            error:function(errorData){
                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };

     function addnyDelivery(){

            var getIsbn=$("#nybokisbn").val();
            var getDate=$("#date").val();  
             $.ajax(
                        {     
                            url:"sql",
                            cache:false,
                            data: {
                                action: "uppdateNyBokDelivery",
                                book_delivery: getDate,
                                isbn: getIsbn
                            },
                            success:function(data){
                                
                               alert("Data save");
                            },
                            error:function(errorData){

                                alert("It is error:"+errorData.responseJSON);
                        }
                });
    };