<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>  
    
<div class="content">
	<%--아이유 가수 정보  --%>
	<section class="up">
		<div  class="border border-success d-flex">
			<div>
				<img src="<%=artistInfo.get("photo")%>" width="150" alt="아이유" class="m-3">
			</div>
			<div class="m-3">
				<h3><b><%=artistInfo.get("name")%></b></h3>
				<h5><%=artistInfo.get("agency")%></h5>
				<h5><%=artistInfo.get("debute")%> 데뷔</h5>
			</div>
		</div>
	</section>
	<section class="down">
		<h4 class="pt-3 ml-2"><b>곡 목록</b></h4>
		<table class="table text-center">
			<thead>
				<tr class="row">
					<th class="col-2"><b>no</b></td>
					<th class="col-3"><b>제목</b></td>
					<th class="col-7"><b>앨범</b></td>
				</tr>
			</thead>
			<tbody>
				<%
				 Iterator<Map<String, Object>> iter = musicList.iterator();
				 	while (iter.hasNext())	{
				 		Map<String, Object> music = iter.next();
				%>
				<tr class="row">
					<td class="col-2"><%=music.get("id") %></td>
					<td class="col-3"><a href="/lesson03/quiz02/info_layout.jsp?id=<%=music.get("id")%>" class="text-decoration-none"><%=music.get("title") %></a></td>
					<td class="col-7"><%=music.get("album") %></td>
				</tr>
				<%
				 	}
				%>
			</tbody>
		</table>
	</section>
</div>











