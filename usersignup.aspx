﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Gym_Website_DB_Project.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
   <div class="row">
      <div class="col-md-8 mx-auto">
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                        <img width="100px" src="imgs/generaluser.png"/>
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                        <h4>Member Sign up</h4>
                     </center>
                  </div>
               </div>
               
                
                <div class="row">
                  <div class="col">
                     <hr>
                  </div>
               </div>

                 <div class="row">
                   <div class="col-md-6">
                        <label>Full Name:</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                   </div>

                   <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                        </div>
                   </div>
                </div>

                 <div class="row">
                   <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                   </div>

                   <div class="col-md-6">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                   </div>
                </div>


                 <div class="row">
                   <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                   </div>

                   <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                   </div>

                     <div class="col-md-4">
                         <label>Pincode</label>
                         <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                         </div>
                    </div>
                </div>

                 <div class="row">
                   <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                   </div>

                </div>

                <div class="row">
                   <div class="col">
                    <center>
      
                      <span class='badge'>Login Credentials</span>
                        </center>
                   </div>
                </div>

                 <div class="row">
                   <div class="col-md-6">
                        <label>User ID</label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                        </div>
                   </div>

                   <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                   </div>
                </div>

               <div class="row">
                  <div class="col">
                     
                     <div class="form-group">
                        <a href="usersignup.aspx">
                            <asp:Button class="btn btn-info btn-block btn-lg" id="Button2" OnClick="Button2_Click" type="button" Text="Sign Up" runat="server" />
                        </a>
                         <asp:TextBox class="form-control" runat="server" ID="showError"></asp:TextBox>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <a href="homepage.aspx"><< Back to Home</a><br><br>
      </div>
   </div>
</div>

</asp:Content>
