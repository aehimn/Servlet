<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종합문제 2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    Map<String, Object> music = musicList.get(0);
    String search = request.getParameter("search");
    boolean searchResult = false;
    for(Map<String, Object> forMusic : musicList) {
    	if(forMusic.get("title").equals(search)) {
    		searchResult = true;
    		music = forMusic;
    		break;
    	}
    }
    String stringId = request.getParameter("id");
    boolean error = false;
    if(stringId == null && !(searchResult)) {
    	error = true;
    } else if(stringId != null) {
	    int id = Integer.parseInt(stringId);
	    music = musicList.get(id - 1);    	
    }
%>
	<div id="wrap">
		<form method="get" action="/jsp/test/test10-detail.jsp">
			<header class="d-flex">
				<div class="logo d-flex align-items-center">
					<h1 class="text-success">Melong</h1>
				</div>
				<div class="search d-flex align-items-center">
					<div class="input-group col-5">
						<input type="text" class="form-control" name="search">
						<div class="input-group-append">
							<button class="btn btn-info" type="submit">검색</button>
						</div>
					</div>
				</div>
			</header>
		</header>
		<nav class="main-menu">
			<ul class="nav font-weight-bold">
				<li class="nav-item"><a class="nav-link text-dark" href="#">멜롱차트</a>
				<li class="nav-item"><a class="nav-link text-dark" href="#">최신음악</a>
				<li class="nav-item"><a class="nav-link text-dark" href="#">장르음악</a>
				<li class="nav-item"><a class="nav-link text-dark" href="#">멜롱DJ</a>
				<li class="nav-item"><a class="nav-link text-dark" href="#">뮤직어워드</a>
			</ul>
		</nav>
		<% if(!(error)) { %>
		<section class="contents">
			<h3>곡 정보</h3>
			<div class="artist d-flex border border-success p-3">
				<div>
					<img width="200" src="<%= music.get("thumbnail") %>">
				</div>
				<div class="ml-3">
					<div class="display-4"><%= music.get("title") %></div>
					<div class="text-success font-weight-bold mt-1"><%= music.get("singer") %></div>
					<div class="d-flex small mt-2">
						<div>
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
						</div>
						<div class="ml-3">
							<div><%= music.get("album") %></div>
							<div><%= (int)music.get("time") / 60 %> : <%= (int)music.get("time") % 60 %></div>
							<div><%= music.get("composer") %></div>
							<div><%= music.get("lyricist") %></div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="lyrics mt-4">
				<h3>가사</h3>
				<hr>
				<div>가사 정보 없음</div>
				<br>
			</div>
		</section>
		<% } else { %>
		<section class="contents">
			<h3>해당 곡은 존재하지 않습니다.</h3>
		</section>
		<% } %>
		<footer>
			<hr>
			<div class="text-secondary">Copyright 2025. melong All Rights Reserved.</div>
		</footer>
	</div>
</body>
</html>