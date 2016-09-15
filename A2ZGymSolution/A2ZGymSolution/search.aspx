<%@ Page Title="" Language="C#" MasterPageFile="~/master-all.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="A2ZGymSolution.search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- content-section-starts -->
    <div class="content-section" id="search">

        <div class="container">
            <div class="row">

                <!-- /.col-lg-6 -->
                <div class="col-lg-12">
                    <div class="search-box">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                    <!-- /input-group -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>

        <div class="container">
            <div class="gap gap-small"></div>
            <h3 class="mb20">Popular Flight Destinations</h3>
            <div class="row row-wrap">
                <div class="col-md-3 thumb">
                    <a class="hover-img" href="#">
                        <img src="images/1.jpg" alt="Image Alternative text" title="Gaviota en el Top" />
                        <div class="hover-inner hover-inner-block hover-inner-bottom hover-inner-bg-black hover-hold">
                            <div class="text-small">
                                <h5>New York City Hotels</h5>
                                <p>54642 reviews</p>
                                <p class="mb0">722 offers from $53</p>
                            </div>
                        </div>
                    </a>
                </div>
              
            </div>
            <div class="gap"></div>
        </div>

    </div>
    <!-- content-section-ends -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSecton" runat="server">
</asp:Content>
