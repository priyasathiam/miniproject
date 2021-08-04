

<!Doctype>
<?php
include("functions/functions.php");

?>



<html>
<head>
<title>ONLINE SHOPPING...!</title>

	<link rel="stylesheet" href ="styles/style.css" media="all" />

</head>
<body>
     <!-- MAIN CONTAINER STARTS FROM HERE--> 
    <div class="main">
    
        <!-- HEADER STARTS HERE -->    
         <div class="header">
            
              <a href="index.php"><img id="logo_image" src="images/logo.jpg" style="height: 30% "/></a>
              <img id="logo_image" src="images/logo1.jpg" style="width: 70%; height: 30% "/> 


         </div>  
        <!-- HEADER ENDS HERE -->
        
       <!-- NAVIGATION BAR STARTS HERE --> 
        <div class="menubar">
            <ul id="menu">
                <li><a href="index.php">HOME</a></li>
                <li><a href="all_products.php">ALL PRODUCTS</a></li>
                <li><a href="customer/my_account.php">MY ACCOUNTS</a></li>
                <li><a href="customer_register.php">SIGN UP</a></li>
                <li><a href="cart.php">SHOPPING CART</a></li>
                <li><a href="#">CONTACT US</a></li>
           </ul>

                <div id="form">
		            <form method="get" action="result.php" enctype="multipart/form-data">
		                <input type="text" name="user_query" placeholder="Feel Free To Search" />
		                <input  type="submit" name="Search" value="Search" />
		            </form>
                </div>


       </div>
     	 <!-- NAVIGATION BAR ENDS HERE --> 
         
     		
     
     <!-- CONTENTS SECTION START HERE -->
              <div class="content">
          
			            <div id="sidebar">
			                <div id="sidebar_title">Categories</div>
			                 
			                    <ul id="cats">
			                             <?php  getCats();  ?>
			                     </ul>

			                <div id="sidebar_title">SubCategories</div>
			                      <ul id="cats">
			                             <?php  getBrands();  ?>
			                      </ul> 
			                </div>




          <div id="content_area">
             <div id=shopping_cart>
               
                  <span style="float: right; font-size: 18px; padding: 5px; line-height: 40px">
                  Welcome !
                  <b style="color: yellow">Shopping Cart:</b>Total Items: Total Price: </b>
                  <a href="cart.php" style="color: yellow ">Go to Cart</a>

                </span>

             </div> 
             
			              
			                                  
			                               <?php   

                                     if(isset($_GET['pro_id']))
                                     {    

                                     	$product_id=$_GET['pro_id'];
                                          $get_pro="select * from products where  product_id=$product_id";

                                      $run_pro=mysqli_query($con,$get_pro);

                                                 while($row_pro=mysqli_fetch_array($run_pro))
                                                      {

                                                       $pro_id=$row_pro['product_id'];	
                                                       $pro_cat=$row_pro['product_cat'];
                                                       $pro_brand=$row_pro['product_brand'];
                                                       $pro_title=$row_pro['product_name'];
                                                       $pro_desc=$row_pro['product_desc'];
                                                       $pro_price=$row_pro['product_price'];
                                                       $pro_image=$row_pro[5];
                                                       
                                                       echo "
                                                       
                                                          <div id='single_product' width='500';>
                                                                     <h3>$pro_title</h3>
                                                   
                                                                    <img src='admin_area/product_images/$pro_image' width='300' height='300' />

                                                                    <p> &#8377 <b>$pro_price</b></p> 
                                                                    
                                                                    <a href='index.php' style='float:left'>Go Back</a>   
                                                                    <a href='index.php?pro_id=$pro_id'><button style='float:right'>Add to cart</button></a>
                                                                      
                                                                      <br></br>
                                                                       <p>$pro_desc</p>
                                                            </div>
                                                         ";

                                                    }
                                                }    
                                           ?>         










			              
          </div>


     
    </div><br><br>
     <!-- CONTENTS SECTION ENDS HERE -->

        

         <div id="footer">
                          <h2 style="text-align: center;padding-top: 10px ">&copy right 2021</h2>
         </div>




</div>
<!-- MAIN CONTAINER ENDS HERE-->







</body>
</html>
