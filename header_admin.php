<?php
session_start();
?>
<section id="top">
    <div class="top_m clearfix">
        <div class="container">
            <div class="row">
                <div class="top_1 clearfix">
                    <div class="col-sm-5">
                        <div class="top_1l clearfix">

                            <?php
	  if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
						   echo '<h5 style="color: white;"><span class="span_1"><i class="fa fa-user"></i></span> Welcome '.$_SESSION['adminemail'].' </h5><br>
						   <p class="mgt col_1">Save up to 15% everyday on all products</p>';
						   
					   }
					else{
						echo '<p class="mgt col_1">Save up to 15% everyday on all products</p>';
					}
					?>
                        </div>

                    </div>
                    <div class="col-sm-7">
                        <div class="top_1r clearfix">
                            <ul class="navbar-right mgt">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle m_tag" data-toggle="dropdown">INR <b
                                            class="caret"></b></a>
                                    <ul class="dropdown-menu drop_m">
                                        <li><a href="#">INR</a></li>
                                        <li><a href="#">USD</a></li>
                                        <li><a href="#">GBP</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle m_tag" data-toggle="dropdown">English <b
                                            class="caret"></b></a>
                                    <ul class="dropdown-menu drop_m">
                                        <li><a href="#">Hindi</a></li>
                                        <li><a href="#">French</a></li>
                                        <li><a href="#">Spanish</a></li>
                                    </ul>
                                </li>
                                <li><a class="m_tag" href="my_account.php">My Account</a></li>
                                <li><a class="m_tag" href="wishlist.php">Wishlist</a></li>
                                <li><a class="m_tag" href="cart.php">My Cart</a></li>
                                <li><a class="m_tag" href="checkout.php">Checkout</a></li>
                                <?php
				   	if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
						   echo '<li><a class="m_tag" href="logout.php">Logout</a></li>';
					   }
					else{
						echo '<li><a class="m_tag" href="login.php">Login</a></li>';
					}
				  ?>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="top_2 clearfix">
                    <div class="col-sm-4">
                        <div class="top_2l clearfix">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="top_2m text-center clearfix">
                            <h3 class="mgt"><a href="index.php">Baby Choice</a></h3>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="top_2r text-center clearfix">
                            <h6 class="mgt"><a href="#"><i class="fa fa-shopping-basket"></i> 3 items / Rs. 500.00</a>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="header" class="clearfix">
    <nav class="navbar nav_t">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a class="tag_m" href="admin_home.php">Home</a></li>
                    <!-- <li><a class="tag_m" href="detail.html">Detail</a></li> -->
                    <li><a class="tag_m" href="orders.php">Orders</a></li>
                    <li><a class="tag_m" href="blog.php">Blog</a></li>
                    <li><a class="tag_m" href="admin_customize_products.php">Customize Products</a></li>
                    <li><a class="tag_m" href="admin_unique_products.php">Unique Products</a></li>
                    <li><a class="tag_m" href="admin_request_products.php">Request Products</a></li>
                    <!-- <li><a class="tag_m" href="blog_detail.html">Blog Detail</a></li> -->

                    <li><a class="tag_m" href="manage_products.php">Manage</a></li>
                    <!-- <li><a class="tag_m" href="login.html">Log In</a></li> -->
                    <li><a class="tag_m" href="admin_users.php">Users</a></li>
                    <li class="dropdown dropdown-large">
                        <a href="#" class="dropdown-toggle tag_m" data-toggle="dropdown">Brands<b class="caret"></b></a>

                        <ul class="dropdown-menu dropdown-menu-large row">
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Glyphicons</li>
                                    <li><a href="#">Available glyphs</a></li>
                                    <li class="disabled"><a href="#">How to use</a></li>
                                    <li><a href="#">Examples</a></li>
                                    <li><a href="#">Example</a></li>
                                    <li><a href="#">Aligninment options</a></li>
                                    <li><a href="#">Headers</a></li>
                                    <li><a href="#">Disabled menu items</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Button groups</li>
                                    <li><a href="#">Basic example</a></li>
                                    <li><a href="#">Button toolbar</a></li>
                                    <li><a href="#">Sizing</a></li>
                                    <li><a href="#">Nesting</a></li>
                                    <li><a href="#">Vertical variation</a></li>
                                    <li><a href="#">Single button dropdowns</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Button groups</li>
                                    <li><a href="#">Basic example</a></li>
                                    <li><a href="#">Button toolbar</a></li>
                                    <li><a href="#">Sizing</a></li>
                                    <li><a href="#">Nesting</a></li>
                                    <li><a href="#">Vertical variation</a></li>
                                    <li><a href="#">Single button dropdowns</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Button groups</li>
                                    <li><a href="#">Basic example</a></li>
                                    <li><a href="#">Button toolbar</a></li>
                                    <li><a href="#">Sizing</a></li>
                                    <li><a href="#">Nesting</a></li>
                                    <li><a href="#">Vertical variation</a></li>
                                    <li><a href="#">Single button dropdowns</a></li>
                                </ul>
                            </li>
                        </ul>

                    </li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="tag_m1" href="#">Todays Offer</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <nav class="navbar nav_o">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"><i class="fa fa-shopping-bag"></i> Baby Choice </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <ul class="nav navbar-nav">
                    <li><a class="tag_m active_tab" href="index.php">Home</a></li>
                    <li><a class="tag_m" href="orders.php">Orders</a></li>
                    <!-- <li><a class="tag_m" href="detail.php">Detail</a></li> -->
                    <li><a class="tag_m" href="blog.php">Blog</a></li>
                    <li><a class="tag_m" href="admin_customize_products.php">Customize Products</a></li>
                    <li><a class="tag_m" href="admin_unique_products.php">Unique Products</a></li>
                    <li><a class="tag_m" href="admin_request_products.php">Request Products</a></li>
                    <li><a class="tag_m" href="my_account.php">My Account</a></li>
                    <!-- <li><a class="tag_m" href="wishlist.php">Wishlist</a></li>
                    <li><a class="tag_m" href="cart.php">Cart</a></li>
                    <li><a class="tag_m" href="checkout.php">Checkout</a></li> -->
                    <li><a class="tag_m" href="manage_products.php">Manage</a></li>
                    
                    <?php
				   	if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
						   echo '<li><a class="tag_m" href="login.php">Logout</a></li>';
					   }
					else{
						echo '<li><a class="m_tag" href="login.php">Login</a></li>';
					}
				  ?>
                    <li><a class="tag_m" href="admin_users.php">Users</a></li>
                    <li class="dropdown dropdown-large">
                        <a href="#" class="dropdown-toggle tag_m" data-toggle="dropdown">Brands<b class="caret"></b></a>

                        <ul class="dropdown-menu dropdown-menu-large row">
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Glyphicons</li>
                                    <li><a href="#">Available glyphs</a></li>
                                    <li class="disabled"><a href="#">How to use</a></li>
                                    <li><a href="#">Examples</a></li>
                                    <li><a href="#">Example</a></li>
                                    <li><a href="#">Aligninment options</a></li>
                                    <li><a href="#">Headers</a></li>
                                    <li><a href="#">Disabled menu items</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Button groups</li>
                                    <li><a href="#">Basic example</a></li>
                                    <li><a href="#">Button toolbar</a></li>
                                    <li><a href="#">Sizing</a></li>
                                    <li><a href="#">Nesting</a></li>
                                    <li><a href="#">Vertical variation</a></li>
                                    <li><a href="#">Single button dropdowns</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Button groups</li>
                                    <li><a href="#">Basic example</a></li>
                                    <li><a href="#">Button toolbar</a></li>
                                    <li><a href="#">Sizing</a></li>
                                    <li><a href="#">Nesting</a></li>
                                    <li><a href="#">Vertical variation</a></li>
                                    <li><a href="#">Single button dropdowns</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-3">
                                <ul>
                                    <li class="dropdown-header">Button groups</li>
                                    <li><a href="#">Basic example</a></li>
                                    <li><a href="#">Button toolbar</a></li>
                                    <li><a href="#">Sizing</a></li>
                                    <li><a href="#">Nesting</a></li>
                                    <li><a href="#">Vertical variation</a></li>
                                    <li><a href="#">Single button dropdowns</a></li>
                                </ul>
                            </li>
                        </ul>

                    </li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="tag_m1" href="#">Todays Offer</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</section>