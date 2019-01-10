<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
<script>

var sel_files = [];

$(document).ready(function() {
	$("#input_imgs").on("change", hadleImgsFilesSelect);
});

function handleImgsFileSelect(e) {
	var files = e.target.files;
	var filesArr = array.prototype.slice.call(files);
	
	filesArr.forEach(function(f) {
		if(!f.type.match("image.*")) {
			arlert("확장자는 이미지 파일만 가능합니다.");
			return;
		}
		
		sel_files.push(f);

	var reader = new FileReader();
	reader.onload = function(e) {
		var img_html = "<img src=\"" + e.target.result + "\" />";
		$(".imgs_wrap").append(img_html);
	}
	reader.readAsDataURL(f);
});
}
</script>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="<%= request.getContextPath() %>/file/upload">
		<div>
			<input type="text" name="id" value="test" /> <br/>
			<input type="file" name="attachFile" /> <br/> 
			<input type="submit" value="업로드" />
		</div>
	
		<div class="imgs_wrap">
		
		</div>
	</form>
</body>
</html>