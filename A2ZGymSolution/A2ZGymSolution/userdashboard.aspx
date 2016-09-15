<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userdashboard.aspx.cs" Inherits="A2ZGymSolution.userdashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> 
           <link rel="stylesheet" type="text/css" href="css/user.css" />

</head>
<body>
    <form id="form1" runat="server">
   

<div class="" style="clear: both">
    
    <div class="post_loginhead">
    <div class="content">
        <h1> Deepak  Kumar</h1>
    </div>
    <div class="clear"></div>
    <div class="links_contain">
        <div class="fullpage">
            <div class="links">
                <ul>
                    <li><a href="javascript:void(0)" class="active" id="tab-1" onclick="displayTab(this.id)">Upcoming</a></li>
                    <li><a href="javascript:void(0)"  id="tab-2" onclick="displayTab(this.id)">Past</a></li>
                    <li><a href="javascript:void(0)"  id="tab-3" onclick="displayTab(this.id)">Favourites</a></li>
                    <li><a href="javascript:void(0)"  id="tab-4" onclick="displayTab(this.id)">Friends</a></li>
                </ul>
            </div>
        </div>
    </div>

</div>
<div class="post_login two_col">
    <div class="fullpage">
        <div class="colL">
            <div class="profile_pic">            
                <div id="userPhotomessage" class="errorMessage"></div>               
                                <span id="userPhoto"><img src="http://fitpass.co.in/upload/myprofile.jpg" alt="edit profile" class="img-responsive" style="width:180px;height:180px;"></span>

                <div id="uploadFile"><noscript><p>Please enable JavaScript to use file uploader.</p></noscript></div>            </div>
            <div class="profile_name">
                Deepak  Kumar<br /><br />

                <span class="fnt-size14"></span><br />
                <br />
                <span class="fnt-size14">Membership Id: FITPASS-37478</span><br /><br />
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

    function cancelSchedule(scheduleid) {
        jQuery.ajax({
            'type': 'POST',
            'url': "http://fitpass.co.in/FitpassCourses/cancelSchedule/",
            'data': "scheduleid=" + scheduleid,
            'beforeSend': function (jqXHR, settings) {
                $("#classcancelation-" + scheduleid).show();
                $(".classcancelation-" + scheduleid).hide();
            },
            'success': function (data) {
                $("#upcomingclasslist").html(data);
                $("#cancelClass h2").html("Your workout has been cancelled successfully.");
                window.location = "#cancelClass";
                $(".upcominginputtext").html($("#upcominginputtext").val() - 1);
                $('#cancelClass').delay(9000, function () {
                    $('#cancelClass h2').fadeOut()
                });

            },
            'cache': false
        });
    }
</script></div>


<div id="footer">
    

    <section class="fullpage mrgT10">

        <div class="boxes">
            <h4>LEARN MORE</h4>
            <ul class="list1">
                <li> <a href="/sweatiquette-faq/">Sweatiquette and FAQs</a></li>

                                    <li> <a href="/privacy-policy/">Privacy Policy</a></li>
                    <li><a href="/terms-and-conditions/">Terms and Conditions</a></li>
                     <li><a href="/fitness-offers/">Offers</a></li>
                    <li><a href="/products/">Products</a></li>
                    <li><a href="/contact/">Contact</a></li>
                            </ul>
        </div>

        <div class="boxes ">
            <h4>PEOPLE </h4>
            <ul class="list1 bottom_social">
                <li><a href="/about/">About</a></li>
                <li><a href="/partners/">Become a Partner</a></li>
                <li><a href="/corporates/">Corporate</a></li>
                <li><a href="/careers/">Careers</a></li>
                <li><a href="/team/">Team</a></li>
            </ul>
        </div>
        <div class="boxes">
            <h4>CONNECT</h4>
            <ul class="list1 bottom_social">        
                <li> <a href="https://fitpass.co.in/blog/" target="blank">Blog</a></li>
                <li> <a href="https://fitpass.co.in/rockthesaree" target="blank">#rockthesaree</a></li>  
                
            </ul>
            <ul class=" list1 social_foot footerSocialicon"> 
                <li><a href="https://www.facebook.com/fitpassindia" class="facebook sprite" target="blank">Facebook</a></li>
                <li><a href="https://instagram.com/fitpassindia/" class="rss sprite" target="blank">Instagram</a></li>
                <li><a href="https://twitter.com/FitpassIndia" class="twitter sprite" target="blank">Twitter</a></li>
            </ul>
            <ul> 
                <li class="mrgT10 liactivephone"style="color: #fff!important">Email us at: care@fitpass.co.in<br/>
                    Call us on: 011-46061468</li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="clear"></div>
        <div class="foot_copy">©2015 <a href="https://fitpass.co.in/">fitpass.co.in</a>  | All Rights Reserved</div>
    </section>
</div>


<script src="/themes/front-end/js/jquery.meanmenu.js"></script>

<script language="javascript">
    var message = "";
    ///////////////////////////////////
    function clickIE() {
        if (document.all) {
            (message);
            return false;
        }
    }

    function clickNS(e) {
        if (document.layers || (document.getElementById && !document.all)) {
            if (e.which == 2 || e.which == 3) {
                (message);
                return false;
            }
        }
    }
    if (document.layers) {
        document.captureEvents(Event.MOUSEDOWN);
        document.onmousedown = clickNS;
    } else {
        document.onmouseup = clickNS;
        document.oncontextmenu = clickIE;
    }

    document.oncontextmenu = new Function("return false")

</script>
<script>
    jQuery(document).ready(function () {
        jQuery('header nav').meanmenu();
    });
</script>
</style>
<script type="text/javascript">
    /*<![CDATA[*/
    jQuery(window).load(function () {
        var FileUploader_uploadFile = new qq.FileUploader({
            'element': document.getElementById("uploadFile"), 'debug': false, 'multiple': false, 'action': '/users/uploadphoto/id/37280/', 'allowedExtensions': ['jpg', 'jpeg', 'gif', 'png', 'JPG', 'JPEG', 'GIF', 'PNG'], 'sizeLimit': 2097152, 'minSizeLimit': 1024, 'onComplete': function (id, fileName, responseJSON) {
                if (responseJSON.success) {
                    $('#userPhoto').html('<img  style="width:180px;height:180px;" src="https://fitpass-images.s3.amazonaws.com/customer_img_' + responseJSON.filename + '" />');
                    $('#userPhotomessage').text('photo changed successfully.');
                    $('#userPhotomessage').delay(3000).fadeOut('slow');
                }

            }, 'params': { 'PHPSESSID': 'ct5m66hculhkccg355u8kvtuu5', 'YII_CSRF_TOKEN': 'c903c46a527c40e12e5cb93bee06588afbf2fcfc' }
        });
    });
    /*]]>*/
</script>
</body>
</html>




    </div>
    </form>
</body>
</html>
