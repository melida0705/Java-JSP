<%-- 
    Document   : prikaz
    Created on : Dec 8, 2019, 2:26:38 PM
    Author     : melid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Food Order</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
                margin:0px;
          
            }
            * {
            box-sizing: border-box;
          }
            .header
            {
            height: 100px;
            width:100%;
            margin: 0px;
            padding-top: 30px;
            text-align: center;
            font-size: 40px;
            font-family: Tahoma;
            background-color: #FCBA12;
            color: #AE0D7A;

             }
            .nav
            {
            float:left;
            height: 800px;
            width: 30%;
            padding-top: 15px;
            color:white;
            font-size: 30px;
            background-color:#093426;
           
            }
            .content
            {
                float:left;
                width:50%;
                
            }
            .menuButton{
                
                color:white;
                margin-left: 40px;
            }
            .btnSave {
        background-color:#FCBA12; /* Green */
         border: none;
        color: #093426;
        
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 40px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
        }

       .btnSave:hover {
           
        box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        }
        h3{
           color:#FCBA12;
          
           margin-left:20px;
    
}
textarea {
  width:  300px;
  height: 500px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
  margin-left:30px;
}
.btnOrder
{
     background-color:#FCBA12; /* Green */
         border: none;
        color: #093426;
        
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-left:50px;
        margin-top: 60px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
        
}
            
        </style>
    </head>
    <jsp:useBean id="food" class="Bean.Food"  scope="session"/>  
    <jsp:setProperty name="food" property="*"/>   
    <body>
      
        
        <div >
           <div class="he">
              <h1 class="header"> WELCOME TO FOOD ORDER</h1>
              
        
           </div>
        
        
            <div id = "izabrano" class="content">
                <h3>Your order list</h3>
               
                
                <textarea id="area" name="hrana">${food.hrana}</textarea>
                   
         
                   
               
              
            </div>
                <form action="index.jsp" method="POST">
                    <button class="btnOrder"> BACK</button>
               
                </form>
            
        </div>
       <script>
function myFunction() {
   
   var glavni=document.createElement("div");
   glavni.style.width="200px";
   glavni.style.height="400px";
   
   
  var par=document.createElement("p");
  par= document.createTextNode("Your order details");
  //document.body.appendChild(par);
  
 
  var btn=document.createElement("p");
  btn.innerHTML=getButtonsValue();
  //var text=document.createTextNode(btn);
  document.getElementById("area").appendChild(btn); 
  var orderButton=document.createElement("input");
  orderButton.setAttribute("type","submit");
  
  orderButton.setAttribute("value","order");
  orderButton.setAttribute("id","orderB");
   glavni.appendChild(par);
  glavni.appendChild(textArea);
  glavni.appendChild(orderButton);
  
  document.getElementById("izabrano").appendChild(glavni);
  }
function getButtonsValue(){
 var checkBox=document.getElementsByName('bur');
       var check=[];
       for (var i = 0; i<checkBox.length; i++)
       {
                
             if ( checkBox[i].checked==true)
           {
             check.push(checkBox[i].value);
        }
        }
        return check;
    }      

</script>
    </body>
    
</html>