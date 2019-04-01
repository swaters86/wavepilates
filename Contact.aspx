<%@ Page Title="Contact Us" Language="VB" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript"
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIl9BO3LSzk12MiJke4IJPI9IgGGAHc9w">
    </script>
    <script type="text/javascript">
        function initialize() {
            var mapOptions = {
                center: { lat: 27.938374, lng: -82.4933697 },
                zoom: 18
            };
            var map = new google.maps.Map(document.getElementById('map_canvas'),
                mapOptions);
            var image = 'App_Themes/Wave1/imgs/MapIcon.png';
            var myLatLng = new google.maps.LatLng(27.9381, -82.493);
            var beachMarker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                icon: image
            });

        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="10" cellspacing="0" width="500" style="margin:0 auto; padding-left:10px; text-align:left; font-size:12px">
       <tr>
       <td colspan="3"><h1>Contact Us</h1></td>
       </tr>
       <tr>
           <td colspan="3"><sup class="attention">*</sup> <span style="font-size:9pt">required field</span></td>
       </tr>

       <tr valign="bottom">
           <td></td>
           <td><asp:RequiredFieldValidator ID="rqfvName" CssClass="fix" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator"><span class="attention"> Name Required.</span></asp:RequiredFieldValidator></td>
       </tr>
       <tr>
           <td><asp:Label ID="lblName" runat="server" Text="Label">First &amp; Last Name:<sup class="attention">*</sup></asp:Label></td>
           <td><asp:TextBox CssClass="Field" ID="txtName" runat="server" Width="267px"></asp:TextBox></td>
       </tr>
       <tr valign="bottom">
           <td><asp:RegularExpressionValidator ID="revEmail" runat="server" 
                   ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" 
                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"><span class="attention">Check Email Format.</span></asp:RegularExpressionValidator></td>
           <td><asp:RequiredFieldValidator CssClass="fix" ID="rqfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator"><span class="attention"> Email Required.</span></asp:RequiredFieldValidator></td>
       </tr>
       <tr>
           <td><asp:Label ID="lblEmail" runat="server" Text="Label">Email:<sup class="attention">*</sup></asp:Label></td>
           <td><asp:TextBox CssClass="Field" ID="txtEmail" runat="server" Width="267px"></asp:TextBox></td>
       </tr>
       <tr>
           <td>
                &nbsp;
           </td>
           <td>
                &nbsp;
           </td>
       </tr>
       <tr>
           <td><asp:Label ID="lblPhone" runat="server" Text="Label">Primary Phone:</asp:Label></td>
           <td><asp:TextBox CssClass="Field" ID="txtPhone" runat="server" Width="267px"></asp:TextBox></td>
       </tr>
       <tr>
           <td>
                &nbsp;
           </td>
           <td>
                &nbsp;
           </td>
       </tr>                       <tr>
           <td><asp:Label ID="lblAltPhone" runat="server" Text="Label">Alternate Phone:</asp:Label></td>
           <td><asp:TextBox CssClass="Field" ID="txtAltPhone" runat="server" Width="267px"></asp:TextBox></td>
       </tr>
       <tr>
           <td>
                &nbsp;
           </td>
           <td>
                &nbsp;
           </td>
       </tr>
       <tr>
           <td style="vertical-align: top;"><asp:Label ID="lblInterested" runat="server" Text="Label">I'm Interested in the following:</asp:Label></td>
           <td>
              <asp:CheckBoxList ID="chckboxInterest" runat="server" Width="210">
               <asp:ListItem>The Intro Special </asp:ListItem>
               <asp:ListItem>Private Sessions </asp:ListItem>
               <asp:ListItem>Duet Session </asp:ListItem>
               <asp:ListItem>30-Minute Private Session </asp:ListItem>
               <asp:ListItem>Circuit Class</asp:ListItem>
               <asp:ListItem>Reformer Class</asp:ListItem>
               <asp:ListItem>Ped-a-lates</asp:ListItem>
                <asp:ListItem>TRX</asp:ListItem>
               </asp:CheckBoxList>
           </td>
          
       </tr>
       <tr>
           <td>
                &nbsp;
           </td>
           <td>
                &nbsp;
           </td>
       </tr>
       <tr>
           <td valign="top" style="vertical-align:top"><asp:Label ID="lblQuestions" runat="server" Text="Label">Have any Questions or Comments?</asp:Label></td>
           <td><asp:TextBox CssClass="Field" Width="277px" Height="116px" ID="txtQuestions" TextMode="MultiLine" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
           <td>
                &nbsp;
           </td>
           <td>
                &nbsp;
           </td>
       </tr>                       
       <tr style="text-align: center;">
           <td colspan="2">
                <br />
               <asp:Button ID="btnSubmit" runat="server" Height="26px" Text="Submit" Width="74px" />
           </td>
            
       </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <img src="App_Themes/Wave1/imgs/CallNow.png" alt="" /> 
    
     <div class="map"> 
        <div id="map_canvas"></div>
        <br style="line-height:5.2em;"/>
        <a style="margin-left: 80px;" href="http://www.wavepilates.com/map.html" title="View larger map" target="_blank">View Larger Map</a>
     </div>
    

   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  <%--  <script type="text/javascript">

        // Create a latitude/longitude object
        var latlon = new LatLon(27.938135, -82.493174);

        // Display the map centered on that location with zoom level 3.
        // Include your application ID. 
        var map = new Map("map_canvas", "BAXNca48", latlon, 3);


        var map = new YMap(document.getElementById('map_canvas'));
        var point = new YGeoPoint(27.938135, -82.493174);
        map.drawZoomAndCenter(point, 3);
        map.addZoomLong();
        var marker = new YMarker(point);
        var new_image = new YImage();
        new_image.src = 'App_Themes/Wave1/imgs/MapIcon.png';
        //new_image.style.width = "150px"
        //new_image.style.height = "80px"
        marker.changeImage(new_image);
        map.addOverlay(marker);

</script>
    <script type="text/javascript" src="http://maps.yahooapis.com/v3.5.2/fl/javascript/apiloader.js?appid=BAXNca48"></script>  --%>
</asp:Content>