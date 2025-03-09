<%@page import="java.time.Period"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.Date, java.text.SimpleDateFormat, java.util.Locale, java.time.LocalDate, java.time.format.DateTimeFormatter"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet" href="resource/css/style.css">
</head>
<body>
	<%@include file="dbconn.jsp"%>
	<div class="app-container">
		<div class="app-header">
			<div class="app-header-left">
				<span class="app-icon"></span>
				<p class="app-name">TRAFFIC SOLUTION</p>
				<div class="search-wrapper">
					<input class="search-input" type="text" placeholder="Search">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2"
						class="feather feather-search" viewBox="0 0 24 24">
        <defs></defs>
        <circle cx="11" cy="11" r="8"></circle>
        <path d="M21 21l-4.35-4.35"></path>
        </svg>
				</div>
			</div>
			<div class="app-header-right">
				<button class="mode-switch" title="Switch Theme">
					<svg class="moon" fill="none" stroke="currentColor"
						stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						width="24" height="24" viewBox="0 0 24 24">
        <defs></defs>
        <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z"></path>
        </svg>
				</button>
				<button class="profile-btn">
					<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19"
						fill="currentColor" class="bi bi-person-circle"
						viewBox="0 0 19 19">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                <path fill-rule="evenodd"
							d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
              </svg>
					<span>ADMIN</span>
				</button>
			</div>
			<button class="messages-btn">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-message-circle">
        <path
						d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z" /></svg>
			</button>
		</div>
		<div class="app-content">
			<div class="app-sidebar">
				<%--왼쪽 사이드바 부분 아이콘/홈페이지, 진행중, 완료, 미결, 전체--%>
				<a href="" class="app-sidebar-link active"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-home"> <path
							d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z" /> <polyline
							points="9 22 9 12 15 12 15 22" /></svg>
				</a> <a href="" class="app-sidebar-link"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-square">
						<rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect></svg>
				</a> <a href="" class="app-sidebar-link"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-check-square">
						<polyline points="9 11 12 14 22 4"></polyline>
						<path
							d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
				</a> <a href="" class="app-sidebar-link"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-x-square">
						<rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
						<line x1="9" y1="9" x2="15" y2="15"></line>
						<line x1="15" y1="9" x2="9" y2="15"></line></svg>
				</a> <a href="" class="app-sidebar-link"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-folder">
						<path
							d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"></path></svg>
				</a>
			</div>
			<div class="projects-section">
				<div class="projects-section-header">
					<p>HOME</p>
					<%
					// 현재 날짜 가져오기
					LocalDate today = LocalDate.now();
					DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMMM dd, yyyy", Locale.ENGLISH); // "March 08, 2025" 형식
					String todayDate = today.format(formatter);
					PreparedStatement pstmt = null;
					ResultSet rs, rt = null;
					int count = 0;
					%>
					<p class="time"><%=todayDate%></p>
				</div>
				<div class="projects-section-line">
					<%--신고 접수 건수를 보여주는 부분--%>
					<div class="projects-status">
						<div class="item-status">
							<%
							String sql = "SELECT COUNT(*) FROM report INNER JOIN conclusion ON report.report_id = conclusion.report_id WHERE conclusion.result IS NULL;";
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery();

							if (rs.next()) {
								count = rs.getInt(1);
							}
							%>
							<span class="status-number"><%=count%></span> <span
								class="status-type">In Progress</span>
						</div>
						<div class="item-status">
							<%
							sql = "SELECT COUNT(*) FROM report INNER JOIN conclusion ON report.report_id = conclusion.report_id WHERE conclusion.result IS NOT NULL;";
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery();

							if (rs.next()) {
								count = rs.getInt(1);
							}
							%>
							<span class="status-number"><%=count%></span> <span
								class="status-type">Completed</span>
						</div>
						<div class="item-status">
							<%
							sql = "SELECT COUNT(*) FROM report";
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery();

							if (rs.next()) {
								count = rs.getInt(1);
							}
							%>
							<span class="status-number"><%=count%></span> <span
								class="status-type">Total</span>
						</div>
					</div>
					<div class="view-actions">
						<button class="view-btn list-view" title="List View">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-list">
        <line x1="8" y1="6" x2="21" y2="6" />
        <line x1="8" y1="12" x2="21" y2="12" />
        <line x1="8" y1="18" x2="21" y2="18" />
        <line x1="3" y1="6" x2="3.01" y2="6" />
        <line x1="3" y1="12" x2="3.01" y2="12" />
        <line x1="3" y1="18" x2="3.01" y2="18" /></svg>
						</button>
						<button class="view-btn grid-view active" title="Grid View">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-grid">
        <rect x="3" y="3" width="7" height="7" />
        <rect x="14" y="3" width="7" height="7" />
        <rect x="14" y="14" width="7" height="7" />
        <rect x="3" y="14" width="7" height="7" /></svg>
						</button>
					</div>
				</div>
				<div class="project-boxes jsGridView">
					<%
					int n = 0;
					String backgroud;
					String bar;
					try {
						sql = "SELECT * FROM report";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();

						while (rs.next()) {
							int reportId = rs.getInt("report_id");
							String region = rs.getString("region");
							String date = rs.getString("date");
							String title = rs.getString("title");
							String content = rs.getString("content");

							if (n % 6 == 0) {
						backgroud = "#fee4cb";
						bar = "#ff942e";
						n++;
							} else if (n % 6 == 1) {
						backgroud = "#e9e7fd";
						bar = "#4f3ff0";
						n++;
							} else if (n % 6 == 2) {
						backgroud = "#dbf6fd";
						bar = "#096c86";
						n++;
							} else if (n % 6 == 3) {
						backgroud = "#ffd3e2";
						bar = "#df3670";
						n++;
							} else if (n % 6 == 4) {
						backgroud = "#c8f7dc";
						bar = "#34c471";
						n++;
							} else {
						backgroud = "#d5deff";
						bar = "#4067f9";
						n = 0;
							}
					%>
					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: <%=backgroud%>;">
							<div class="project-box-header">
								<%
								LocalDate reportDate = LocalDate.parse(date, DateTimeFormatter.ofPattern("yyyy-MM-dd")); //<변경>예시 데이터(2일 전 날짜)
								String exDate = reportDate.format(formatter);
								%>
								<span><%=exDate%></span>
								<div class="more-wrapper">
									<%
									try {
										sql = "SELECT * FROM conclusion WHERE report_id = ?";
										pstmt = conn.prepareStatement(sql);
										pstmt.setInt(1, reportId);
										rt = pstmt.executeQuery();

										if (rt.next()) {
											String result = rt.getString("result");
											float accuracy = rt.getFloat("accuracy");
									%>
									<button class="project-btn-more">
										<%
										if (result.equals("승인")) {
										%>

										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check-circle">
											<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
											<polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
										<%
										} else if (result.equals("반려")) {
										%>

										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-x-circle">
											<circle cx="12" cy="12" r="10"></circle>
											<line x1="15" y1="9" x2="9" y2="15"></line>
											<line x1="9" y1="9" x2="15" y2="15"></line></svg>
										<%
										} else if (result.equals("미결")) {
										%>

										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-help-circle">
											<circle cx="12" cy="12" r="10"></circle>
											<path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path>
											<line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
										<%
										} else if (result.isEmpty()) {
										%>
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-circle">
											<circle cx="12" cy="12" r="10"></circle></svg>
										<%
										}
										%>
									</button>
								</div>
							</div>
							<div class="project-box-content-header">
								<p class="box-content-header"><%=title%></p>
								<p class="box-content-subheader"><%=content%></p>
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header">Accuracy</p>
								<div class="box-progress-bar">
									<span class="box-progress"
										style="width: <%=(int) (accuracy * 100)%>%; background-color: <%=bar%>"></span>
								</div>
								<p class="box-progress-percentage"><%=(int) (accuracy * 100)%>%
								</p>
							</div>
							<%
							}
							} catch (SQLException e) {
							e.printStackTrace();
							} finally {
							if (rt != null)
							rt.close();
							}
							%>
							<div class="project-box-footer">
								<%
								Period period = Period.between(reportDate, today); //<변경> 예시 데이터
								int daysBetween = period.getDays();
								%>
								<div class="days-left" style="color: <%=bar%>;"><%=daysBetween%>
									일전
								</div>
							</div>
						</div>
					</div>
					<%
					}
					} catch (SQLException e) {
					e.printStackTrace();
					} finally {
					if (rs != null)
					rs.close();
					if (pstmt != null)
					pstmt.close();
					}
					%>
				</div>
			</div>
			<div class="messages-section">
				<button class="messages-close">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-x-circle">
        <circle cx="12" cy="12" r="10" />
        <line x1="15" y1="9" x2="9" y2="15" />
        <line x1="9" y1="9" x2="15" y2="15" /></svg>
				</button>
				<div class="projects-section-header">
					<p>공지사항</p>
				</div>
				<div class="messages">
					<div class="message-box">
						<div class="message-content">
							<div class="message-header">
								<div class="title">수원시 전동킥보드 안전규제 관련 업데이트</div>
								<div class="star-checkbox">
									<input type="checkbox" id="star-1"> <label for="star-1">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-star">
        <polygon
												points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" /></svg>
									</label>
								</div>
							</div>
							<p class="message-line">최근 증가하는 전동킥보드 사고를 예방하기 위해...</p>
							<p class="message-line time">Mar, 01</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script src="resource/js/main.js"></script>

</body>
</html>
