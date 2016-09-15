<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gym_profile.aspx.cs" Inherits="A2ZGymSolution.gym_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
      <link rel="stylesheet" href="css/app.css" />	
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        <div class="container-fluid bgcolor-black stickyheader">
            <header class="site-header clearfix">	
                <div class="clearfix">
                    <div class="col1">
                        <h1 class="logo">
                            LOGO
                        </h1>
                    </div>
                    <div class="col2">
                        <div class="search-bar1">
                            <div id="jquery-script-menu">
                                                                <select class="selected_city">
                                    <option value="1" data-display-text="Delhi-NCR">Delhi-NCR</option>
                                    <!--                                <option value="3">Bangalore</option>-->
                                </select>
                                <input type="text" placeholder="Search for gyms, studios or workouts in your locality"  name="location" id="autocomplete_search"/>
                                <button type="button"  onclick="globalsearch()"><i class="fa fa-search"></i></button>
    <!--                            <input  value="Search" type="Submit" class="submit_form"   />-->
                                                            </div>
                        </div>			
                    </div>
                     
                    <div class="col3">
                        <div class="nav-right1">
                                                            <div class="mymenu"> 
                                    <a href="javascript:void(0)"class="loginpopup sign-in basic-cta">Sign In</a>
                                    <a href="https://fitpass.co.in/products/" class="sign-in basic-cta hiring-tab">FITSHOP</a>
                                </div>
                                                        <!--                        <button type="button" class="get-the-app">Get the app</button>
                                                    <div class="ph-no-box">
                                                        <button type="button" class="go-cta">Go</button>
                                                        <input type="text" placeholder="Enter mob no." class="mobile-no"/>					
                                                    </div>										-->

                        </div>
                    </div>
                </div>		
            </header>	
        </div>
    </div>
    <div> <img src="../<%= gymcover %>" style="width:100%; height:300px; margin-top: 65px;" />
    <!-- Studio Profilse Header -->
    <section class="studio-profile-banner">		
        <div class="wrapper">
            <div class="container">
                <div class="logo clearfix">
                    <div class="logo-size"><img src="../<%= gymlogo %>" style="width:100%; height:100%;"/></div>
                </div>
                <div class="studio-title clearfix">
                    <h2><%= gymname %></h2>
                    <!-- use class for star rating as " star-half, star-one, star-one-half, star-two, star-two-half & so on " --> 
                    <div class="rate-studio Zerostar"></div>

                    <div class="favourite-studio">
                        </div>
                </div>
                <div class="contact-class clearfix">
                            <p>Verify By Zaptas</p>
                                        <p class="classes-offered clearfix"><strong>WORKOUTS OFFERED</strong>Zumba, Masala Bhangra, Crush Club Cardio                    </p>
                </div>
                <div class="facilities-share clearfix">
                            <p class="facilities clearfix"><strong>FACILITIES</strong>
                        <span class="ac-icon ac-icon-active"></span>                            <span class="parking-icon"></span>                        </p>
                                            <p class="share"><strong>SHARE</strong>

                        <i class='st_facebook_large' displayText='Facebook'></i>
                        <span class='st_twitter_large' displayText='Tweet'></span>
                        <span class='st_linkedin_large' displayText='LinkedIn'></span>
                        <span class='st_pinterest_large' displayText='Pinterest'></span>
                        <span class='st_email_large' displayText='Email'></span>
                        <span class='st_sharethis_large' displayText='ShareThis'></span>
                        <!--                    
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                            <a href="#"><i class="fa fa-envelope-o"></i></a>				-->
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- /Studio Profile Header -->

    <!-- Studio Workout Info -->
    <section class="studio-workout-info clearfix">
        <div class="container">

            <!-- workout-info-tabs -->
            <div class="workout-info-tabs">
                <div id="tabs-container" class="clearfix">
                    <ul class="tabs-menu">
                        <li class="current"><a href="#tab-1">SCHEDULE</a></li>
                        <li><a href="#tab-2">ABOUT</a></li>
                        <li><a href="#tab-3">Reviews</a></li>
                    </ul>
                    <div class="tab">
                        <div id="tab-1" class="tab-content">
                            <div class="day-selector">
                                <ul id="display-DateList1">
  
                                    <div class="clear"></div>
                                </ul>
                                <ul style="display:none;" id="display-DateList2">
                                   
	 
	 
	 <input type="hidden" name="currentDate" class="Thu-09-22" value="Thursday, September 22nd">                                    <div class="clear"></div>
                                </ul>
                            </div>

                            <div class="search-listhead"><h2 id="currentDate">Friday, September 09th</h2></div>
                            <div class="data-table">
                                <div class="row1 clearfix">
                                    <div class="tcol1"><h5>Workout</h5></div>
                                    <div class="tcol2"><h5>Time</h5></div>
                                    <div class="tcol3"><h5>Action</h5></div>
                                </div>
                                <input type="hidden" name="currentTime" id="currentclasssbookd" value="Fri-09-09">
                                <div class="trainerviewSchedule">
            <div class="row2 clearfix">
            <div class="tcol1">Zumba</div>
            <div class="tcol2">07:00 - 08:00</div>
            <div class="tcol3">
                                    <a href="/register/" class=" reserve basic-cta reserve-cta">Reserve </a>
                            </div>
        </div>
            <div class="row2 clearfix">
            <div class="tcol1">Zumba</div>
            <div class="tcol2">10:30 - 11:30</div>
            <div class="tcol3">
                                    <a href="/register/" class=" reserve basic-cta reserve-cta">Reserve </a>
                            </div>
        </div>
            <div class="row2 clearfix">
            <div class="tcol1">Zumba</div>
            <div class="tcol2">18:00 - 19:00</div>
            <div class="tcol3">
                                    <a href="/register/" class=" reserve basic-cta reserve-cta">Reserve </a>
                            </div>
        </div>
    
                                </div>
                            </div>
                            <div style="clear:both;"></div>

                        </div>
                        <div id="tab-2" class="tab-content">
                            <p><p>Zink Fitness studio deliver a lifestyle of social fitness where its all about having fun as you get to the body you desire. At Zink, they have state-of-the-art infrastrusture and certified trainers. They offer various Zumba, Masala Bhangra and Crush Club Cardio workouts in Sushant Lok 1 Gurgaon. <br />
 </p>
                            </p>						
                        </div>
                        <div id="tab-3" class="tab-content clearfix">
                            <p>
                            <div class="search-listhead"><!--<h3>This trainer has not been reviewed yet</h3> --></div>
                            <div class="reviews">
                                <div>
                                            <div class="studio-reviews clearfix">
                                            <h3>Reviews</h3>
         
                                            This trainer has  not been reviewed yet.                                            <br>
                                        </div>

                                    </div>

                            </div>
                            </p>							
                        </div>
                    </div>
                </div>

                <!-- Nearby Spots -->
                <div class="nearby-spots clearfix">
                    <h3>SWEATY SPOTS NEARBY</h3>
                    

                </div>
                <!-- Nearby Spots -->

            </div>			
            <!-- /workout-info-tabs -->			

            <aside class="sidebar">
                <div class="studio-map">
                    <div class="map-image-container" id="studio-map" style="height: 182px;">
                        <iframe
  width="350"
  height="180"
  frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBzwCxOm6acZHs0umJC1rttUr1crL6Vslo&q= 504 + Sector 2C + Vasundhara + Ghaziabad" allowfullscreen>
</iframe>
                        
                    </div>
                    <div class="content">

                        <h3><%= gymname %></h3>
                        <p><i class="fa fa-map-marker"></i>B-63, Opposite Vipul Square, Sushant Lok 1 Gurgaon - 122001</p>
                        <p><i class="fa fa-train"></i>MG Road (Nearest Metro Station)  </p>
                    </div>
            </div>

            <div class="studio-reviews clearfix">
                <h3>Reviews</h3>
 
                This trainer has  not been reviewed yet.                <br>
            </div>
        </aside>

    </div>
</div>
</form>
</body>
</html>


