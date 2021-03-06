<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	String clsName = request.getParameter("clsname");
	String clsidx = request.getParameter("clsidx");
	String clsprice = request.getParameter("clsprice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	function main(frm){
		frm.action = "reserv_save";
		alert("예약이 완료되었습니다.");
		frm.submit();
		
	}
	function calculation(frm){
		frm.action = "calculation";
		frm.submit();
	}

	
$(function(){
	$(".people").change(function(){
		let thisPrice = $(".people option:selected").val();
		
		let parmPrice = <%=clsprice%>;
		
		$("#totalPrice").val(thisPrice * parmPrice);
				
	});
	
	
});

</script>
<link rel="stylesheet" href="css/reserv_form.css"/>
<style>
select {

    font-size: 12px;
    height: 20px;
    width: 440px;
    border-radius: 3px;
}
</style>
</head>

<body>
	<c:import url="header.jsp"></c:import>
<main>	
<form id= "join_form" method="post">
	<div id="container">
		<div id="content">
				<div class="join_row">
					<h3 class="join_title" id="title">
						<label for="name" >클래스이름</label>
					</h3>
					<span class="ps_box box_right_space">
						<input type="text" id="name" name="name"  maxlength="40" value="<%=clsName %>" readonly="readonly">
				</span>
				</div>
				<div class="join_row">
					<h3 class="join_date" id="title">
						<label for="name" >예약날짜</label>
					</h3>
					<span class="ps_box box_right_space">
						<input type="date" name = "startDate" min="2020/01/01" max= "2020/12/31">
					</span>
				</div>

				<div class="join_row">
					<h3 class="join_time" id="title">
						<label for="name" >예약시간</label>
					</h3>
				<span class="ps_box box_right_space">
					<select name = "resv_time">
						<option value="none" >시간&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						▼ </option>
						<option value="09" >오전타임 : 오전 9시 ~ 오후 1시</option>
						<option value="14" >오후타임  : 오후 2시 ~ 오후 6시</option>	
					</select>
				</span>
				</div>
				
				<div class="join_row">
					<h3 class="join_person" id="title">
						<label for="name" >인원</label>
					</h3>
				<span class="ps_box box_right_space">
					<select name = "resv_people" id="ITEM_ID" class="people">
					<!-- <option value="none" > 명</option> -->
					<option value="none" >명&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						▼ </option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9" >9</option>
					<option value="10" >10</option>
					</select>
				</span>
				</div>
				
				<div class="join_row">
					<h3 class="join_price" id="title">
						<label for="name">결제금액</label>
					</h3>
				<span class="ps_box box_right_space">
					<input type="text" name="totalPrice" value="0" id="totalPrice" readonly>
				</span>
				</div>
				<div class="btn_area">
					<input type="reset" name = "reset" id="btn" value="다시입력하기">
					<input type="button" value="예약하기" id="btn" onclick="main(this.form)">
					<input type="hidden" name= "clsNum" id="clsNum" value="<%=clsidx%>" >
					<!-- <input type="button" value="바로결제" id="btn" onclick="calculation(this.form)"> -->
				</div>
		</div>
	</div>			
</form>
</main>				
<!-- ---------------------------------------------------------------------------------- -->				
<c:import url="footer.jsp"></c:import>
</body>
</html>