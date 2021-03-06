<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
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
		h3 {
			font-size: 1.5em;
			font-weight: 100;
			letter-spacing: 1em;
			text-shadow: 0px 0px 20px #1abb9c;
			color: white;
			display: inline-block;
		}

		.container333 {
			font-size: 16px;
			top: 50%;
			left: 35%;
			position: absolute;
			color: #FFFFFF;
			text-align: center;
		}

		.bar {
			height: .3em;
			width: 30em;
			border-radius: 10px;
			background: transparent;
			box-shadow: inset 0px 0px 8px #323232;
			overflow: hidden;
			padding: 5px;
		}

		.progress {
			height: inherit;
			border-radius: inherit;
			width: 0;
			background: white;
			animation: load 3s linear infinite;
			animation-delay: 2s;
		}

		@keyframes load {
			0% {
				width: 0%;
			}

			50% {
				width: 100%;
			}

			100% {
				width: 0%;
				float: right;
			}
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
				<a class="navbar-brand" href="http://localhost:8000/donghang">DongHang</a>
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
								<a href="http://localhost:8000/donghang/analysis" class="dropdown-item"><i
										class="ion-ios-apps mr-2"></i> 기본 분석 </a> <a
									href="http://localhost:8000/donghang/data" class="dropdown-item"><i
										class="ion-ios-document mr-2"></i>데이터 분석 </a>
							</div>

						</li>
						<li class="nav-item"><a href="http://localhost:8000/donghang/restAPI"
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

			<!-- coming soon -->
			<div class="container333">
				<h3><strong>Data Analysis</strong><br><br> coming soon</h3>
				<div class="bar">
					<div class="progress"></div>
				</div>
			</div>

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

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
				stroke="#F96D00" /></svg>
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