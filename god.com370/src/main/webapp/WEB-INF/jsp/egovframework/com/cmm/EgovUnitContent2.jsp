<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/egovframework/com/cmm/jquery-1.4.2.min.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var url = '${pageContext.request.contextPath}/sym/sym/srv/selectServerEqpmnList.do';
						var data = {};
						function success(data, textStatus, jqXHR) {
							console.log('data', data);
							console.log('textStatus', textStatus);
							console.log('jqXHR', jqXHR);
						}
						var dataType = 'xml';
						// 												var dataType = 'json';
						// 						var dataType = 'script';
						// 						var dataType = 'text';
						// 												var dataType = 'html';

						$.get(url, data, success, dataType);
						$.get(url, data, success, 'json');
						$.get(url, data, success, 'script');
						$.get(url, data, success, 'text');
						$.get(url, data, success, 'html');

					});
</script>
