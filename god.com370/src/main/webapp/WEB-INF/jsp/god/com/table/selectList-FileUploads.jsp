<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<h1>File Upload Progress Demo #1</h1>
<code>&lt;input type="file" name="myfile"></code>
<form action="uploadExcel.do" method="post"
	enctype="multipart/form-data">

	<ol>
		<li><input type="text" name="tableId" value=""></li>
		<li><input type="text" name="tableName"
			value="[별지 제10호서식] 산림기술자 자격증(신규발급¸ 재발급)신청서"></li>
		<li><input type="text" name="columnNm" value="컬럼명"></li>
		<li><input type="text" name="columnNm2" value="컬럼명2"></li>
	</ol>

	<input type="file" name="myfile"><br> <input type="submit"
		value="Upload File to Server">
</form>

<div class="progress">
	<div class="bar"></div>
	<div class="percent">0%</div>
</div>

<div id="status"></div>
