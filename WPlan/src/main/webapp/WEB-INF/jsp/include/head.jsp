<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"	crossorigin="anonymous">
	<link	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"	rel="stylesheet">
	<link	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800"	rel="stylesheet">
	<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/animate.css">
	<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/main.css">
<%-- 	<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/calendar/fullcalendar.css"> --%>
	<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/calendar/fullcalendar.min.css">
	<link rel="stylesheet"  href="${ pageContext.request.contextPath }/resources/css/login.css" type="text/css" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
	
	<style>
		.col-lg-4 {
			-webkit-box-flex: 0;
			-ms-flex: 0 0 33.333333%;
			flex: 0 0 33.333333%;
			max-width: 25%;
		}
		
		.product .jumbotron {
			width: 100%;
			height: 250px;
		}
		
		.product .jumbotron h2 {
			padding-bottom: 0;
		}
    
  	</style>
	
	<title>more</title>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"	crossorigin="anonymous"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"	crossorigin="anonymous"></script>
	<script	src="${ pageContext.request.contextPath }/resources/js/animate.js"></script>
	<script	src="${ pageContext.request.contextPath }/resources/js/custom.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

	<script>
	 $.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd',
	        prevText: '이전 달',
	        nextText: '다음 달',
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	        showMonthAfterYear: true,
	        yearSuffix: '년'
	    });

	    $(function() {
	        $("#datepicker1").datepicker();
	    });

	    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
	        event.preventDefault();
	        $(this).ekkoLightbox();
	    });
	    
		$(document).ready(function(){
			var toggle = false;

			$('.arrowBtn').click(function(){
	
			    if(toggle){
		    		$('.aside01').css('width','0');
		    		$('.aside01').css('min-width','0');
		    		$('#wrapper').css('width','100%');
		    		toggle = false;
		    	}else{
		    		$('.aside01').css('width','14%');
		    		$('.aside01').css('min-width','250px');
		    		$('#wrapper').css('width','86%');
		    		toggle = true;
		    	}
	
			});
	    });
		
	    $(document).ready(function(){
	    	$('.rDetailBtn #cancel').click(function(){
	    		alert('예약이 취소되었습니다.');
	    	});
    		$('#updateBtn.fBtn update').click(function(){
    			alert('수정되었습니다.');
    			location.href="${ pageContext.request.contextPath }/member/myPage.jsp";
    		});
	    });
	    
	    $(document).ready(function(){
	    	$('.rMenu .calendar').click(function(){
	    		location.href="${ pageContext.request.contextPath }/calendar";
	    	});
	    	$('.rMenu .myInfo').click(function(){
	    		location.href="${ pageContext.request.contextPath }/member/myPage.jsp";
	    	});
	    	$('.rMenu .rList').click(function(){
	    		location.href="${ pageContext.request.contextPath }/member/uReservation.jsp";
	    	});
	    });
	    
	
	</script>