<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>



function commentList() {
	var pNo = '${productVO.pNo}';
	
	$.ajax({
		url : '${ pageContext.request.contextPath }/qnaList',
		type : 'get',
		data : {'pNo' : pNo},
		success : function(data){
			var list = '';
			$.each(data, function(key, value){
				list += '<p class="qnaid'+value.no+'">'+value.id+" ( "+value.regDate+ " ) </p>";
				list += '<p class="content">'+value.content+ '</p>';
			});
			$("#qnaList").html(list);
		}
	});
}

$('#comment_btn').click(function() {
	
	var id = '${userVO.id}';
	var pNo = '${productVO.pNo}';
	var content = $('#qnaContent').val();
	
	var data = {
			"id" : id,
			"content" : content,
			"pNo" : pNo
	}
	
	$.ajax({
		url : "${pageContext.request.contextPath}/inputQnA",
		type : "POST",
		data : data,
		success : function() {
			alert('댓글이 등록되었습니다.');
			$('#qnaContent').val('');
			commentList(); //댓글 작성 후 댓글 목록 reload
		}

	});
});



</script>