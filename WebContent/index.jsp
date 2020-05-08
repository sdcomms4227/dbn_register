<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>JSP AJAX 회원가입</title>
<link rel="stylesheet" href="./css/bootstrap.css" />
<link rel="stylesheet" href="./css/custom.css" />
<script src="./js/jquery-3.4.1.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form action="./userRegister" method="post">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #ddd">
				<colgroup>
					<col style="width: 110px;" />
					<col />
					<col style="width: 110px;" />
				</colgroup>
				<thead>
					<tr>
						<th colspan="3">
							<h4>회원 등록 양식</h4>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<h5>아이디</h5>
						</td>
						<td>
							<input type="text" class="form-control" id="userID" name="userID" maxLength="20" />
						</td>
						<td>
							<button type="button" class="btn btn-primary" onclick="registerCheckfunction();">중복체크</button>
						</td>
					</tr>
					<tr>
						<td>
							<h5>비밀번호</h5>
						</td>
						<td colspan="2">
							<input type="password" class="form-control" id="userPassword1" name="userPassword1" maxLength="20" />
						</td>
					</tr>
					<tr>
						<td>
							<h5>비밀번호 확인</h5>
						</td>
						<td colspan="2">
							<input type="password" class="form-control" id="userPassword2" name="userPassword2" maxLength="20" />
						</td>
					</tr>
					<tr>
						<td>
							<h5>이름</h5>
						</td>
						<td colspan="2">
							<input type="text" class="form-control" id="userName" name="userName" maxLength="20" />
						</td>
					</tr>
					<tr>
						<td>
							<h5>나이</h5>
						</td>
						<td colspan="2">
							<input type="text" class="form-control" id="userAge" name="userAge" maxLength="20" />
						</td>
					</tr>
					<tr>
						<td>
							<h5>성별</h5>
						</td>
						<td colspan="2">
							<div class="form-group" style="text-align: center; margin: 0 auto;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active">
										<input type="radio" name="userGender" autocomplete="off" value="남자" checked />
										남자
									</label>
									<label class="btn btn-primary">
										<input type="radio" name="userGender" autocomplete="off" value="여자" />
										여자
									</label>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<h5>이메일</h5>
						</td>
						<td colspan="2">
							<input type="email" class="form-control" id="userEmail" name="userEmail" maxLength="20" />
						</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: left">
							<input type="submit" class="btn btn-primary pull-right" value="회원가입" />
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>

</body>
</html>