<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-user-manage.css" />
<title>관리자 회원 관리</title>
</head>
<body>
<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">관리자 마이페이지 / 회원관리</h2>
				
				<div id="user-info">
					<h3>회원 정보</h3>
					<div id="search">
						<input type="text" placeholder="검색어를 입력하세요." />
						<button>검색</button>
					</div>
				</div>
				
				<div id="list-wrapper">
					<div id="list">
						<div id="list-item">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>

							<div id="name">
								<h5>이름</h5>
							</div>
							<div id="id">
								<h5>아이디</h5>
							</div>
							<div id="phone">
								<h5>전화번호</h5>
							</div>
							<div id="state-manage">
								<h5>회원상태관리</h5>
							</div>
							<div id="state">
								<h5>회원상태</h5>
							</div>
						</div>
					</div>
					
					
					<!-- 회원 리스트1 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>홍길동</p>
							</div>
							<div id="user-id">
								<p>honggildong1123</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p>일반회원</p>
							</div>
						</div>
					</div>
					
					<!-- 회원 리스트2 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>제갈공명</p>
							</div>
							<div id="user-id">
								<p>zegal2313</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p class="ban-comment">댓글 정지</p>
							</div>
						</div>
					</div>
					
					<!-- 회원 리스트3 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>홍길동</p>
							</div>
							<div id="user-id">
								<p>honggildong1123</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p>일반 회원</p>
							</div>
						</div>
					</div>
					
					<!-- 회원 리스트4 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>제갈공명</p>
							</div>
							<div id="user-id">
								<p>zegal2313</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p class="ban-all">영구 정지</p>
							</div>
						</div>
					</div>
					
					<!-- 회원 리스트5 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>홍길동</p>
							</div>
							<div id="user-id">
								<p>honggildong1123</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p>일반회원</p>
							</div>
						</div>
					</div>
					
					<!-- 회원 리스트6 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>제갈공명</p>
							</div>
							<div id="user-id">
								<p>zegal2313</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p class="ban-comment">댓글 정지</p>
							</div>
						</div>
					</div>
					
					<!-- 회원 리스트7 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>홍길동</p>
							</div>
							<div id="user-id">
								<p>honggildong1123</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p>일반 회원</p>
							</div>
						</div>
					</div>
					
					<!-- 회원 리스트8 -->
					<div id="user-list-wrapper">
						<div id="user-list">
							<div>
								<input class="check-label" type="checkbox" id="check-user"/>
						  		<label class="checkbox-label" for="check-user">
						  		</label>
							</div>
		
							<div id="user-name">
								<p>제갈공명</p>
							</div>
							<div id="user-id">
								<p>zegal2313</p>
							</div>
							<div id="user-phone">
								<p>010-1234-1234</p>
							</div>
							<div>
								<div id="area-dropdown">
									<select id="area" name="area">
										<option value="state">선택</option>
										<option value="state1">일반회원</option>
										<option value="state2">댓글정지</option>
										<option value="state3">경매정지</option>
										<option value="state4">영구정지</option>
									</select>
								</div>
							</div>
							<div id="user-state">
								<p class="ban-comment">댓글 정지</p>
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>

</body>
</html>