<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../template/header.jsp"%>   

	<script>
	/* 다시 작성시 */
	function Reset() {
		write_form.title.value = "";
		write_form.content.value = "";
	}
	</script> 
    <div class="jumbotron">
		<h2> 
			<strong>&nbsp;글 수정</strong>
		</h2>
	</div>
	
	<!-- 작성 form -->
	<div class="row container card form-group border-success" style="padding: 1%; margin:2%">		
			<FORM Name='write_form' Method='post' style="margin-top: 1%; margin: 2%">
			<input type="hidden" name="board_id" value="${boardVO.board_id}">				
				<div class="form-check-inline form-group ">
					<div class=" text-dark">
						<strong><label for="member_name">작성자</label></strong> <input
							type="text" class="form-control border-success" id="member_name"
							 name="member_id" value="${boardVO.member_id}" readonly="readonly">
					</div>
					&nbsp; &nbsp;					
				</div>
				<div class="form-group text-dark">
					<strong><label for="write_time">제목</label></strong><br>
					<div class="form-check-inline col-xl-12">
						<input type='text' id="write_time" class="form-control border-success"
							placeholder="제목을 입력하세요" name='title' value="${boardVO.title}">
					</div>
				</div>
				<div class=" text-dark form-group">
					<textarea class="form-control border-success" rows="20"
						style="margin-top: 0px; margin-bottom: 0px; height: 20rem;"
						cols="90" placeholder="내용을 입력하세요" name="content">${boardVO.content}</textarea>
				</div>				
				<div class="form-group">
					<input class="btn btn-info" type="submit" value="작성"> &nbsp; <input class="btn btn-success"
						type="button" onClick="Reset()" value="다시 쓰기">
				</div>
			</form>
		
	</div>
<%@ include file="../template/footer.jsp"%>