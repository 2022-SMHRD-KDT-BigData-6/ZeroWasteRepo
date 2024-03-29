<%@page import="com.model.StoreVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Map</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
   rel="stylesheet">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<%
List<StoreVO> list = (List<StoreVO>)request.getAttribute("list");
%>
<body class="animsition">

   <!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="wrap-menu-header gradient1 trans-0-4">
			<div class="container h-full">
				<div class="wrap_header trans-0-3">
					<!-- Logo -->
					<div class="logo">
						<a href="GoMain"> <img src="images/icons/logo.png"
							alt="IMG-LOGO" data-logofixed="images/icons/logo2.png">
						</a>
					</div>

					<!-- Menu -->
					<div class="wrap_menu p-l-45 p-l-0-xl">
						<nav class="menu">
							<ul class="main_menu">
								<li><a href="GoMain">홈</a></li>

								<li><a href="GoTuto">튜토리얼</a></li>

								<li><a href="GoMap">매장 보러가기</a></li>

								<li><a href="GoTree">내 나무</a></li>

								<li><a href="GoBoard?page=1">리뷰 & 인증</a></li>

								<li><a href="GoRegi">매장 등록</a></li>
							</ul>
						</nav>
					</div>

					<!-- Social -->
					<div class="social flex-w flex-l-m p-r-20">
						<button class="btn-show-sidebar m-l-33 trans-0-4"></button>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Sidebar -->
	<aside class="sidebar trans-0-4">
		<!-- Button Hide sidebar -->
		<button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>

		<!-- - -->
		<ul class="menu-sidebar p-t-95 p-b-70">
			<li class="t-center m-b-13"><a href="GoMain" class="txt19">홈</a>
			</li>

			<li class="t-center m-b-13"><a href="GoTuto" class="txt19">튜토리얼</a>
			</li>

			<li class="t-center m-b-13"><a href="GoMap" class="txt19">매장 보러가기</a>
			</li>

			<li class="t-center m-b-13"><a href="GoTree" class="txt19">내
					나무 </a></li>

			<li class="t-center m-b-13"><a href="GoBoard?page=1"
				class="txt19">리뷰 & 인증 </a></li>

			<li class="t-center m-b-13"><a href="GoRegi" class="txt19">매장
					등록 </a></li>

			<li class="t-center">
				<!-- Button3 --> <a href="GoLogout"
				class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> 로그아웃 </a>
			</li>
		</ul>
	</aside>

   <!-- Title Page -->
   <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
      style="background-image: url(images/bg-title-page-01.jpg);">
      <h2 class="tit6 t-center texttitle">Zero Waste 매장 안내</h2>
   </section>
	
   <!-- Main menu -->
   <section class="section-mainmenu p-t-70 p-b-70 p-l-70 p-r-70 bg1-pattern">
   
   	 <!-- 카테고리 버튼 -->
   	<ul class="main_menu">
   		<li class="foodlist" ><input type="button" id="allMarkers" value="전체" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
   		<li class="foodlist" ><input type="button" id="korean" value="한식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li class="foodlist" ><input type="button" id="western" value="양식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li class="foodlist" ><input type="button" id="japanese" value="일식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li class="foodlist" ><input type="button" id="school" value="분식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li class="foodlist" ><input type="button" id="midnight" value="야식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li class="foodlist" ><input type="button" id="cafe" value="카페" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
 	</ul>
 	
      <!-- 지도 들어갈 공간 -->
      <div class="map_wrap">
      	<div id="map" style="width: 100%; height: 150%;"></div>
      		<!-- <button onclick="panTo()">지도 중심좌표 부드럽게 이동시키기</button> -->
	       <div id="menu_wrap" class="bg_white">
	        <div class="option">
	            <div>
	                <form onsubmit="searchPlaces(); return false;">
	                    키워드 : <input type="text" value="" id="keyword" size="15"> 
	                    <button type="submit">검색하기</button> 
	                </form>
	            </div>
	        </div>
	        <hr>
	        <ul id="placesList"></ul>
	        <div id="pagination"></div>
    	</div>
      </div>
      
      <script type="text/javascript"
         src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b9d52b733842f8156d5455f83b6f4277&libraries=services"></script>

      <!-- 지도영역 -->
      <script>
       
      var mapContainer = document.getElementById('map'),
      // 지도를 표시할 div 
        mapOption = {
           center : new kakao.maps.LatLng(35.14919736053822,
                   126.92650745620224), // 지도의 중심좌표
           level : 3
        // 지도의 확대 레벨
        };

   		// 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption); 
        
     	// 장소 검색 객체를 생성합니다
        var ps = new kakao.maps.services.Places();  

        // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({zIndex:1});
        
        // DB에 있는 데이터 전부 가져오기
        // 여기서는 매장이름, 위도, 경도만 필요함 
        // **전체 & 음식 종류별로 가져오기**
        // 마커를 표시할 위치와 내용을 가지고 있을 객체 배열
        
        //데이터를 하나로 묶을 자료
        var food_data = {
        		'한식':[],
        		'양식':[],
        		'일식':[],
        		'분식':[],
        		'야식':[],
        		'카페':[]
        }
        var allMarkers = [];
        var markers = [];
        var contents = [];		//오버레이 객체정보 담는 배열
        <%int i=0;%>
        
        function filter_data(filter){
        	contents = [];
        	var overlay = new kakao.maps.CustomOverlay({zIndex:1});
    		<%for(i = 0; i < list.size(); i++){%>
        	if ('<%=list.get(i).getFoodType()%>' == filter){
	            //ko_info라는 객체 생성(매장이름, 위도, 경도) : 한식 데이터
	            var ko_info = {content:'<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            <%=list.get(i).getStoreName()%>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                 <img src="<%=list.get(i).getImageurl()%>" width="73" height="70">'  +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis"><%=list.get(i).getStoreAddress()%></div>' +  
	            '                <div class="jibun ellipsis"><%=list.get(i).getFoodType()%></div>' + 
	            '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link"><%=list.get(i).getUrl()%></a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>',         
	            latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
	                           
	            food_data[filter].push(ko_info);            //배열변수.push(객체변수); 배열에 객체 추가
	
			    var con = {content : '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            <%=list.get(i).getStoreName()%>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="<%=list.get(i).getImageurl()%>" width="73" height="70">'  +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis"><%=list.get(i).getStoreAddress()%></div>' + 
			            '                <div><a href="<%=list.get(i).getUrl()%>" target="_blank" class="link">매장상세</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>'
        	       		
	            };
	            contents.push(con);
        	}
		<%}%>
		$('#map').empty();
	    map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	    for (let i = 0; i <  food_data[filter].length; i ++) {
	        // 마커를 생성합니다
	        var marker = new kakao.maps.Marker({
	              map: map, // 마커를 표시할 지도
	              position:  food_data[filter][i].latlng // 마커의 위치 
	                       
	      	});
	       
	        kakao.maps.event.addListener(marker, 'click', function() {
	        	 	 overlay.setMap(null);
		             overlay = new kakao.maps.CustomOverlay({
		             content: contents[i].content,
		             position:  food_data[filter][i].latlng
		         });
		          overlay.setMap(map);
			});
	     } 
        }
        
        
        
        
        
        /* ------- 전체 식당 가져오는 함수 ------- */
		//문제 : '전체' 버튼 클릭하기 전에는 마커 클릭해도 오버레이 안떠
		 window.onload = function(){
			 var overlay = new kakao.maps.CustomOverlay({zIndex:1})
				// 카테고리별로 마커를 새로 찍기 위해 지도 다시 생성
				$('#map').empty();
			    map = new kakao.maps.Map(mapContainer, mapOption);
				
				//아까 만든 배열 길이만큼 반복
			    for (let i = 0; i < allMarkers.length; i ++) {
			        // 마커를 생성합니다
			        var marker = new kakao.maps.Marker({
			              map: map, 						// 마커를 표시할 지도
			              position: allMarkers[i].latlng 	// 마커의 위치
			                       
			      	});
			         /* 기존 코드 위치  */
				    /* 문제 : 다른 마커 클릭하하면 기존 오버레이 삭제되어야 하는데 그 기능 안됨 --> 중복되어 나오고 오버레이 하나 닫으면 다른것까지 다 닫힘*/
				        //마커 클릭하면 오버레이 생성	         
				        kakao.maps.event.addListener(marker, 'click', function() {
					         // 마커 위에 커스텀오버레이를 표시합니다
							// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
							 overlay.setMap(null);
					         overlay = new kakao.maps.CustomOverlay({
					             content: contents[i].content,
					             position: allMarkers[i].latlng
					         });
					         overlay.setMap(map);
						});
				     } 	
			}
		
        let all_f = function(){
        	
        	var overlay = new kakao.maps.CustomOverlay({zIndex:1})
	        <%for(i = 0; i < list.size(); i++){%>
 				var all = {content:'<div><%=list.get(i).getStoreName()%><div>',         
 				latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
 				allMarkers.push(all);
			    var con = {content : '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            <%=list.get(i).getStoreName()%>' +  
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="<%=list.get(i).getImageurl()%>" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis"><%=list.get(i).getStoreAddress()%></div>' + 
			            '                <div class="jibun ellipsis"><%=list.get(i).getFoodType()%></div>' + 
			            '                <div><a href="<%=list.get(i).getUrl()%>" target="_blank" class="link">매장상세</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>'
	            };
	            contents.push(con);
		  
		<%}%>		
		$('#map').empty();
	    map = new kakao.maps.Map(mapContainer, mapOption);
		
	    for (let i = 0; i < allMarkers.length; i ++) {
	        var marker = new kakao.maps.Marker({
	              map: map, 						
	              position: allMarkers[i].latlng 
	                       
	      	});
	        
       
		        kakao.maps.event.addListener(marker, 'click', function() {
		        	 overlay.setMap(null);
				     overlay = new kakao.maps.CustomOverlay({
			             content: contents[i].content,
			             position: allMarkers[i].latlng
			         });
		        	 overlay.setMap(map);
				});
		     } 
		} 

     
        /* ------ 검색 기능 ------ */
        // 키워드로 장소를 검색합니다
		searchPlaces();
		
		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {
		
		    var keyword = document.getElementById('keyword').value+" 광주";

		    //검색 필터링
			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
				
		}
        
		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			 if (status === kakao.maps.services.Status.OK) {	
        		// 검색 목록과 마커를 표출합니다
		        displayPlaces(data);					        
			}else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				 alert('검색 결과가 존재하지 않습니다.');
				 return;
			} else if (status === kakao.maps.services.Status.ERROR) {
				 alert('검색 결과 중 오류가 발생했습니다.');
				 return;
			}     
		}
		
		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

		    var listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new kakao.maps.LatLngBounds(), 
		    listStr = '';
		    
		    // 검색 결과 목록에 추가된 항목들을 제거합니다
		    removeAllChildNods(listEl);

		    // 지도에 표시되고 있는 마커를 제거합니다
		    removeMarker();
		    
		    for ( var i=0; i<places.length; i++ ) {
		    	<%for(int j=0; j<list.size(); j++){%>
			    	//=====================================================================================
			    	<%-- if('<%=list.get(j).getStoreAddress()%>'.indexOf(places[i].road_address_name) !== -1){ --%>
			    	if('<%=list.get(j).getStoreAddress()%>' === places[i].road_address_name){
			    		
			    			// 마커를 생성하고 지도에 표시합니다
			    	 
					        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
					            marker2 = addMarker(placePosition, i), 
					            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
		
					        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					        // LatLngBounds 객체에 좌표를 추가합니다
					        bounds.extend(placePosition);
					        // 마커와 검색결과 항목에 mouseover 했을때
					        // 해당 장소에 인포윈도우에 장소명을 표시합니다
					        // mouseout 했을 때는 인포윈도우를 닫습니다
					        (function(marker2, title) {
					    		<%for(i = 0; i < list.size(); i++){%>
					        	if (title==='<%=list.get(i).getStoreName()%>'){
							
									var content2 = '<div class="wrap">' + 
						            '    <div class="info">' + 
						            '        <div class="title">' + 
						                         title+ 
						            '        </div>' + 
						            '        <div class="body">' + 
						            '            <div class="img">' +
						            '                <img src="<%=list.get(i).getImageurl()%>" width="73" height="70">'  +
						            '            </div>' + 
						            '            <div class="desc">' + 
						            '                <div class="ellipsis"><%=list.get(i).getStoreAddress()%></div>' + 
						            '                <div class="jibun ellipsis"><%=list.get(i).getFoodType()%></div>' + 
						            '                <div class="alink"><a href="<%=list.get(i).getUrl()%>" target="_blank" class="link">매장상세</a></div>' + 
						            '            </div>' + 
						            '        </div>' + 
						            '    </div>' +    
						            '</div>';
						        }
				    	  <%}%>
					        	

				    	  
					            kakao.maps.event.addListener(marker2, 'click', function() {
					           

							 	 	overlay.setMap(null);
							        overlay = new kakao.maps.CustomOverlay({
								        content: content2,
								        position: placePosition
						         	});
					     		 	overlay.setMap(map);
					            });
					        
	
					        })(marker2, places[i].place_name);
		
					        fragment.appendChild(itemEl);
			    		} 
		    	<%}%>
			  
		    }
	        // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
		    listEl.appendChild(fragment);
		    menuEl.scrollTop = 0;

		    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		    map.setBounds(bounds);
		}
		
		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

		    var el = document.createElement('li'),
		    itemStr = '<span class="markerbg"></span>' +
		                '<div class="info">' +
		                '   <h5>' + places.place_name + '</h5>';

		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span>' +  places.address_name  + '</span>'; 
		    }
		                 
		      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
		                '</div>';           

		    el.innerHTML = itemStr;
		    el.className = 'item';

		    return el;
		}
		
		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		        imageSize = new kakao.maps.Size(24, 35),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(24, 35), // 스프라이트 이미지의 크기
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker2 = new kakao.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage 
		        });
		    marker2.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker2);  // 배열에 생성된 마커를 추가합니다
		    return marker2;

		}
		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		}


		
		 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
		    while (el.hasChildNodes()) {
		        el.removeChild (el.lastChild);
		    }
		}
		
		/* ------ 마커찍기 기능 ------ */
        /* 접속했을 때 모든 매장 마커 찍어주는 구간 */

        /* $(document).ready(()=>{all_f();}) */
            
         /* 카테고리별로 매장위치 확인할 수 있는 구간 */
         // id값을 각각의 input에 준다
         // 특정 id를 클릭하면 한식 매장 나오게 한다
        let alk = document.getElementById('allMarkers');
 		let kor = document.getElementById('korean');
 		let wes = document.getElementById('western');
 		let jap = document.getElementById('japanese');
 		let sch = document.getElementById('school');
 		let mid = document.getElementById('midnight');
 		let caf = document.getElementById('cafe');
 		
 	 	window.addEventListener('DOMContentLoaded', function() {
 			all_f();
 		})

  		alk.addEventListener('click', function(){
 			all_f();
 		});
 		
        kor.addEventListener('click', function(){
        	//korean_f();
        	filter_data(kor.value);
        });

         wes.addEventListener('click', function(){
        	filter_data(wes.value);
        });
        
         jap.addEventListener('click', function(){
        	filter_data(jap.value);
        });
        
        sch.addEventListener('click', function(){
        	filter_data(sch.value);
        });
        
        mid.addEventListener('click', function(){
        	filter_data(mid.value);
        });
        
        caf.addEventListener('click', function(){
        	filter_data(caf.value);
        });

      </script>

    </section>
            
   <!-- Back to top -->
   <div class="btn-back-to-top bg0-hov" id="myBtn">
      <span class="symbol-btn-back-to-top"> <i
         class="fa fa-angle-double-up" aria-hidden="true"></i>
      </span>
   </div>

   <!--===============================================================================================-->
   <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/animsition/js/animsition.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
      <script type="text/javascript"
         src="vendor/bootstrap/js/bootstrap.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/select2/select2.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/daterangepicker/moment.min.js"></script>
      <script type="text/javascript"
         src="vendor/daterangepicker/daterangepicker.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/slick/slick.min.js"></script>
      <script type="text/javascript" src="js/slick-custom.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
      <script type="text/javascript">
      $('.parallax100').parallax100();
      </script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/countdowntime/countdowntime.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/lightbox2/js/lightbox.min.js"></script>
      <!--===============================================================================================-->
      <script src="js/main.js"></script>
</body>
</html>