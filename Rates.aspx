<%@ Page Title="" Language="VB" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="false" CodeFile="Rates.aspx.vb" Inherits="Rates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
      <h1>Rates</h1>
        <p>55-minute Privates, Duets and Triples by appointment only! <br /></p>

                <h3>Wave Pricing / Master Instructor Pricing</h3>
                    
                <h3 style="padding-top:20px;">Intro Special</h3>
                   <ul class="list1">
                        <li>3 privates &amp; 1 FREE &#149; $200 / $240
                            <br /> <small><em>Required for first time clients</em></small>
                        </li>
                   </ul>

                <h3>Private Sessions</h3>
                    <ul class="list1">
                      <li>Single <%--(pay per session)--%> &#149;  $65 / $75</li>
                      <li>Series of 6 <%--($55/ea)--%> &#149;  $360 / $420</li>
                      <li>Series of 12 <%--($50/ea)--%> &#149;  $660 / $780</li>
                      <li>Series of 25 <%--($45/ea)--%> &#149;  $1250 / $1500</li>
                    </ul>


                <h3>Duet Sessions</h3>
                    <ul class="list1">
                      <li>Single <%--(pay per session)--%> &#149; $55 / $65</li>
                      <li>Series of 6 <%--($48/ea)--%> &#149; $318 / $378</li>
                      <li>Series of 12 <%--($45/ea)--%> &#149; $600 / $720</li>
                      <li>Series of 25 <%--($40/ea)--%> &#149; $1125 / $1375</li>
                    </ul>

                <h3>Triple Sessions</h3>
                    <ul class="list1">
                      <li>Single (pay per session) &#149; $50 / $60</li>
                      <li>Series of 6 ($43/ea) &#149; $288 / $348</li>
                      <li>Series of 12 ($40/ea) &#149; $540 / $660</li>
                      <li>Series of 25 ($38/ea) &#149; $1075 / $1325</li>
                    </ul>

                <h3>30-Minute Private Session</h3>
                <ul class="list1">
                  <li>Single (pay per session) &#149; $30 / $40</li>
                </ul>

                <h3>Circuit Class</h3>
                <small><em>Must complete intro package prior to joining any group classes</em></small>
                    <ul class="list1">
                      <li>Drop-in (pay per session) &#149; $25</li>
                      <li>Series of 10 &#149; $200</li>
                      <li>Series of 15 &#149; $270</li>
                    </ul>

                <h3>Reformer Class </h3>
                <small><em>Based on a 4-week period</em></small>
                    <ul class="list1">
                      <li>Drop-in (pay per session) &#149; $35</li>
                      <li>1x/week for 4 weeks ($30) &#149; $120</li> 
                      <li>2x/week for 4 weeks ($27) &#149; $215</li>
                    </ul>

                <div id="pedalates">
                <h3>Ped-a-lates</h3>
                <ul class="list1">
                      <li>Drop-in (pay per session) &#149; $40</li>
                      <li>Series of 10 ($380)  &#149; $38</li> 
                      <li>Series of 15 ($540)  &#149; $36</li>
                 </ul>
                 </div>
                 
                <h1>Class Descriptions</h1>
                <p style="font-size:12px;">Wave Pilates is a fully equipped studio with 6 Reformers, 1 Trapeze Table, 2 Wunda chairs, 1 Ladder Barrel, 1 Spine Corrector, 4 spin bikes, 2 TRX suspension trainers and numerous props.</p>
                
                
                 <h3 style="margin-top:20px;">Circuit Classes</h3>
                 <p style="margin-top:-3px;">Wave Pilates Circuit  Class incorporates all of the apparatus: Reformer, Trapeze Table, Wunda Chair, Ladder Barrel, Foam Rollers, Magic Circles, and whatever else we can think of to give you a  fantastic workout! We will focus on breathing techniques, neutral spinal positioning, the best traditional and modern Pilates exercises for strengthening upper body, lower body and the core, as well as flexibility and balance exercises. The class, which is appropriate for all levels of fitness and modifications, will be offered for each level. Class length is 55 minutes</p>
                 
                 <h3 style="margin-top:20px;">Group Reformer Classes</h3>
                <p style="margin-top:-3px;">Group class with up to four people.  Group Reformer will take you through challenging sequences and variations of exercises that go at a fast pace. You will be introduced to accessories like the Pilates short and long box, the jumpboard and the Pilates circle. You will achieve slimmer, longer, stronger muscles with increased endurance and energy!</p>
                 
                 <h3 style="margin-top:20px;">Ped-a-lates Classes</h3>
                 <p style="margin-top:-3px;margin-bottom:20px;">30 minutes of cardio endurance in the cycling room followed by 30 minutes of Pilates on the reformer.</p>
                 
                 <h1 style="margin-top:30px;">Schedule</h1>
                    <table style="width:340px;"  cellspacing="0" cellpadding="10">
                        <tr>
                            <td valign="top"><h4>Monday</h4></td>
                            <td valign="middle">
                                <ul class="list1">
                                    <li>10am – circuit class</li>
                                    <%--<li>6pm –reformer class</li>--%>
                                </ul>
                            </td>
                        </tr>
                        <tr class="style7">
                            <td valign="top"><h4>Tuesday</h4></td>
                            <td valign="middle">
                                <ul class="list1">
                                    <li> 9am – Reformer class</li>
                                    <%--<li>12pm – pedalates</li>--%>
                                   <%-- <li> 6pm – Reformer class</li>--%>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top"><h4>Wednesday</h4></td>
                            <td valign="middle">
                                <ul class="list1">
                                    <li> 9am – Circuit class</li>
                                    <li> 5:30pm – Ped a lates</li>
                                    <%--<li> 6pm – reformer class</li>--%>
                                </ul>
                            </td>
                        </tr>
                        <tr class="style7">
                            <td valign="top"><h4>Thursday</h4></td>
                            <td valign="middle">
                                <ul class="list1">
                                    <li> 10am – Reformer class</li>
                                    <%--<li> 12pm – pedalates</li>
                                    <li> 6pm – circuit class</li>--%>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top"><h4>Friday</h4></td>
                            <td valign="middle">
                                <ul class="list1">
                                    <li>10am – Circuit class</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top"><h4>Saturday</h4></td>
                            <td valign="middle">
                                <ul class="list1">
                                    <li>10am – Circuit class</li>                                    
                                </ul>
                            </td>
                        </tr>
                    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <img src="App_Themes/Wave1/imgs/3.png" alt="" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


</asp:Content>

