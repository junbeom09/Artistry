<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Sat Apr 20 2024 06:52:07 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="660fa367cce1a421bb169fcb" data-wf-site="65fa46eb9d90d967c69e39b1">
<head>
  <meta charset="utf-8">
  <title>Artist PortFolio Page</title>
  <meta content="Artist PortFolio Page" property="og:title">
  <meta content="Artist PortFolio Page" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="../css/normalize.css" rel="stylesheet" type="text/css">
  <link href="../css/webflow.css" rel="stylesheet" type="text/css">
  <link href="../css/scars-stupendous-site-9634ca.webflow.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Exo:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Oswald:200,300,400,500,600,700","Merriweather:300,300italic,400,400italic,700,700italic,900,900italic","PT Sans:400,400italic,700,700italic"]  }});</script>
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="../images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <link href="../images/webclip.png" rel="apple-touch-icon">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="body">
	<%
	Member loginMember = (Member) session.getAttribute("member");
	%>
<div class="main">
    <div class="navbar-logo-left-3">
      <div data-animation="default" data-collapse="none" data-duration="400" data-easing="ease" data-easing2="ease" role="banner" class="nevbar shadow-three w-nav">
        <a href="../index.html" class="navbar-brand-3 w-nav-brand"><img src="../images/Artistry-logo4.jpg" loading="lazy" width="240" height="100" alt="" class="image-2"></a>
        <div class="container-9">
          <div class="navbar-wrapper-3">
            <ul role="list" class="nav-list cate">
              <li class="nav-item hide">
                <div class="divider-vertical bg-dgray01"></div>
              </li>
            </ul>
            <div class="search-wrap">
              <div data-hover="false" data-delay="0" class="dropdown w-dropdown">
                <div class="dropdown-toggle w-dropdown-toggle"></div>
                <nav class="dropdown-list w-dropdown-list">
                  <a href="#" class="w-dropdown-link">Link 1</a>
                  <a href="#" class="w-dropdown-link">Link 2</a>
                  <a href="#" class="w-dropdown-link">Link 3</a>
                </nav>
              </div>
              <div class="form-search-wrap">
                <div class="form-search-container w-form">
                  <form id="wf-form-Search-Form" name="wf-form-Search-Form" data-name="Search Form" redirect="/research" data-redirect="/research" action="/research" method="get" class="form-search" data-wf-page-id="660fa367cce1a421bb169fcb" data-wf-element-id="39529a09-50bd-5c07-ff29-0fe03328b2c5"><input class="search-field w-input" maxlength="256" name="Search-2" data-name="Search 2" placeholder="Search on Artistry.." data-w-id="39529a09-50bd-5c07-ff29-0fe03328b2c6" type="text" id="Search">
                    <div class="search-icon-wrap">
                      <a href="#" target="_blank" class="link-block w-inline-block"><img src="../images/search.svg" loading="lazy" alt=""></a>
                    </div>
                  </form>
                  <div class="w-form-done">
                    <div>Thank you! Your submission has been received!</div>
                  </div>
                  <div class="w-form-fail">
                    <div>Oops! Something went wrong while submitting the form.</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
				<%
				if (loginMember != null) {
				%>
				<div>
					<a href="#"><%=loginMember.getMb_Nick()%>님</a>
				</div>
				<%
				}
				%>
        <ul role="list" class="nav-list right">
          <li class="nav-item hide">
            <div class="divider-vertical bg-dgray01"></div>
          </li>
          <li class="nav-item">
            <div data-hover="false" data-delay="0" class="navbar-dropdown w-dropdown">
              <div class="navbar-dropdown-toggle w-dropdown-toggle"><img width="24" height="24" alt="" src="../images/star.svg" loading="lazy"></div>
              <nav class="navbar-dropdown-list w-dropdown-list">
                <a href="#" class="navbar-dropdown-link top w-dropdown-link">Follow</a>
                <a href="#" class="navbar-dropdown-link w-dropdown-link">Follow</a>
                <a href="#" class="navbar-dropdown-link bottom w-dropdown-link">Follow</a>
              </nav>
            </div>
          </li>
          <li class="nav-item hide">
            <div class="divider-vertical bg-dgray01"></div>
          </li>
          <li class="nav-item">
            <div data-hover="false" data-delay="0" class="navbar-dropdown w-dropdown">
              <div class="navbar-dropdown-toggle w-dropdown-toggle"><img width="24" height="24" alt="" src="../images/user.svg" loading="lazy"></div>
							<%
							if (loginMember != null) {
							%>
	              <nav class="navbar-dropdown-list w-dropdown-list">
                <a href="../user-account.html" class="navbar-dropdown-link top w-dropdown-link">마이페이지</a>
                <a href="../log-in.html" class="navbar-dropdown-link w-dropdown-link">로그인</a>
                <a href="../sign-up.html" class="navbar-dropdown-link w-dropdown-link">회원가입</a><button class="navbar-dropdown-link bottom" data-wf-user-logout="로그아웃" data-wf-user-login="회원가입" type="button">로그아웃</button>
              </nav>
							<%
							} else {
							%>
							<nav class="navbar-dropdown-list w-dropdown-list">
								<a href="#" class="navbar-dropdown-link top w-dropdown-link">마이페이지</a>
								<a href="../log-in.jsp"
									class="navbar-dropdown-link w-dropdown-link">로그인</a> <a
									href="../sign-up.jsp"
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
    <div class="portfolio-container">
      <div class="banner-image-wrap"><img src="../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac.jpg" loading="lazy" sizes="100vw" srcset="../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac-p-500.jpg 500w, ../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac-p-800.jpg 800w, ../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac-p-1080.jpg 1080w, ../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac-p-1600.jpg 1600w, ../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac-p-2000.jpg 2000w, ../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac-p-2600.jpg 2600w, ../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac-p-3200.jpg 3200w, ../images/dd8d72e3-c412-4e9e-94c1-3e9fe23ccdac.jpg 3840w" alt="" class="image-10"></div>
      <div class="main-container">
        <div style="-webkit-transform:translate3d(0, -900px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, -900px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, -900px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, -900px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)" class="portfolio-profile-tab">
          <div class="portfolio-profile-img-wrap"><img src="../images/11.png" loading="lazy" sizes="(max-width: 1024px) 100vw, (max-width: 1919px) 1024px, 4vw" srcset="../images/11-p-500.png 500w, ../images/11-p-800.png 800w, ../images/11.png 1024w" alt="" class="profiel-img-con">
            <h1 class="heading-11">코끼리</h1>
            <div class="profile-insta-block">
              <h1 class="heading-12">INSTA@:</h1>
              <a href="#" class="insta-link-block w-inline-block"><img src="../images/insta_logo-removebg-preview.png" loading="lazy" sizes="(max-width: 666px) 100vw, (max-width: 1919px) 666px, 4vw" srcset="../images/insta_logo-removebg-preview-p-500.png 500w, ../images/insta_logo-removebg-preview.png 666w" alt="" class="insta-logo"></a>
            </div>
          </div>
          <div class="profile-button">
            <a href="#" class="request-button w-button">의뢰하기</a>
            <a href="#" class="follow-button w-button">팔로우+</a>
            <a href="#" class="follow-button setting-button w-button">포트폴리오 수정하기</a>
          </div>
          <div class="like-container"><img src="../images/Like_lofo-removebg.png" loading="lazy" width="512" height="512" alt="" srcset="../images/Like_lofo-removebg-p-500.png 500w, ../images/Like_lofo-removebg-p-800.png 800w, ../images/Like_lofo-removebg.png 1024w" sizes="(max-width: 767px) 100vw, (max-width: 1919px) 512px, 128px" class="like-img">
            <div class="like-count">0</div>
          </div>
        </div>
        <div class="container-wrap">
          <div class="portfolio-tab">
            <div class="portfolio-tab-container">
              <a data-w-id="3c63d0a9-d188-a90e-6059-a31e3e83735e" href="#" class="portfolio-tab-link-block w-inline-block">
                <div>포트폴리오</div>
              </a>
              <a data-w-id="f8257c14-e0ef-be89-1a8b-5e65d4d9ad8d" href="#" class="portfolio-tab-link-block w-inline-block">
                <div>아티스트 정보</div>
              </a>
              <a data-w-id="07b1a153-89b1-8e59-80a4-bf6c4a05d952" href="#" class="portfolio-tab-link-block w-inline-block">
                <div>리뷰</div>
              </a>
            </div>
          </div>
          <div style="display:block;opacity:0;-webkit-transform:translate3d(0, 215px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 215px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 215px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 215px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)" class="portfolio-artist-art">
            <div class="w-layout-grid artist-art-grid">
              <div id="w-node-_550a96a2-a744-3681-3a62-95b4ca1c003a-bb169fcb" class="artist-art-form">
                <div data-w-id="1cbd1ca6-35dd-5037-fb9c-405a15f6cf3f" class="artist-art"><img src="../images/1.png" loading="lazy" width="350" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 350px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-_7284db90-fad2-42fa-7acf-0393715b2119-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-be721359-9902-5f24-6045-371207c22bae-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-bfe6e6dc-ff34-3816-93d7-684d3b67776a-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-_084f14de-cbd7-e08d-4037-57470f9202ca-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-_3797369b-1964-6cc3-d0ef-f5d2a211e715-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-_70ab8d54-e120-e793-0488-02bf4f355917-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-_85126c62-31a9-e326-a7eb-3f54c7649ad0-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
              <div id="w-node-c768a1e9-0cc8-ef37-0a5a-6bbf2e0a07c5-bb169fcb" class="artist-art-form">
                <div class="artist-art"><img src="../images/1.png" loading="lazy" width="285" height="252" alt="" srcset="../images/1-p-500.png 500w, ../images/1-p-800.png 800w, ../images/1.png 1024w" sizes="(max-width: 479px) 100vw, (max-width: 1919px) 285px, 243.125px" class="artist-art-img"></div>
                <h1 class="artist-art-title">코끼리</h1>
              </div>
            </div>
          </div>
          <div id="Artist-infomation" style="display:none" class="portfolio-artist-infomation">
            <h1 class="portfolio-artist-infomation-title"><strong class="bold-text">15년 이상의 브랜드 전문가와 함께 하세요~</strong></h1>
            <p class="portfolio-artist-infomation-text">디자이너 gutta 공모전 수상 경력 사항<br><br>‍<br>Hi 서울 웹포스터 공모전 [수상 : 대상]09년 수산물 브랜드 대전 [수상 : 은상]<br>‍<br>제8회대한민국비쥬얼트랜드대전 [수상 : 특선]<br>제3회 Blue Leage 포트폴리오 대전 [수상 : 입선]<br>07년 Edtool 표지디자인 공모전 [수상 : 입상]<br>08년 UNICORN증보시스템 캐릭터 공모전 [수상 : 2위]<br>제44회 대한민국 디자인 전람회 [수상 : 입선]<br>10년 춘천월드레져총회 및 경기대회 캐릭터 공모전 [수상 : 입선]<br>14년 순천만 정원포스터 공모전 [수상 : 동상]<br>16년 담양대나무축제 포스터 [수상:대상]<br>‍<br><br>(자격사항)웹디자인 기능사 취득그래픽운용기능사 취득교원(실기교사) 자격증 취득브랜드컨설턴트 수료</p>
            <div class="information-stats">
              <h1 class="heading-7">판매량</h1>
              <div class="sales-volume"><img src="../images/shopping_bag_FILL0_wght400_GRAD0_opsz24.svg" loading="lazy" width="48" height="48" alt="" class="image-9">
                <h1>73</h1>
              </div>
            </div>
            <div class="artist-request-field-wrap">
              <h1 class="heading-9">의뢰 가능한 분야</h1>
              <div class="request-field-form">
                <div class="request-field-wrap">
                  <h3 class="request-field-text">일러스트</h3>
                </div>
                <div class="request-field-wrap">
                  <h3 class="request-field-text">캐릭터</h3>
                </div>
                <div class="request-field-wrap">
                  <h3 class="request-field-text">캐리커쳐</h3>
                </div>
              </div>
            </div>
          </div>
          <div style="display:none" class="portfolio-artist-review">
            <div class="artist-review-head">
              <h1 class="heading-10">총 리뷰 0개</h1>
            </div>
            <div class="review-writing-block w-form">
              <form id="email-form" name="email-form" data-name="Email Form" method="post" class="review-writing-form" data-wf-page-id="660fa367cce1a421bb169fcb" data-wf-element-id="de265365-044b-c91d-7432-08d6c918aa7e"><label for="field" class="field-label-4">리뷰 작성하기</label>
                <div class="review-text-area-wrapp"><textarea placeholder="" maxlength="5000" id="field" name="field" data-name="Field" class="review-text-area w-input"></textarea>
                  <div class="value-submit-wrap">
                    <h3>별점을 선택해주세요!</h3><select id="field-2" name="field-2" data-name="Field 2" class="select-field-3 w-select">
                      <option value="">0점</option>
                      <option value="First">1점</option>
                      <option value="Second">2점</option>
                      <option value="Third">3점</option>
                      <option value="Another option">4점</option>
                      <option value="Another option">5점</option>
                    </select><input type="submit" data-wait="Please wait..." class="submit-button-3 w-button" value="리뷰 저장하기!">
                  </div>
                </div>
              </form>
              <div class="w-form-done">
                <div>Thank you! Your submission has been received!</div>
              </div>
              <div class="w-form-fail">
                <div>Oops! Something went wrong while submitting the form.</div>
              </div>
            </div>
            <div class="w-layout-grid review-container">
              <div id="w-node-_8616ec42-16ad-8146-6b61-c251d1221daa-bb169fcb" class="review-block">
                <div class="review-image-block"><img src="../images/10.png" loading="lazy" width="512" height="Auto" alt="" srcset="../images/10-p-500.png 500w, ../images/10-p-800.png 800w, ../images/10.png 1024w" sizes="(max-width: 767px) 100vw, (max-width: 1919px) 512px, 14vw" class="review-image-block-img"></div>
                <div class="review-text-block">
                  <div class="review-value-wrap">
                    <div class="member-review-profile"><img src="../images/user.svg" loading="lazy" width="48" height="48" alt="" class="image-11"></div>
                    <div class="review-value-text">
                      <div class="review-text-up"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star">
                        <div class="review-star-text">5점</div>
                      </div>
                      <div class="review-member-id">
                        <a href="#" class="link-2"><strong>(주)인풀 - in pool</strong></a>
                      </div>
                    </div>
                  </div>
                  <div class="review-text-wrapper">
                    <p class="paragraph-6">사장님이 너무 꽃 그림을 잘그리셔서 행복했습니다 앞으로도 많은 꽃 그림으로 많은 사람들의 집에 꽃을 피워주셨으면 좋겠습니다</p>
                  </div>
                </div>
              </div>
              <div id="w-node-c470b5dd-b666-cfef-88d8-4f74deea6ba3-bb169fcb" class="review-block">
                <div class="review-image-block"><img src="../images/10.png" loading="lazy" width="512" sizes="(max-width: 767px) 100vw, (max-width: 1919px) 512px, 14vw" alt="" srcset="../images/10-p-500.png 500w, ../images/10-p-800.png 800w, ../images/10.png 1024w" class="review-image-block-img"></div>
                <div class="review-text-block">
                  <div class="review-value-wrap">
                    <div class="member-review-profile"><img src="../images/user.svg" loading="lazy" width="48" height="48" alt="" class="image-11"></div>
                    <div class="review-value-text">
                      <div class="review-text-up"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star"><img src="../images/star.svg" loading="lazy" width="37" height="37" alt="" class="review-star">
                        <div class="review-star-text">5점</div>
                      </div>
                      <div class="review-member-id">
                        <a href="#" class="link-2"><strong>(주)인풀 - in pool</strong></a>
                      </div>
                    </div>
                  </div>
                  <div class="review-text-wrapper">
                    <p class="paragraph-6">사장님이 너무 꽃 그림을 잘그리셔서 행복했습니다 앞으로도 많은 꽃 그림으로 많은 사람들의 집에 꽃을 피워주셨으면 좋겠습니다</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=65fa46eb9d90d967c69e39b1" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="../js/webflow.js" type="text/javascript"></script>
  <script>
$(document).ready(function() {
  var likeCount = parseInt($('.like-count').text());
  $('.like-img').click(function() {
    $.ajax({
      url: 'https://api.example.com/like', // 서버의 API 엔드포인트 URL로 대체해주세요.
      method: 'POST',
      data: { /* 필요한 데이터 전송 */ },
      success: function(response) {
        likeCount++;
        $('.like-count').text(likeCount);
      },
      error: function(xhr, status, error) {
        console.log('Error:', error);
      }
    });
  });
});
</script>
</body>
</html>