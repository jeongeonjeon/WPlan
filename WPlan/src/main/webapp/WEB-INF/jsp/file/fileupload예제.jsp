<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

<title>upload</title>
<style type="text/css">
	.imgs_wrap {
	width: 600px;
	margin-top: 50px;
	}
	.imgs_wrap img {
	max-width: 200px;
	}
</style>

<script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
<script type="text/javascript">

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

		var reader - new FileReader();
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

	<div>
		<h2><b>다중 이미지 미리보기 </b></h2>
		<p class="title"> 다중 이미지 업로드 </p>
		<input type="file" id="input_imgs" multiple />
	</div>

	<div>
		<div class="imgs_wrap">
			
		</div>
	</div>
</body>
</html>