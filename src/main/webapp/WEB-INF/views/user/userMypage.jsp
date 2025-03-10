<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user.css">


<section>
	<div class="container myBody">
		<div class="row">
			<div class="mytitle">
				<a href="">My page</a>
			</div>


			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#info1"
					class="glyphicon glyphicon-info-sign tab-title">내정보수정</a></li>

				<li><a data-toggle="tab" href="#info2"
					class="glyphicon glyphicon-ok-sign tab-title">포토리뷰</a></li>
				<li><a data-toggle="tab" href="#info3"
					class="glyphicon glyphicon-ok-sign tab-title">나의리뷰</a></li>
				<li><a data-toggle="tab" href="#info4"
					class="glyphicon glyphicon-ok-sign tab-title">나의문의</a></li>



			</ul>


			<div class="tab-content">
				<div id="info1" class="tab-pane fade in active">
					<div class="info-title">
						<p>정보 수정</p>
					</div>

					<form action="userUpdate" method=post>
						<div class="tab-login">
							<form class="join">
								<div class="join-group">
									<label>ID</label> <input type="text" class="form-control "
										value="${userInfo.userId }" name="userId" readonly>
								</div>


								<div class="join-group">
									<label>Password</label> <input type="password"
										class="form-control" name="userPw" id="userPw"
										placeholder="8~16 길이의 영소문자를 이용한 패스워드를 입력하세요"
										style="margin-bottom: 5px;">
								</div>
								<span id=msgPw></span>

								<div class="join-group">
									<label>Password Check</label> <input type="password"
										class="form-control" name="pwCheck" id="pwCheck"
										style="margin-bottom: 5px;">
								</div>
								<span id=msgPw-c></span>

								<div class="join-group">
									<label>Name</label> <input type="text" class="form-control"
										value="${userInfo.userName }" name="userName">
								</div>

								<div class="join-group">
									<label>Phone number</label> <input type="text"
										class="form-control" name="userPhone"
										value=${userInfo.userPhone } placeholder="010XXXXXXXX">
								</div>

								<div class="join-group">
									<label for="email">Email</label><br />
									<div class="email-group">
										<input type="text" class="form-control email-left"
											name="userEmail1" id="email"> <select
											class="form-control email-right" name="userEmail2">
											<option>@naver.com</option>
											<option>@daum.net</option>
											<option>@gmail.com</option>
											<option>@hanmail.com</option>


										</select>
									</div>

								</div>

								<div class="join-group">
									<label>Address</label>
									<div class="j-group">
										<input type="text" class="form-control j-left" id="addrZipNum"
											placeholder="우편번호" name="addrZipNum">
										<button type="button" class="btn CheckBtn" onclick="goPopup()">Find
											Address</button>
									</div>
									<input type="text" class="form-control addr-top" id="addrBasic"
										placeholder="기본주소" name="addrBasic"> <input
										type="text" class="form-control " id="addrDetail"
										placeholder="상세주소" name="addrDetail">

								</div>
							</form>





							<div class="page-btn">
								<button type="button" class="btn btn-default mypageBtn2"
									data-toggle="modal" data-target="#myModal">Drop out</button>
								<button type="submit" class="btn btn-default mypageBtn1">Modify</button>


							</div>

						</div>
					</form>
				</div>



				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">

						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">회원 탈퇴
								</h4>
							</div>
							<div class="modal-body">
								<p>${userInfo.userId}님 탈퇴 하시려면 해당 아이디의 비밀번호를 입력해주세요</p>

								<label>Password</label> <input type="password"
									class="form-control" id="delPw" name="delPw">

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" id="delBtn">탈퇴하기</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">닫기</button>

							</div>
						</div>

					</div>
				</div>




				<div id="info2" class="tab-pane fade">
					<div class="info-title">
						<p>포토리뷰</p>
					</div>

					<div class="tab-post">

						<table class="table table-hover info-table">
							<thead>
								<tr>
									<th class="checkBox"><input id="allCheck" type="checkbox" name="allCheck"></th>
									<th class="listBox">Bno</th>
									<th>Title</th>
									<th class="listBox">ID</th>
									<th class="listBox">Reply</th>
								</tr>
							</thead>
							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox" name="RowCheck"></td>
									<td class="listBox">3</td>
									<td>안녕하세요~ 추천드려요~</td>
									<td class="listBox">Bolt</td>
									<td class="listBox">3</td>

								</tr>

							</tbody>

							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox"
										name="RowCheck"></td>
									<td class="listBox">2</td>
									<td>만족스러운 서비스! 딸아이가 좋아해요</td>
									<td class="listBox">mommy</td>
									<td class="listBox">2</td>

								</tr>

							</tbody>

							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox"
										name="RowCheck"></td>
									<td class="listBox">1</td>
									<td>최고에용~</td>
									<td class="listBox">booool</td>
									<td class="listBox">1</td>

								</tr>

							</tbody>
						</table>

						<div class="page-btn">
							<button type="submit" class="btn qnaBtn">Delete</button>
						</div>


					</div>

				</div>



				<div id="info3" class="tab-pane fade">
					<div class="info-title">
						<p>나의리뷰</p>
					</div>

					<div class="tab-post">

						<table class="table table-hover info-table">
							<thead>
								<tr>
									<th class="checkBox"><input id="allCheck" type="checkbox" name="allCheck"></th>
									<th class="listBox">Bno</th>
									<th>Title</th>
									<th class="listBox">ID</th>
									<th class="listBox">Reply</th>
								</tr>
							</thead>
							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox" name="RowCheck"></td>
									<td class="listBox">2</td>
									<td>안녕하세요~ 추천드려요~</td>
									<td class="listBox">Bolt</td>
									<td class="listBox">3</td>

								</tr>

							</tbody>

							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox" name="RowCheck"></td>
									<td class="listBox">1</td>
									<td>만족스러운 서비스! 딸아이가 좋아해요</td>
									<td class="listBox">mommy</td>
									<td class="listBox">1</td>

								</tr>

							</tbody>
						</table>

						<div class="page-btn">
							<button type="submit" class="btn  qnaBtn">Delete</button>
						</div>


					</div>

				</div>

				<div id="info4" class="tab-pane fade">
					<div class="info-title">
						<p>나의문의</p>
					</div>

					<div class="tab-post">

						<table class="table table-hover info-table">
							<thead>
								<tr>
									<th class="checkBox"><input id="allCheck" type="checkbox" name="allCheck"></th>
									<th class="listBox">Bno</th>
									<th>Title</th>
									<th class="listBox">Answer</th>
								</tr>
							</thead>
							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox" name="RowCheck"></td>
									<td class="listBox">3</td>
									<td>배송언제되나요</td>
									<td class="listBox">미확인</td>

								</tr>

							</tbody>

							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox" name="RowCheck"></td>
									<td class="listBox">2</td>
									<td>회원탈퇴하고싶습니다</td>
									<td class="listBox">답변완료</td>

								</tr>

							</tbody>

							<tbody>
								<tr class="boxList">
									<td class="checkBox"><input type="checkbox" name="RowCheck"></td>
									<td class="listBox">1</td>
									<td>연령제한이있나요?</td>
									<td class="listBox">답변완료</td>

								</tr>

							</tbody>
						</table>

						<div class="page-btn">
							<button type="submit" class="btn qnaBtn">Delete</button>
						</div>




					</div>
				</div>
</section>

<script>
                   $(function(){
                	   var chkObj = document.getElementsByName("RowCheck");
                	   var rowcount =chkObj.length;
                	   
                	   $("input[name='allCheck']").click(function(){
                		   var chk_list = $("input[name='RowCheck']");
                		   for(var i=0 ; i<chk_list.length; i++){
                			   chk_list[i].checked = this.checked;
                		   }
                	   });
                	   $("input[name='RowCheck']").click(function() {
                		   if($("input[name='RowCheck']:checked").length ==rowcount){
                			   $("input[name='allCheck']")[0].checked = false;
                		   }
                	   });
                	   
                	   
                   })
                   </script>

<script>

            //비밀번호 검사

        var pw = document.getElementById("userPw");
        var msgPw =document.getElementById("msgPw");
            pw.onkeyup = function () {
                var regex = /^[A-Za-z0-9+]{8,16}$/;
                if (regex.test(pw.value)) {
                    pw.style.borderColor = "cornflowerblue";
                    msgPw.innerHTML = "사용가능한 패스워드입니다";
                    msgPw.style.color="cornflowerblue";
                } else {
                    if(pw.value.length < 8) {
                        pw.style.borderColor = "red";
                        msgPw.style.color="red";
                        msgPw.innerHTML = "비밀번호는 최소 8자입니다";
                    } else {
                        pw.style.borderColor = "red";
                        msgPw.style.color="red";
                        msgPw.innerHTML = "비밀번호는 최대 16자입니다";
                    }
                }
            }
           //checkPw 확인 
            var pwCheck = document.getElementById("pwCheck");
            
            pwCheck.onkeyup = function () {
                var regex = /^[A-Za-z0-9+]{8,16}$/;
                if (pwCheck.value == document.getElementById("userPw").value) {
                    pwCheck.style.borderColor = "cornflowerblue";
                    document.getElementById("msgPw-c").style.color="cornflowerblue";
                    document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치합니다";
                } else {
                    pwCheck.style.borderColor = "red";
                    document.getElementById("msgPw-c").style.color="red";
                    document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치하지않습니다";
                }
            }
        

        



    </script>

<script>
	//주소 팝업
	function goPopup() {
		var pop = window.open("${pageContext.request.contextPath}/resources/pop/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}

	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
			document.getElementById("addrBasic").value = roadAddrPart1;

			document.getElementById("addrDetail").value = addrDetail;

			document.getElementById("addrZipNum").value = zipNo;
	}
</script>
    

  
    </script>

     