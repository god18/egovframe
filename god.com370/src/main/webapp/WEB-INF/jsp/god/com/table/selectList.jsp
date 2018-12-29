<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<ul>
		<li><a
			href="<c:url value="/EgovPageLink.do?link=god/com/link/NewFile" />"
			target="_blank">NewFile</a></li>
		<li><a
			href="<c:url value="/EgovPageLink.do?link=god/com/link/NewFile1" />"
			target="_blank">NewFile1</a></li>
		<li><a
			href="<c:url value="/EgovPageLink.do?link=god/com/link/NewFile2" />"
			target="_blank">NewFile2</a></li>
	</ul>


	<form:form commandName="godTableVO" action="delete.do">

		<ul>
			<li><a href="insertForm.do">등록</a></li>
			<li><input type="submit" value="삭제"></li>
		</ul>

		<table border="1">
			<tr>
				<th></th>
				<th>테이블ID</th>
				<th>테이블명</th>

				<th>구분</th>
				<th>접수번호</th>
				<th>접수일시</th>
				<th>발급일</th>
				<th>처리기간</th>

				<th>성명</th>
				<th>생년월일</th>
				<th>성별</th>
				<th>주소</th>
				<th>주소전화</th>
				<th>직업</th>
				<th>근무처</th>
				<th>근무처전화</th>

				<th>기술종류</th>
				<th>등급</th>
				<th>구분</th>
				<th>재발급 사유</th>

				<th>발급번호</th>
				<th>발급일자</th>
				<th>발급기관</th>
				<th>신청일</th>
				<th>신청인</th>

				<th><c:out value="${result.useAt}" escapeXml="true" /></th>
				<th><c:out value="${result.frstRegistPnttm}" escapeXml="true" /></th>
				<th><c:out value="${result.frstRegisterId}" escapeXml="true" /></th>
				<th><c:out value="${result.lastUpdtPnttm}" escapeXml="true" /></th>
				<th><c:out value="${result.lastUpdusrId}" escapeXml="true" /></th>
			</tr>
			<c:forEach items="${results}" var="result">
				<tr>
					<td><form:checkbox path="tableIds" value="${result.tableId}" /></td>
					<td><a
						href="updateForm.do?tableId=<c:out value="${result.tableId}" escapeXml="true" />"><c:out
								value="${result.tableId}" escapeXml="true" /></a></td>
					<td><c:out value="${result.tableNm}" escapeXml="true" /></td>

					<td><c:out value="${result.columnNm}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm2}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm3}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm4}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm5}" escapeXml="true" /></td>

					<td><c:out value="${result.columnNm6}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm7}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm8}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm9}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm10}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm11}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm12}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm13}" escapeXml="true" /></td>

					<td><c:out value="${result.columnNm14}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm15}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm16}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm17}" escapeXml="true" /></td>

					<td><c:out value="${result.columnNm18}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm19}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm20}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm21}" escapeXml="true" /></td>
					<td><c:out value="${result.columnNm22}" escapeXml="true" /></td>
					<td><c:out value="${result.useAt}" escapeXml="true" /></td>
					<td><c:out value="${result.frstRegistPnttm}" escapeXml="true" /></td>
					<td><c:out value="${result.frstRegisterId}" escapeXml="true" /></td>
					<td><c:out value="${result.lastUpdtPnttm}" escapeXml="true" /></td>
					<td><c:out value="${result.lastUpdusrId}" escapeXml="true" /></td>
				</tr>
			</c:forEach>
		</table>

	</form:form>

	<c:import url="selectList-FileUploads.jsp" />

	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"
		integrity="sha384-FzT3vTVGXqf7wRfy8k4BiyzvbNfeYjK+frTVqZeNDFl8woCbF0CYG6g2fMEFFo/i"
		crossorigin="anonymous"></script>

	<c:set var="scriptSrc">${pageContext.request.requestURI}</c:set>
	<c:set var="scriptSrc">${fn:replace(scriptSrc, '/WEB-INF/jsp', '/js')}</c:set>
	<c:set var="scriptSrc">${fn:replace(scriptSrc, '.jsp', '.js')}</c:set>
	<script type="text/javascript" src="${scriptSrc}"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			fn_table_onload();
		});
	</script>

	<c:import url="selectList-log.jsp" />

</body>
</html>