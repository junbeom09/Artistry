<%@page import="com.smhrd.model.GoogleUser"%>
<%@page import="com.smhrd.model.NaverUser"%>
<%@page import="com.smhrd.model.KakaoUser"%>
<%@page import="com.smhrd.model.Member"%>
<%@ page import="com.smhrd.controller.NaverLoginController"%>
<%@ page import="com.smhrd.controller.ApiExamMemberProfile"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String code = request.getParameter("code");
String state = request.getParameter("state");

if (code != null && state != null) {
	try {
		String accessToken = NaverLoginController.getAccessToken(code, state);
		ApiExamMemberProfile.ACCESS_TOKEN = accessToken;
		NaverUser naverUser = ApiExamMemberProfile.getUserProfile(request.getSession());
		request.getSession().setAttribute("naverUser", naverUser);
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>

<!DOCTYPE html>
<!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Fri Apr 19 2024 05:34:53 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="65fa46eb9d90d967c69e39b8"
	data-wf-site="65fa46eb9d90d967c69e39b1">
<head>
<meta charset="utf-8">
<title>Scar&#x27;s Stupendous Site</title>
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="Webflow" name="generator">
<link href="css/normalize.css" rel="stylesheet" type="text/css">
<link href="css/webflow.css" rel="stylesheet" type="text/css">
<link href="css/scars-stupendous-site-9634ca.webflow.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com" rel="preconnect">
<link href="https://fonts.gstatic.com" rel="preconnect"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"
	type="text/javascript"></script>
<script type="text/javascript">
	WebFont
			.load({
				google : {
					families : [
							"Exo:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic",
							"Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic",
							"Oswald:200,300,400,500,600,700",
							"Merriweather:300,300italic,400,400italic,700,700italic,900,900italic",
							"PT Sans:400,400italic,700,700italic" ]
				}
			});
</script>
<script type="text/javascript">
	!function(o, c) {
		var n = c.documentElement, t = " w-mod-";
		n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch
				&& c instanceof DocumentTouch)
				&& (n.className += t + "touch")
	}(window, document);
</script>
<link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="images/webclip.png" rel="apple-touch-icon">
<style>
a:-webkit-any-link {
	color: black;
	cursor: pointer;
	text-decoration: none;
}
</style>
</head>
<body class="body">

	<%
	String result = request.getParameter("result");

	if (result != null) {
		if (result.equals("success")) {
			// 비동기 alert 창 발동
			System.out.print("이건success");
	%>
	<script type="text/javascript">
		alert("회원가입에 성공하였습니다.")
	</script>
	<%
	} else {//비동기 alert창 발동
	System.out.print("이건fail");
	%>

	<script type="text/javascript">
		alert("회원가입에 실패하였습니다.")
	</script>

	<%
	}
	}
	%>

	<%
	Member loginMember = (Member) session.getAttribute("member");
	KakaoUser loginkakaoUser = (KakaoUser) session.getAttribute("kakaoUser");
	GoogleUser logingoogleUser = (GoogleUser) session.getAttribute("googleUser");
	NaverUser naverUser = (NaverUser) session.getAttribute("naverUser");
	%>
	<div class="main">
		<div class="navbar-logo-left-3">
			<div data-animation="default" data-collapse="none"
				data-duration="400" data-easing="ease" data-easing2="ease"
				role="banner" class="nevbar shadow-three w-nav">
				<a href="index.jsp" aria-current="page"
					class="navbar-brand-3 w-nav-brand w--current"><img
					src="images/Artistry-logo4.jpg" loading="lazy" width="240"
					height="100" alt="" class="image-2"></a>
				<div class="container-9">
					<div class="navbar-wrapper-3">
						<ul role="list" class="nav-list cate">
							<li class="nav-item hide">
								<div class="divider-vertical bg-dgray01"></div>
							</li>
						</ul>
						<div class="search-wrap">
							<div data-hover="false" data-delay="0"
								class="dropdown w-dropdown">
								<div class="dropdown-toggle w-dropdown-toggle"></div>
								<nav class="dropdown-list w-dropdown-list">
									<a href="#" class="w-dropdown-link">Link 1</a> <a href="#"
										class="w-dropdown-link">Link 2</a> <a href="#"
										class="w-dropdown-link">Link 3</a>
								</nav>
							</div>
							<div class="form-search-wrap">
								<div class="form-search-container w-form">
									<form id="wf-form-Search-Form" name="wf-form-Search-Form"
										data-name="Search Form" redirect="/research"
										data-redirect="/research"
										action="artist-portfolio/portfolio.jsp?keyWord=" method="get"
										class="form-search" data-wf-page-id="65fa46eb9d90d967c69e39b8"
										data-wf-element-id="39529a09-50bd-5c07-ff29-0fe03328b2c5">
										<input class="search-field w-input" maxlength="256"
											name="Search-2" data-name="Search 2"
											placeholder="Search on Artistry.."
											data-w-id="39529a09-50bd-5c07-ff29-0fe03328b2c6" type="text"
											id="Search">
										<div class="search-icon-wrap">
											<a href="#" target="_blank" class="link-block w-inline-block"><img
												src="images/search.svg" loading="lazy" alt=""></a>
										</div>
									</form>
									<div class="w-form-done">
										<div>Thank you! Your submission has been received!</div>
									</div>
									<div class="w-form-fail">
										<div>Oops! Something went wrong while submitting the
											form.</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				if (loginMember != null || loginkakaoUser != null || logingoogleUser != null || naverUser != null) {
				%>
				<%
				if (loginMember != null) {
				%>
				<%
				if (loginMember.getMb_Type().equals(true)) {
				%>
				<div>
					<h3>
						<a href="MyPage.jsp" style="margin-right: 45px;"><%=loginMember.getMb_Nick()%>님</a>
					</h3>
				</div>
				<%
				} else {
				%>
				<div>
					<h3>
						<a
							href="artist-portfolio/artist-portfolio-page.jsp?artistEmail=<%=loginMember.getMb_Email()%>"
							style="margin-right: 45px;"> <%=loginMember.getMb_Nick()%>님
						</a>
					</h3>
				</div>
				<%
				}
				%>
				<%
				} else if (loginkakaoUser != null) {
				%>
				<div>
					<h3>
						<a href="MyPage.jsp" style="margin-right: 45px;"><%=loginkakaoUser.getNickname()%>님</a>
					</h3>
				</div>
				<%
				} else if (logingoogleUser != null) {
				%>
				<div>
					<h3>
						<a href="MyPage.jsp" style="margin-right: 45px;"><%=logingoogleUser.getFullName()%>님</a>
					</h3>
				</div>
				<%
				} else if (naverUser != null) {
				%>
				<div>
					<h3>
						<a href="MyPage.jsp" style="margin-right: 45px;"><%=naverUser.getNickname()%>님</a>
					</h3>
				</div>
				<%
				}
				%>
				<%
				} else {
				%>
				<div>
					<h3>
						<a href="log-in.jsp" style="margin-right: 45px;">로그인을 해주세요.</a>
					</h3>
				</div>
				<%
				}
				%>
				<ul role="list" class="nav-list right">
					<li class="nav-item hide">
						<div class="divider-vertical bg-dgray01"></div>
					</li>

					<li class="nav-item hide">
						<div class="divider-vertical bg-dgray01"></div>
					</li>
					<li class="nav-item">
						<div data-hover="false" data-delay="0"
							class="navbar-dropdown w-dropdown">
							<div class="navbar-dropdown-toggle w-dropdown-toggle">
								<img width="24" height="24" alt="" src="images/user.svg"
									loading="lazy">
							</div>
							<%
							if (loginMember != null || loginkakaoUser != null || logingoogleUser != null || naverUser!= null) {
							%>
							<nav class="navbar-dropdown-list w-dropdown-list">
								<a href="MyPage.jsp"
									class="navbar-dropdown-link top w-dropdown-link">마이페이지</a> <a
									href="LogoutService"
									class="navbar-dropdown-link w-dropdown-link">로그아웃</a>
							</nav>
							<%
							} else {
							%>
							<nav class="navbar-dropdown-list w-dropdown-list">
								<a href="log-in.jsp"
									class="navbar-dropdown-link top w-dropdown-link">마이페이지</a> <a
									href="log-in.jsp" class="navbar-dropdown-link w-dropdown-link">로그인</a>
								<a href="sign-up.jsp"
									class="navbar-dropdown-link w-dropdown-link">회원가입</a>
							</nav>
							<%
							}
							%>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="hero-container">
			<div class="container">
				<div class="hero-content">
					<div class="flex-center-text">
						<div class="text-hidden">
							<div
								style="-webkit-transform: translate3d(0, -20%, 0) scale3d(1, 1, 1) rotateX(-126deg) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, -20%, 0) scale3d(1, 1, 1) rotateX(-126deg) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, -20%, 0) scale3d(1, 1, 1) rotateX(-126deg) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, -20%, 0) scale3d(1, 1, 1) rotateX(-126deg) rotateY(0) rotateZ(0) skew(0, 0); transform-style: preserve-3d; opacity: 0"
								class="animation-on-load-1">
								<div class="hero-text-1">
									<h1 class="hero-text">Artistry</h1>
								</div>
							</div>
						</div>
						<div class="hero-description-holder">
							<div
								style="-webkit-transform: translate3d(0, 35%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 35%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 35%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 35%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); opacity: 0.04"
								class="animation-on-load-2">
								<div class="text-block">

									<%
									if (loginMember != null) {
										System.out.println(loginMember.getMb_Profile_Img());
									%>
									<div class="text-span">
										<h1>
											&quot;<%=loginMember.getMb_Nick()%>님&quot; 의 예술, 세상과 연결되다
										</h1>
									</div>
									<br>&quot;
									<%
									} else {
									%>
									&quot; <span class="text-span">당신의 예술, 세상과 연결되다 </span>&quot;<br>&quot;
									<%
									}
									%>
									Connect Your Art to the World with Artistry &quot;
								</div>
								<div class="button-holder">
									<div data-w-id="d90ecd32-fcee-d920-ab75-b73cd84ef98a"
										class="slide-button-animation">
										<a
											style="-webkit-transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
											href="artist-portfolio/portfolio.jsp"
											class="button-2 _01 w-button">watch the picture</a>
										<link rel="prerender" href="/artist-portfolio/portfolio.jsp">
										<div
											style="-webkit-transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 0px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
											class="picture-button-wrap">
											<a href="artist-portfolio/portfolio.jsp"
												class="button-2 _02 w-button">watch the picture</a>
											<link rel="prerender" href="/artist-portfolio/portfolio">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="background-area">
			<div style="opacity: 0" class="picture-slap-area">
				<div class="feature-pictures-holder">
					<div class="features-hero-picture-wrapper">
						<div class="feature">
							<div
								style="-webkit-transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
								class="features-pictures _01">
								<div class="features-component-holder">
									<div class="feature-pictures">
										<div class="features-hero-pictures-holder">
											<div data-w-id="48c8c233-d18a-576d-b207-af087a324f32"
												class="features-hero-pictures-container">
												<img src="images/m22.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m22.jpg 500w, images/m22.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="7be5889f-de90-00fb-d307-ff4e396f077b"
												class="features-hero-pictures-container">
												<img src="images/m27.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m27.jpg 500w, images/m27.jpg 800w, images/m27.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="b0f1fe8b-2999-8bd4-5fd2-ad1cbeb6feb3"
												class="features-hero-pictures-container">
												<img src="images/m26.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m26.jpg 500w, images/m26.jpg 800w, images/m26.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="1e6771aa-e2c4-02b2-b683-39225848f965"
												class="features-hero-pictures-container">
												<img src="images/m30.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m30.jpg 500w, images/m30.jpg 800w, images/m30.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="6d3e8101-8129-c2b0-1dec-df01d64f4643"
												class="features-hero-pictures-container">
												<img src="images/m28.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m28.jpg 500w, images/m28.jpg 800w, images/m28.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="7202cd8e-05a6-13e6-4ed7-4669cd3576a8"
												class="features-hero-pictures-container">
												<img src="images/m28.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m28.jpg 500w, images/m28.jpg 800w, images/m28.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="51ce4570-014f-6c81-6fa6-0a8e85cc5402"
												class="features-hero-pictures-container">
												<img src="images/m14.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m14.jpg 500w, images/m14.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="c39a8a53-59aa-94b0-7cf4-dda74878fd90"
												class="features-hero-pictures-container">
												<img src="images/m29.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m29.jpg 500w, images/m29.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="16572fe6-7a73-522c-ec31-fe8550efbf8f"
												class="features-hero-pictures-container">
												<img src="images/m23.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m23.jpg 500w, images/m23.jpg 800w, images/m23.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="a2b8f412-c74e-7df2-ce8e-30f07c24ce0a"
												class="features-hero-pictures-container">
												<img src="images/m20.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m20.jpg 500w, images/m20.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="36685010-69a5-9f23-3028-eabdb4120a25"
												class="features-hero-pictures-container">
												<img src="images/m25.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m25.jpg 500w, images/m25.jpg 800w, images/m25.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="635ba4b1-590d-1cab-3bb2-732500bf2f0e"
												class="features-hero-pictures-container">
												<img src="images/m21.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m21.jpg 500w, images/m21.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="504049d0-238d-5275-9dac-a83347782863"
												class="features-hero-pictures-container">
												<img src="images/m24.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m24.jpg 500w, images/m24.jpg 800w, images/m24.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="12565182-a56c-6178-768c-9b636265177a"
												class="features-hero-pictures-container">
												<img src="images/m17.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m17.jpg 500w, images/m17.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="5746b0fe-ee3e-dda7-f1c2-e5968c2c3ea6"
												class="features-hero-pictures-container">
												<img src="images/m18.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m18.jpg 500w, images/m18.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
										</div>
										<div class="features-hero-pictures-holder">
											<div data-w-id="229193a3-86f4-5ecb-f5e9-b3f3d324b74f"
												class="features-hero-pictures-container">
												<img src="images/m19.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m19.jpg 500w, images/m19.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="7f4b6f16-ca97-192d-a41f-8e184122a5ab"
												class="features-hero-pictures-container">
												<img src="images/m6.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m6.jpg 500w, images/m6.jpg 800w, images/m6.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="fce9595e-e404-4cf0-c19c-c49dab1ee7df"
												class="features-hero-pictures-container">
												<img src="images/m7.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m7.jpg 500w, images/m7.jpg 800w, images/m7.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="0c1e4b6e-239a-75de-bad6-ae1b6a18fc42"
												class="features-hero-pictures-container">
												<img src="images/m4.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m4.jpg 500w, images/m4.jpg 800w, images/m4.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="b14731ed-cb0f-51aa-3396-4cdd57032ecb"
												class="features-hero-pictures-container">
												<img src="images/m2.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m2.jpg 500w, images/m2.jpg 800w, images/m2.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="d94fb22a-ecb3-599d-d621-542565054bc2"
												class="features-hero-pictures-container">
												<img src="images/m13.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m13.jpg 500w, images/m13.jpg 800w, images/m13.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="ff26d58d-6eeb-afc1-0849-ceda1c60897f"
												class="features-hero-pictures-container">
												<img src="images/m16.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m16.jpg 500w, images/m16.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="be1cffe3-020f-1716-2c47-52d140ec2e35"
												class="features-hero-pictures-container">
												<img src="images/m10.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m10.jpg 500w, images/m10.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="4ec77aa4-7f13-4dde-7705-c1de61fe7ca1"
												class="features-hero-pictures-container">
												<img src="images/m5.jpg" loading="lazy"
													sizes="(max-width: 600px) 100vw, (max-width: 1439px) 600px, (max-width: 1919px) 600.0000610351562px, 300px"
													srcset="images/m5.jpg 500w, images/m5.jpg 600w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="1bca8d8a-52a4-6b38-100f-f6836ef06240"
												class="features-hero-pictures-container">
												<img src="images/m11.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m11.jpg 500w, images/m11.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="4eacc5bf-f28c-a7ca-809e-8bf8fb0b8411"
												class="features-hero-pictures-container">
												<img src="images/m8.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m8.jpg 500w, images/m8.jpg 800w, images/m8.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="c72524fe-ac94-95ba-fe7d-753972b9ec0e"
												class="features-hero-pictures-container">
												<img src="images/m9.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m9.jpg 500w, images/m9.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="7c51638f-3287-7d5c-e665-5cd81a7d039f"
												class="features-hero-pictures-container">
												<img src="images/m15.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m15.jpg 500w, images/m15.jpg 800w, images/m15.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="164f4e21-4180-7354-81d9-89c24d8ce49b"
												class="features-hero-pictures-container">
												<img src="images/m12.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m12.jpg 500w, images/m12.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="d4540e34-db69-f923-2dcf-42cb6846aefa"
												class="features-hero-pictures-container">
												<img src="images/m1.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m1.jpg 500w, images/m1.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								style="-webkit-transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0%, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
								class="features-pictures _02">
								<div class="features-component-holder">
									<div class="feature-pictures">
										<div class="features-hero-pictures-holder">
											<div data-w-id="48c8c233-d18a-576d-b207-af087a324f32"
												class="features-hero-pictures-container">
												<img src="images/m22.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m22.jpg 500w, images/m22.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="7be5889f-de90-00fb-d307-ff4e396f077b"
												class="features-hero-pictures-container">
												<img src="images/m27.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m27.jpg 500w, images/m27.jpg 800w, images/m27.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="b0f1fe8b-2999-8bd4-5fd2-ad1cbeb6feb3"
												class="features-hero-pictures-container">
												<img src="images/m26.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m26.jpg 500w, images/m26.jpg 800w, images/m26.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="1e6771aa-e2c4-02b2-b683-39225848f965"
												class="features-hero-pictures-container">
												<img src="images/m30.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m30.jpg 500w, images/m30.jpg 800w, images/m30.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="6d3e8101-8129-c2b0-1dec-df01d64f4643"
												class="features-hero-pictures-container">
												<img src="images/m28.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m28.jpg 500w, images/m28.jpg 800w, images/m28.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="7202cd8e-05a6-13e6-4ed7-4669cd3576a8"
												class="features-hero-pictures-container">
												<img src="images/m28.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m28.jpg 500w, images/m28.jpg 800w, images/m28.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="51ce4570-014f-6c81-6fa6-0a8e85cc5402"
												class="features-hero-pictures-container">
												<img src="images/m14.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m14.jpg 500w, images/m14.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="c39a8a53-59aa-94b0-7cf4-dda74878fd90"
												class="features-hero-pictures-container">
												<img src="images/m29.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m29.jpg 500w, images/m29.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="16572fe6-7a73-522c-ec31-fe8550efbf8f"
												class="features-hero-pictures-container">
												<img src="images/m23.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m23.jpg 500w, images/m23.jpg 800w, images/m23.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="a2b8f412-c74e-7df2-ce8e-30f07c24ce0a"
												class="features-hero-pictures-container">
												<img src="images/m20.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m20.jpg 500w, images/m20.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="36685010-69a5-9f23-3028-eabdb4120a25"
												class="features-hero-pictures-container">
												<img src="images/m25.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m25.jpg 500w, images/m25.jpg 800w, images/m25.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="635ba4b1-590d-1cab-3bb2-732500bf2f0e"
												class="features-hero-pictures-container">
												<img src="images/m21.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m21.jpg 500w, images/m21.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="504049d0-238d-5275-9dac-a83347782863"
												class="features-hero-pictures-container">
												<img src="images/m24.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m24.jpg 500w, images/m24.jpg 800w, images/m24.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="12565182-a56c-6178-768c-9b636265177a"
												class="features-hero-pictures-container">
												<img src="images/m17.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m17.jpg 500w, images/m17.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="5746b0fe-ee3e-dda7-f1c2-e5968c2c3ea6"
												class="features-hero-pictures-container">
												<img src="images/m18.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m18.jpg 500w, images/m18.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
										</div>
										<div class="features-hero-pictures-holder">
											<div data-w-id="229193a3-86f4-5ecb-f5e9-b3f3d324b74f"
												class="features-hero-pictures-container">
												<img src="images/m19.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m19.jpg 500w, images/m19.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="7f4b6f16-ca97-192d-a41f-8e184122a5ab"
												class="features-hero-pictures-container">
												<img src="images/m6.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m6.jpg 500w, images/m6.jpg 800w, images/m6.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="fce9595e-e404-4cf0-c19c-c49dab1ee7df"
												class="features-hero-pictures-container">
												<img src="images/m7.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m7.jpg 500w, images/m7.jpg 800w, images/m7.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="0c1e4b6e-239a-75de-bad6-ae1b6a18fc42"
												class="features-hero-pictures-container">
												<img src="images/m4.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m4.jpg 500w, images/m4.jpg 800w, images/m4.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="b14731ed-cb0f-51aa-3396-4cdd57032ecb"
												class="features-hero-pictures-container">
												<img src="images/m2.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m2.jpg 500w, images/m2.jpg 800w, images/m2.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="d94fb22a-ecb3-599d-d621-542565054bc2"
												class="features-hero-pictures-container">
												<img src="images/m13.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m13.jpg 500w, images/m13.jpg 800w, images/m13.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="ff26d58d-6eeb-afc1-0849-ceda1c60897f"
												class="features-hero-pictures-container">
												<img src="images/m16.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m16.jpg 500w, images/m16.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="be1cffe3-020f-1716-2c47-52d140ec2e35"
												class="features-hero-pictures-container">
												<img src="images/m10.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m10.jpg 500w, images/m10.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="4ec77aa4-7f13-4dde-7705-c1de61fe7ca1"
												class="features-hero-pictures-container">
												<img src="images/m5.jpg" loading="lazy"
													sizes="(max-width: 600px) 100vw, (max-width: 1439px) 600px, (max-width: 1919px) 600.0000610351562px, 300px"
													srcset="images/m5.jpg 500w, images/m5.jpg 600w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="1bca8d8a-52a4-6b38-100f-f6836ef06240"
												class="features-hero-pictures-container">
												<img src="images/m11.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m11.jpg 500w, images/m11.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="4eacc5bf-f28c-a7ca-809e-8bf8fb0b8411"
												class="features-hero-pictures-container">
												<img src="images/m8.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m8.jpg 500w, images/m8.jpg 800w, images/m8.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="c72524fe-ac94-95ba-fe7d-753972b9ec0e"
												class="features-hero-pictures-container">
												<img src="images/m9.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m9.jpg 500w, images/m9.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="7c51638f-3287-7d5c-e665-5cd81a7d039f"
												class="features-hero-pictures-container">
												<img src="images/m15.jpg" loading="lazy"
													sizes="(max-width: 1080px) 100vw, (max-width: 1919px) 1080px, 300px"
													srcset="images/m15.jpg 500w, images/m15.jpg 800w, images/m15.jpg 1080w"
													alt="" class="features-hero-pictures">
											</div>
											<div data-w-id="164f4e21-4180-7354-81d9-89c24d8ce49b"
												class="features-hero-pictures-container">
												<img src="images/m12.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m12.jpg 500w, images/m12.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
											<div data-w-id="d4540e34-db69-f923-2dcf-42cb6846aefa"
												class="features-hero-pictures-container">
												<img src="images/m1.jpg" loading="lazy"
													sizes="(max-width: 767px) 100vw, (max-width: 1439px) 640.0078125px, (max-width: 1919px) 640.0078735351562px, 300px"
													srcset="images/m1.jpg 500w, images/m1.jpg 640w" alt=""
													class="features-hero-pictures">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section">
				<div class="access-features">
					<div class="text-container">
						<div class="access-wrap">
							<div class="access-gird-holder _01">
								<div class="access-gird">
									<div class="access-card">
										<div
											style="-webkit-transform: translate3d(65px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(-55deg) rotateZ(0) skew(0, 0); -moz-transform: translate3d(65px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(-55deg) rotateZ(0) skew(0, 0); -ms-transform: translate3d(65px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(-55deg) rotateZ(0) skew(0, 0); transform: translate3d(65px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(-55deg) rotateZ(0) skew(0, 0); opacity: 0; transform-style: preserve-3d"
											class="access-small-image-holder">
											<img src="images/Main-page--1_2.JPG" loading="lazy"
												sizes="(max-width: 1279px) 100vw, (max-width: 1919px) 1252.0078125px, 349.9921875px"
												srcset="images/Main-page--1_2.JPG 500w, images/Main-page--1_2.JPG 800w, images/Main-page--1_2.JPG 1080w, images/Main-page--1_2.JPG 1252w"
												alt="" class="access-small-image">
										</div>
										<div class="access-image-holder">
											<div data-w-id="c8f5e3d4-3f18-52e5-5bd3-e2ea6f0ab967"
												class="access-image-container">
												<div
													style="opacity: 0; -webkit-transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
													class="access-big-image-holder _01">
													<img src="images/Main-page-2.3.JPG" loading="lazy"
														width="780" height="512" alt="" class="access-big-image">
												</div>
											</div>
											<div class="access-background-holder _01">
												<img src="images/OrangeBG.jpg" loading="lazy"
													sizes="(max-width: 1279px) 100vw, (max-width: 1919px) 1102.0078125px, 529.8984375px"
													srcset="images/OrangeBG-p-500.jpg 500w, images/OrangeBG-p-800.jpg 800w, images/OrangeBG-p-1080.jpg 1080w, images/OrangeBG.jpg 1102w"
													alt="" class="access-background-image">
											</div>
										</div>
									</div>
									<div class="access-content">
										<div class="access-tag-holder">
											<div class="access-tag-container">
												<img src="images/Tag-Image1.svg" loading="lazy" alt="">
											</div>
											<div class="text-block-2">Review</div>
										</div>
										<div class="access-title-holder">
											<h2 data-w-id="6bcb4aed-1e83-1c42-e678-bab822d5d265"
												style="opacity: 0; -webkit-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
												class="heading-2 _01">리뷰를 작성해보세요!</h2>
										</div>
										<div class="access-paragraph-holder">
											<p
												style="opacity: 0; -webkit-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
												class="paragraph-3 _01">
												리뷰를 작성해서 의뢰를 받았던 아티스트에게 감사함을 표시해 보세요<br>아티스트 들에게 큰 힘이
												됩니다!<br>
											</p>
										</div>
										<div class="access-button-holder">
											<a data-w-id="c68a7a06-dd29-7cbe-c812-70820b1c28aa"
												style="opacity: 0; -webkit-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
												href="artist-portfolio/portfolio.jsp"
												class="button-3 _01 w-button">리뷰 작성하러 가기</a>
										</div>
									</div>
								</div>
							</div>
							<div class="access-gird-holder _02">
								<div class="access-gird">
									<div class="access-content">
										<div class="access-tag-holder">
											<div class="access-tag-container">
												<img src="images/Tag-Image2.svg" loading="lazy" alt="">
											</div>
											<div class="text-block-2">Request</div>
										</div>
										<div class="access-title-holder">
											<h2 data-w-id="0194e8da-ca50-e8e0-f454-6670992dea8f"
												style="opacity: 0; -webkit-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
												class="heading-2 _02">
												내게 맞는 아티스트에게 <br>의뢰하기 !
											</h2>
										</div>
										<div class="access-paragraph-holder">
											<p
												style="opacity: 0; -webkit-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
												class="paragraph-3 _02">
												본인의 스타일에 맞는 작가에게 직접 의뢰도 할 수 있고, <br>1:1 채팅을 통해서 원하는
												방향성을 잡을 수 도 있어요!<br>
											</p>
										</div>
										<div class="access-button-holder">
											<a
												style="opacity: 0; -webkit-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 40px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
												href="artist-portfolio/portfolio.jsp"
												class="button-3 _02 w-button">의뢰 하러 가기</a>
										</div>
									</div>
									<div class="access-card">
										<div class="access-image-holder">
											<div class="access-image-container _02">
												<div data-w-id="0194e8da-ca50-e8e0-f454-6670992dea84"
													style="-webkit-transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(177px, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); opacity: 0"
													class="access-big-image-holder _02">
													<img src="images/Main-page-3.JPG" loading="lazy" alt=""
														class="access-big-image">
												</div>
											</div>
											<div class="access-background-holder _02">
												<img src="images/Hero-BG.webp" loading="lazy"
													sizes="(max-width: 1919px) 100vw, 529.8984375px"
													srcset="images/Hero-BG-p-500.webp 500w, images/Hero-BG-p-800.webp 800w, images/Hero-BG-p-1080.webp 1080w, images/Hero-BG.webp 1600w"
													alt="" class="access-background-image">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="section">
			<div class="visable-section-holder">
				<div class="visable-container">
					<div class="visable-gird-holder">
						<div class="w-layout-grid visable-gird">
							<div id="w-node-_6d2feb28-1bd7-bedd-eeae-9c6304ddfeb2-c69e39b8"
								class="visable-image-content-wrapper">
								<div class="visable-image-content-holder">
									<img src="images/download_image_1714200764254.png"
										loading="lazy" width="Auto" height="500" alt=""
										srcset="images/download_image_1714200764254.png 500w, images/download_image_1714200764254.png 800w, images/download_image_1714200764254.png 828w"
										sizes="(max-width: 479px) 100vw, (max-width: 1919px) 412.3359375px, 1144.03125px"
										class="visable-image">
								</div>
								<div class="visable-image-content-holder">
									<img src="images/download_image_1714200786938.png"
										loading="lazy"
										sizes="(max-width: 479px) 100vw, (max-width: 1919px) 449.859375px, 1144.03125px"
										height="500" alt=""
										srcset="images/download_image_1714200786938.png 500w, images/download_image_1714200786938.png 800w, images/download_image_1714200786938.png 1080w, images/download_image_1714200786938.png 1364w"
										class="visable-image">
								</div>
								<div class="visable-image-content-holder">
									<img src="images/download_image_1714200819977.png"
										loading="lazy"
										sizes="(max-width: 479px) 100vw, (max-width: 1919px) 384.28125px, 1144.03125px"
										height="500" alt=""
										srcset="images/download_image_1714200819977.png 500w, images/download_image_1714200819977.png 800w, images/download_image_1714200819977.png 1080w, images/download_image_1714200819977.png 1571w"
										class="visable-image">
								</div>
							</div>
							<div id="w-node-d895e512-e60d-f2ab-0d94-d0e6e1a04169-c69e39b8"
								class="visable-content-wrapper">
								<div class="visable-content">
									<div>
										Artistry <br>‍
									</div>
									<div class="visable-heading-holder">
										<h2 class="heading-3">저희 기능들을 수행해보세요!!</h2>
										<p class="paragraph-7">
											1. 카테고리별 검색 기능<br>2. 포트폴리오 별 애니메이션<br>3. SNS 로그인 !
										</p>
									</div>
									<a href="artist-portfolio/portfolio.jsp"
										class="button-4 w-button">포트폴리오 보러가기!</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="footer-dark-4">
			<div class="footer-container">
				<a href="#" class="footer-brand-4 w-inline-block"><img
					src="images/Artistry-logo3.jpg" loading="lazy" width="185" alt=""
					class="footer-icon-img"></a>
				<div class="footer-wrapper-4">
					<div class="footer-content-4">
						<div id="w-node-_988edab2-af3d-f4e1-d904-273e08cd073c-08cd0736"
							class="footer-block-4">
							<div class="title-small-4">team Artistry</div>
							<a href="#" class="footer-link-4">이성도</a> <a href="#"
								class="footer-link-4">조준범</a> <a href="#" class="footer-link-4">기현수</a>
							<a href="#" class="footer-link-4">윤명상</a>
						</div>
						<div id="w-node-_988edab2-af3d-f4e1-d904-273e08cd0745-08cd0736"
							class="footer-block-4">
							<div class="title-small-4">EMAIL</div>
							<a href="https://mail.naver.com/v2/folders/0/all"
								class="footer-link-4">dltjdeh7745@naver.com</a> <a
								href="https://mail.naver.com/v2/folders/0/all"
								class="footer-link-4">qoddkfdl@gmail.com</a> <a
								href="https://mail.naver.com/v2/folders/0/all"
								class="footer-link-4">hyunsoo1753@gmail.com</a> <a
								href="https://mail.naver.com/v2/folders/0/all"
								class="footer-link-4">yunina456@naver.com</a>
						</div>
						<div id="w-node-_988edab2-af3d-f4e1-d904-273e08cd0750-08cd0736"
							class="footer-block-4">
							<div class="title-small-4">Address</div>
							<a href="#" class="footer-link-4">광주 동구 예술길 31-15 4층</a> <a
								href="#" class="footer-link-4">대의동 10-1</a> <a href="#"
								class="footer-link-4">61474</a>
							<div class="footer-social-block-4">
								<a
									href="https://map.naver.com/p/search/%EC%8A%A4%EB%A7%88%ED%8A%B8%EC%9D%B8%EC%9E%AC%EA%B0%9C%EB%B0%9C%EC%9B%90/place/1115170819?placePath=?entry=pll&amp;from=nx&amp;fromNxList=true&amp;searchType=place&amp;mapsvc=true&amp;maplocsvc=true&amp;agree=true&amp;c=18.01,0,0,0,dh"
									target="_blank" class="footer-social-link-4 w-inline-block"><img
									src="images/home_pin_FILL0_wght400_GRAD0_opsz24.svg"
									loading="lazy" alt=""></a> <a href="#"
									class="footer-social-link-4 w-inline-block"></a> <a href="#"
									class="footer-social-link-4 w-inline-block"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-divider-4"></div>
			<div class="footer-copyright-center-4">Copyright © 2024
				Artistry</div>
		</section>
	</div>
	<script
		src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=65fa46eb9d90d967c69e39b1"
		type="text/javascript"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script src="js/webflow.js" type="text/javascript"></script>
</body>
</html>