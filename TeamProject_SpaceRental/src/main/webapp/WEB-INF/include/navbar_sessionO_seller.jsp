<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 부트스트랩 --%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>

<!--로그인 된 상태 -->
<!--네비바-->
<nav class="navbar bg-body-tertiary">
	<div class="container-fluid">
    	<div class="ml-5" >
        	<a class="navbar-brand" href="${pageContext.request.contextPath}/"><p class="fs-3 fw-semibold  " >Ubiquitous</p></a>
        </div>
      	<div class="row">
      		<p class="fs-6 text-secondary">
         		<div class="col">
         			<button class="btn btn-dark" onClick="location.href='${pageContext.request.contextPath}/seller/spaceinfo'">내 공간 등록하기</button>
         			<button class="btn btn-dark" onClick="location.href='${pageContext.request.contextPath}/seller/spacelist'">내 공간 확인하기</button>
            		<a class="navbar-brand" href="#"><strong>${sessionScope.id }</strong>님 반갑습니다.</a>
         			<a class="navbar-brand" href="${pageContext.request.contextPath}/users/logout"><small>로그아웃</small></a>
           			<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
            			<span class="navbar-toggler-icon"></span>
           			</button>
         		</div>
        	</p>
    	</div>
	</div>
</nav>  