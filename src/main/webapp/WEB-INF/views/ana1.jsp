<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
	<title>우리동네 행정처분정보-동행</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap" rel="stylesheet"
		type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Prata&display=swap" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css"
		type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css"
		type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css"
		type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nouislider.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


	<style>
		/* category */
		.coverbutton {
			padding-top: 100px;
		}

		@import 'https://fonts.googleapis.com/css?family=Comfortaa:300,400,700&subset=cyrillic,cyrillic-ext,latin-ext';

		.gucategory {
			color: #454545;
			background: transparent;
			border-width: 2px;
			border-style: solid;
			border-color: #454545;
			position: relative;
			margin: 1em;
			display: inline-block;
			padding: 0.5em 1em;
			transition: all 0.3s ease-in-out;
			text-align: center;
			font-family: comfortaa;
			font-weight: bold
		}

		.gucategory:before,
		.gucategory:after {
			content: '';
			display: block;
			position: absolute;
			border-color: #454545;
			box-sizing: border-box;
			border-style: solid;
			width: 1em;
			height: 1em;
			transition: all 0.3s ease-in-out
		}

		.gucategory:before {
			top: -6px;
			left: -6px;
			border-width: 2px 0 0 2px;
			z-index: 5;
		}

		.gucategory:after {
			bottom: -6px;
			right: -6px;
			border-width: 0 2px 2px 0;
		}

		.gucategory:hover:before,
		.gucategory:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #fff
		}

		.gucategory:hover {
			color: #353535;
			background-color: #fff;
			border-color: #fff
		}

		.panel {
			/* max-width:960px */

			text-align: center;
			position: relative;
			margin: auto;
		}


		.pink button {
			color: #eb1777;
			border-color: #eb1777
		}

		.pink button:before,
		.pink button:after {
			border-color: #eb1777
		}

		.pink button:hover:before,
		.pink button:hover:after {
			border-color: #eb1777;
		}

		.pink button:hover {
			color: #fff;
			background-color: #eb1777;
			border-color: #eb1777;
		}

		.pink .panel {
			/* max-width:960px */

			text-align: center;
			position: relative;
			margin: auto;
		}


		.blue button {
			color: #3bb4e5;
			border-color: #3bb4e5
		}

		.blue button:before,
		.blue button:after {
			border-color: #3bb4e5
		}

		.blue button:hover:before,
		.blue button:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #3bb4e5;
			transform: rotateY(180deg)
		}

		.blue button:hover {
			color: #3bb4e5;
			background-color: transparent;
			border-color: #3bb4e5
		}

		.blue .panel {
			/* max-width:960px; */
			text-align: center;
			position: relative;
			margin: auto;
		}

		.borderless button {
			border-color: rgba(0, 0, 0, 0);
			color: #999
		}

		.borderless button:hover {
			border-color: #353535;
			background-color: transparent;
			color: #353535
		}

		.borderless button:before,
		.borderless button:after {
			border-color: transparent;
		}

		.borderless button:hover:before,
		.borderless button:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #353535
		}

		.bw button {
			color: #fff;
			border-color: #fff;
			text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
			box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.1) inset
		}

		.bw button:before,
		.bw button:after {
			border-color: #fff
		}

		.bw button:hover:before,
		.bw button:hover:after {
			width: calc(100% + 12px);
			height: calc(100% + 12px);
			border-color: #353535;
		}

		.bw button:hover {
			color: #fff;
			background-color: #353535;
			border-color: #353535
		}

		.blue .panel {
			/* max-width:960px */

			text-align: center;
			position: relative;
			margin: auto;
		}

		/* graph section */
		div#carousel {
			perspective: 1200px;
			background: #3399ff;
			padding-top: 5%;
			font-size: 0;
			/* margin-bottom: 3rem;  */
			overflow: hidden;
		}

		figure#spinner {
			transform-style: preserve-3d;
			height: 450px;
			/* 300 */
			transform-origin: 50% 50% -500px;
			transition: 1s;
		}

		figure#spinner img {
			width: 40%;
			max-width: 425px;
			position: absolute;
			left: 30%;
			transform-origin: 50% 50% -500px;
			outline: 1px solid transparent;
		}

		/* figure#spinner img:nth-child(1) { transform:rotateY(0deg); 
}
figure#spinner img:nth-child(2) { transform: rotateY(-45deg); }
figure#spinner img:nth-child(3) { transform: rotateY(-90deg); }
figure#spinner img:nth-child(4) { transform: rotateY(-135deg); }
figure#spinner img:nth-child(5){ transform: rotateY(-180deg); }
figure#spinner img:nth-child(6){ transform: rotateY(-225deg); }
figure#spinner img:nth-child(7){ transform: rotateY(-270deg); }
figure#spinner img:nth-child(8){ transform: rotateY(-315deg); } */

		figure#spinner img:nth-child(1) {
			transform: rotateY(0deg);
		}

		figure#spinner img:nth-child(2) {
			transform: rotateY(-60deg);
		}

		figure#spinner img:nth-child(3) {
			transform: rotateY(-120deg);
		}

		figure#spinner img:nth-child(4) {
			transform: rotateY(-180deg);
		}

		figure#spinner img:nth-child(5) {
			transform: rotateY(-240deg);
		}

		figure#spinner img:nth-child(6) {
			transform: rotateY(-300deg);
		}

		div#carousel~span {
			color: #fff;
			margin: 5%;
			display: inline-block;
			text-decoration: none;
			font-size: 2rem;
			transition: 0.6s color;
			position: relative;
			margin-top: -6rem;
			border-bottom: none;
			line-height: 0;
		}

		div#carousel~span:hover {
			color: #888;
			cursor: pointer;
		}

		.search {
			width: 100%;
			position: relative;
			display: flex;
			margin-top: 25px;
		}

		#searchform {
			width: 100%;
			position: relative;
			display: flex;
		}

		.searchTerm {
			width: 100%;
			border: 3px solid #00B4CC;
			border-right: none;
			padding: 5px;
			height: 50px;
			border-radius: 5px 0 0 5px;
			outline: none;
			color: #9DBFAF;
		}

		.searchTerm:focus {
			color: #00B4CC;
		}

		.searchButton {
			width: 50px;
			/* 40 */
			height: 50px;
			/* 36 */
			border: 1px solid #00B4CC;
			background: #00B4CC;
			text-align: center;
			color: #fff;
			border-radius: 0 5px 5px 0;
			cursor: pointer;
			font-size: 15px;
		}

		.wrap {
			width: 30%;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}

		#wordcloud {
			width: 100%;
			height: 85%
		}

		.wrap {
			width: 30%;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}
	</style>

</head>

<body>
	<div class="main-section">
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="/donghang">DongHang</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
					aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<!-- 12시 방향 검색 창 -->
					<div class="wrap">
						<div class="search">

							<form action="search" method="GET" id="searchform">
								<input type="text" id="name" name="keyword" class="searchTerm"
									placeholder="업소명을 입력해주세요.">
								<button type="submit" class="searchButton">
									<!-- <i class="fa fa-search"></i> -->검색
								</button>
							</form>
						</div>
					</div>

					<ul class="navbar-nav ml-auto">
						<li class="dropdown nav-item"><a href="#"
								class="dropdown-toggle nav-link icon d-flex align-items-center" data-toggle="dropdown">
								<i class="ion-ios-apps mr-2"></i> 분 석
								<b class="caret"></b>
							</a>
							<div class="dropdown-menu dropdown-menu-left">
								<a href="/donghang/analysis" class="dropdown-item"><i class="ion-ios-apps mr-2"></i> 기본
									분석 </a> <a href="/donghang/data" class="dropdown-item"><i
										class="ion-ios-document mr-2"></i>데이터 분석 </a>
							</div>

						</li>
						<li class="nav-item"><a href="/donghang/restAPI"
								class="nav-link icon d-flex align-items-center"><i
									class="ion-ios-cloud-download mr-2"></i> Rest API</a></li>
						<!--  <li class="nav-item"><a href="#" class="nav-link icon d-flex align-items-center"><i class="ion-logo-facebook"></i></a></li>
             <li class="nav-item"><a href="#" class="nav-link icon d-flex align-items-center"><i class="ion-logo-twitter"></i></a></li>
             <li class="nav-item"><a href="#" class="nav-link icon d-flex align-items-center"><i class="ion-logo-instagram"></i></a></li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END nav -->

		<section class="hero-wrap js-fullheight">

			<!-- 카테고리 추가 -->
			<div class="coverbutton">
				<div class="panel">
					<button class="gucategory">전 체</button>
					<button class="gucategory" onClick="location.href='/donghang/closerate'">폐업률 랭킹</button>
				</div>
			</div>
			
			<br>
			<br>
			<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 구별 업소 비율. </h2>
			<!-- graph section -->
			<div id="carousel">

				<figure id="spinner">
					<img src="resources/images/gu_upso.png" style="width: 425; height: 425;">
					<img src="resources/images/gu_upcob.png" style="width: 425; height: 425;">
					<img src="resources/images/gu_upsopunish.png" style="width: 425; height: 425;">
					<img src="resources/images/temper.png" style="width: 425; height: 425;">
					<img src="resources/images/gukeptvia.png" style="width: 425; height: 425;">
					<img src="resources/images/DISPO_CTN.png" style="width: 425; height: 425;">
				</figure>

				<span style="float:left; font-size: 60px;" class="ss-icon" onclick="galleryspin('-')">&lt;</span>
				<span style="float:right; font-size: 60px;" class="ss-icon" onclick="galleryspin('')">&gt;</span>
				<script>
					var flamenum = 0;
					var angle = 0;
					function galleryspin(sign) {
						spinner = document.querySelector("#spinner");
						flame = document.getElementById('iamflame');
						imgtitle = document.getElementById('imgtitle');
						htmltitle = document.getElementById('htmltitle');
						if (!sign) {
							angle = angle + 60;
							console.log(flamenum);
							flamenum = (flamenum + 1) % 6;
							console.log(flamenum);
						} else {
							angle = angle - 60;
							console.log(flamenum);
							flamenum = flamenum - 1;

							if (flamenum < 0) {
								flamenum = 5;
							}
							console.log(flamenum);
						}		/* +45 -45 */
						console.log(flamenum);
						if (flamenum == 0) {
							flame.innerHTML = "<iframe  src='resources/analview/gucobresult.html' style='width : 800px; height : 500px'></iframe>";
							imgtitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 구별 업소 갯수. </h2>';
							htmltitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 구별 업종 비율 </h2>';
						}
						else if (flamenum == 1) {
							flame.innerHTML = "<iframe  src='resources/analview/gu_upcob.html' style='width : 800px; height : 500px'></iframe>";
							imgtitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 구별 일반 음식점 갯수. </h2>';
							htmltitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 구별 일반 음식점 비율 </h2>';
						}
						else if (flamenum == 2) {
							flame.innerHTML = "<iframe  src='resources/analview/gu_upcob.html' style='width : 800px; height : 500px'></iframe>";
							imgtitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 구별 일반 음식점 행청처분 갯수. </h2>';
							htmltitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 구별 일반 음식점 행청처분 갯수. </h2>';
						}
						else if (flamenum == 3) {
							flame.innerHTML = "<iframe  src='resources/analview/gucurrupso.html' style='width : 800px; height : 500px'></iframe>";
							imgtitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 최근 10년 동안 영업 중인 가게 수와 창업률 </h2>';
							htmltitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 최근 10년 간의 일반 음식점 창업수와, 폐업수, 창업률 대비 폐업률 </h2>';
						}
						else if (flamenum == 4) {
							flame.innerHTML = "<iframe  src='resources/analview/guFineupso.html' style='width : 600px; height : 375px'></iframe>"
								+ "<iframe  src='resources/analview/gususpensionupso.html' style='width : 600px; height : 375px'></iframe>";
								imgtitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 행정 처분 횟수당 유지률. </h2>';
								htmltitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 과징금과 영업 정치를 행정 처분 횟수당 유지률. </h2>';
						}
						else if (flamenum == 5) {
							flame.innerHTML = "<iframe  src='resources/analview/DISPO_cnt_line.html' style='width : 800px; height : 500px'></iframe>";
							imgtitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 서울시 조치된 행정 처분의 갯수. </h2>';
							htmltitle.innerHTML = '<h2 id = "imgtitle" style = "color: wheat; text-align: center;"> 처분 횟수 별 업소 갯수 </h2>';
						}
						spinner.setAttribute("style", "-webkit-transform: rotateY(" + angle + "deg); -moz-transform: rotateY(" + angle + "deg); transform: rotateY(" + angle + "deg);");
					}
				</script>
			</div>
			
			</br>
			<h2 id = "htmltitle" style = "color: wheat; text-align: center;"> 구별 업종 비율. </h2>
			</br>

			<p align="middle" id="iamflame">
				<iframe src="resources/analview/gucobresult.html" style="width : 800px; height : 500px">
				</iframe>
			</p>

			<!--
				<iframe src="resources/analview/gu_upcob.html" title="W3Schools Free Online Web Tutorials" style="width : 800px; height : 500px">
				</iframe>
				<iframe src="resources/analview/gu_upcob.html" title="W3Schools Free Online Web Tutorials" style="width : 800px; height : 500px">
				</iframe>
				<iframe src="resources/analview/gucurrupso.html" title="W3Schools Free Online Web Tutorials" style="width : 800px; height : 500px">
				</iframe>
				-->

			<!-- 
				<iframe src="resources/analview/gucurrupso.html" title="W3Schools Free Online Web Tutorials" style="width : 800px; height : 500px">
				</iframe>
				
				 -->

			<script type="text/javascript">
				var alpha = 0;
			</script>


		</section>

		<footer class="ftco-section ftco-section-2">
			<div class="col-md-12 text-center">
				<p class="mb-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					presented by 동행 (
					<!-- <i class="icon-heart" aria-hidden="true"></i> -->
					<a href="https://github.com/Alphanewbie" target="_blank">찬 우</a>,
					<a href="https://github.com/Sohottoday" target="_blank">성 연</a>,
					<a href="https://github.com/soykim-snail" target="_blank">소 연</a>)
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</footer>

	</div>

	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/popper.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.waypoints.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.stellar.min.js" />"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value="/resources/js/aos.js" />"></script>

	<script src="<c:url value="/resources/js/nouislider.min.js" />"></script>
	<script src="<c:url value="/resources/js/moment-with-locales.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<script>
		function simularsearch(value) {
			var req = new XMLHttpRequest();
			//var result = document.getElementById("result");
			req.onreadystatechange = function () {
				//alert("req.readyState : "+req.readyState);		
				if (req.status == 200 && req.readyState == 4)
					// 200이면 요청이 성공적으로 왔을 때, 4는 요청이 전부 왔을때
					//result.innerHTML += req.responseText;
					console.log(req.responseText)
			}
			req.open("GET", "simularsearch?keyword=" + value, true);
			// 요청을 어떤 형식으로 받을 것인지
			req.send();
			// 요청을 보낸다
		}

		$(function () { //화면 다 뜨면 시작
			$("#name").autocomplete({
				source: function (request, response) {
					var value = $('#name').val()
					$.ajax({
						type: 'get',
						url: "simularsearch?keyword=" + value,
						dataType: "json",
						//data: {"param":"param"},
						success: function (data) {
							//서버에서 json 데이터 response 후 목록에 추가
							response($.map(data, function (item) { //json[i] 번째 에 있는게 item 임.
								console.log(item)
								return {
									label: item,
									value: item
								}
							}));
						}
					});
				}, // source 는 자동 완성 대상
				select: function (event, ui) { //아이템 선택시
					console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
					console.log(ui.item.label); //김치 볶음밥label
					console.log(ui.item.value); //김치 볶음밥
					console.log(ui.item.test); //김치 볶음밥test
				},
				focus: function (event, ui) { //포커스 가면
					return false;//한글 에러 잡기용도로 사용됨
				},
				minLength: 2,// 최소 글자수
				autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
				classes: { //잘 모르겠음
					"ui-autocomplete": "highlight"
				},
				delay: 500, //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
				//	            disabled: true, //자동완성 기능 끄기
				position: {
					my: "right top",
					at: "right bottom"
				}, //잘 모르겠음
				close: function (event) { //자동완성창 닫아질때 호출
					console.log(event);
				}
			});
		});
	</script>
</body>

</html>