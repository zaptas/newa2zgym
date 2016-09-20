<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User.Master" CodeBehind="userdashboard.aspx.cs" Inherits="A2ZGymSolution.userdashboard" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
<link rel="stylesheet" type="text/css" href="css/user.css" />
<div class="" style="clear: both">
    
    <div runat="server" id="post_loginhead1" class="post_loginhead">
    <div class="content">
        <h1> <%= username %></h1>
    </div>
   

</div>
<div class="post_login two_col">
    <div class="fullpage">
        <div class="colL">
            <div class="profile_pic">            
                             
                                <span id="userPhoto"><img src="<%=picpath %>" alt="edit profile" class="img-responsive" style="width:180px;height:160px;"></span>

                <div id="uploadFile"><noscript><p>Please enable JavaScript to use file uploader.</p></noscript></div>            </div>
            <div class="profile_name">
                <%= username %><br /><br />

                <span class="fnt-size14"></span><br />
                <br />
                <span class="fnt-size14">Membership Id: <%=userid %></span><br /><br />
                <span class="fnt-size14"><a href="/checkout"><b>Extend Membership</b></a></span><br />
            </div>
            <div>
                <div class="class_status"> <p class="number upcominginputtext">
                        
0                        
                        <input type="hidden" name="upcomming" id="upcominginputtext" value="0"></p>
                    Upcoming
                    Workouts </div>
                <div class="class_status">
                    <p class="number">0</p>
                    Completed
                </div>
                <div class="class_status">
                    <p class="number">0</p>
                    Credits 
                </div>
                <div class="class_status">
                    <p class="number"></p>
                    Cycle Ends</div>
            </div>
        </div>
        <div class="colR">
            <div class="tab-1 displayTab">
                <ul class="class_list" id="upcomingclasslist">

                    <li id="cancelClass"><h2></h2></li>

    <li class="text-center" style=" margin-top: 91px;"><img src="/themes/front-end/images/fitpass-images/upcommingclass.png" style="height: 50px;width: 50px;padding: 12px;"/>
        <h2 class="fnt-size30">Reserve your next workout</h2>
        <p class="mrgT20">                                
    <!--            Start browsing through the hottest <a href="http://fitpass.co.in/workouts/" class="drop-login-fitpass">workouts</a> and the best <a href="http://fitpass.co.in/studio/">studios</a> around you, and reserve your spot now!   -->
            <a href="http://fitpass.co.in/workouts/" class="drop-login-fitpass" style="width: 40%; margin: 0 auto;font-size: 17px;">Check out the workout schedule now!</a> 
        </p></li>

                </ul>
            </div>
            <div class="clear"></div>
            <div class="tab-2 displayTab" style="display: none">
                <ul class="class_list">
                                            <li class="text-center" style=" margin-top: 91px;"><img src="/themes/front-end/images/fitpass-images/pastclass.png" style="height: 50px;width: 50px;padding: 12px;"/>
                            <h2 class="fnt-size30">NO PAST WORKOUT</h2>
                            <p class="mrgT20">                                
                                You haven't attended any workout yet :(
                            </p>
                        </li>

                                    </ul>
            </div>
            <div class="tab-3 displayTab" style="display: none">
                <ul class="class_list">
                                            <li class="text-center" style=" margin-top: 91px;"><img src="/themes/front-end/images/fitpass-images/favourite.png" style="height: 50px;width: 50px;padding: 12px;"/>
                            <h2 class="fnt-size30"> FAVOURITES</h2>
                            <p class="mrgT20">                                                              
                                Tap the heart icon on your favourite studio’s page to access their workouts much faster
                            </p></li>

                                    </ul>
            </div>
            <div class="tab-4 displayTab" style="display: none">
                <ul class="class_list">

                    <li class="text-center" style=" margin-top: 91px;"><img src="/themes/front-end/images/fitpass-images/followers.png" style="height: 50px;width: 50px;padding: 12px;"/>
                        <h2 class="fnt-size30"> COMING SOON </h2>
                    </li>

                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script>
    function displayTab(tabid) {
        $(".links ul li a").removeClass('active');
        $("#" + tabid).addClass('active');
        $(".displayTab").hide();
        $("." + tabid).show();
    }

   
</script></div>


    </asp:Content>