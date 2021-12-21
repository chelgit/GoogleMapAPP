<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BeanTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="assets/css/main.css" />
    <title></title>
    	<style>
		#map {
			height: 100%;
		}

	</style>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script async defer
		src="https://maps.googleapis.com/maps/api/js?key=YourAPIKey&callback=initMap">
</script>
    <script>

        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                x.innerHTML = "Geolocation is not supported by this browser.";
            }
        }
        function showPosition(position) {
            document.getElementById("txtlat").value = position.coords.latitude
            document.getElementById("txtLong").value = position.coords.longitude;
        }
        function initMap() {
            getLocation();
            var currntlat = document.getElementById("txtlat").value;
            var currntlong = document.getElementById("txtLong").value;
            
            var map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 1.3521, lng: 103.8198 },
                zoom: 13,
                mapTypeId: 'roadmap'
            });



            
            data = [{ "availableqty": 3, "distance": 0.56552593573014209, "lat": "1.3124", "long": "103.8542", "locationid": 2 }];
           
        }

        function FetchData() {

            var lat = document.getElementById("txtlat").value;
            var longi = document.getElementById("txtLong").value;
            var distance = document.getElementById("txtDistance").value;
            var count = document.getElementById("txtNumberofScooters").value;

            if (distance == "") {
                alert('radius is invalid.');
                return;
            }
            if (longi == "") {
                alert('longitude is invalid.');
                return;
            }
            if (lat == "") {
                alert('Latitude is invalid.');
                return;
            }
            if (count == "") {
                alert('Please type numbers of scooters.');
                return;
            }

            var args = { lat: lat, longi: longi, distance: distance, count: count };
            

            //// initialise the location of the map on Singapore
            var map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 1.3521, lng: 103.8198 },
                zoom: 12,
                mapTypeId: 'roadmap'
            });

            $.ajax({
                type: "POST",
                url: "/Default.aspx/GetScooter",
                data: JSON.stringify(args),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                cache: false,
                success: function (response) {
                   console.log(response.d);
                   
                    var list = (response.d);
                    const myJSON = JSON.stringify(response.d);
                    
                    
                    $.each(JSON.parse(list), function (index, item) {
                        console.log("Agent Id: " + item.availableqty);
                        console.log("Agent Name: " + item.lat);

                        var lat = item.lat;
                        var long = item.long;
                        var latLng = new google.maps.LatLng(lat, long);

                        var marker = new google.maps.Marker({
                            position: latLng,
                            icon: '/img/icon_bike.png',
                            map: map,
                            animation: google.maps.Animation.DROP,
                            title: "Available scooters :"+ item.availableqty
                        });
                        const infoWindow = new google.maps.InfoWindow();

                        marker.addListener("click", () => {
                            infoWindow.close();
                            infoWindow.setContent(marker.getTitle());
                            infoWindow.open(marker.getMap(), marker);
                        });
                    });
                },
                error: function (response) {
                    alert(response.d);
                }
            });
        }
        function keypresshandler(event) {
            var charCode = event.keyCode;
            //Non-numeric character range
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
        }
    </script>
</head>
<body>
    
      
	<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div id="content">

							<!-- Content -->

								<article>
									<header>
										<h2>Fetching X Scooters within a radius </h2>
										<p>Default Latitude value and Longitude value is singapore</p>
									</header>
                                    <div class="row gtr-50">
										<div class="col-6">
											  Latitude<input type="text" id="txtlat" value="0" onkeypress='return keypresshandler(event)'/>
										</div>
										<div class="col-6">
											 Longitude<input type="text" id="txtLong"  value="0" onkeypress='return keypresshandler(event)'/>
										</div>
										<div class="col-6">
											  Radius<input type="text" id="txtDistance" value="1" onkeypress='return keypresshandler(event)'/>
										</div>
										<div class="col-6">
											 Please type how many scooters you want<input type="text"  id="txtNumberofScooters" value="1" onkeypress='return keypresshandler(event)'/>
										</div>
										<div class="col-12">
											<ul class="actions">
												<li><input type="button" class="button alt" value="Search"   onclick="FetchData()" /></li>
											</ul>
										</div>
									</div>
								
                                    
   

                                    	
									

									
								</article>

						</div>
					</div>
                     <!--Google map-->
<div id="map" style="height: 500px" class="container">
 
</div>


				</section>

    
 





</body>
</html>
