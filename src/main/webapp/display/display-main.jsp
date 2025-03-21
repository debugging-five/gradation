<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Display Page</title>
    <link rel="stylesheet" href="../assets/css/display/display-main.css" />
  </head>
  <body>
    <main class="display-main">
      <section class="display-content">
        <h1 class="display-title">display</h1>
        <nav class="navbar-wrapper">
          <ul class="navbar">
            <li><a href="#" class="nav-link">한국화</a></li>
            <li><a href="#" class="nav-link">회화</a></li>
            <li><a href="#" class="nav-link">조각</a></li>
            <li><a href="#" class="nav-link">공예</a></li>
            <li><a href="#" class="nav-link">건축</a></li>
            <li><a href="#" class="nav-link">서예</a></li>
          </ul>
        </nav>
        <div class="exhibition-status">
          <button class="status-btn active">전시중</button>
          <button class="status-btn">전시예정</button>
        </div>
        <div class="upload-section">
          <button class="upload-btn">
            <img src="img/icon.svg" alt="Upload icon" class="upload-icon" />
            작품 업로드
          </button>
        </div>
        <div class="sort-section">
          <button class="sort-btn">
            등록순
            <img src="img/down.svg" alt="Sort dropdown" class="sort-icon" />
          </button>
        </div>
        <img class="gallery-content" src="img/group-3833.png" alt="Gallery content" />
        <nav class="pagination" aria-label="Page navigation">
          <button class="page-nav prev" aria-label="Previous page">
            <img src="img/left.svg" alt="Previous" />
          </button>
          <ul class="page-list">
            <li><a href="#" class="page-link">1</a></li>
            <li><a href="#" class="page-link">2</a></li>
            <li><a href="#" class="page-link current">3</a></li>
            <li><a href="#" class="page-link">4</a></li>
            <li><a href="#" class="page-link">5</a></li>
          </ul>
          <button class="page-nav next" aria-label="Next page">
            <img src="img/right.svg" alt="Next" />
          </button>
        </nav>
      </section>
    </main>
  </body>
</html>
