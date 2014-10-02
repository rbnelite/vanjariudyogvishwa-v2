<div id="Header">
				<form action="/vanjariudyogvishwa-v2/SearchResult">
					<div>
						<input id="SearchData" type="text" name="SearchData"
						placeholder="Search for people, Place, Events....." style="height: 35px; width: 350px; border-radius:5px; border: none;background-color: white; margin-top: 10px;"/>
						<input id="VUVloginBtn" type="submit" value="Search" style="height: 42px;">
					</div>
				</form>
				<label style="margin-right: 5px; margin-top: -42px; float: right;">WelCome !<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
				<div id="profile_photo" style="margin-top: -40px;">
					<c:if test="${! empty ProfileImageList}">
						<c:forEach items="${ProfileImageList}" var="ProfileImage">
							<img width="140px" height="140px" style="border-radius: 50px;border: 3px solid red"
								src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}">
							<br>&nbsp;&nbsp;&nbsp; <a href="#"
								onclick="return DisplayChangePhotoBlock()">Change Photo</a>

						</c:forEach>
					</c:if>
					<c:if test="${empty ProfileImageList}">
						<img width="140px" height="140px"
							src="${pageContext.request.contextPath}/resources/ProfileImages/DefaultProfileImg.png">
						<br>&nbsp;&nbsp;&nbsp; <a href="#"
							onclick="return DisplayChangePhotoBlock()">Change Photo</a>
					</c:if>

				</div>

				<div id="ChangePhotoHome">
					<form action="/vanjariudyogvishwa-v2/UpdateProfileImage"
						method="post" enctype="multipart/form-data">
						<input type="hidden" name="JspPageName" value="Home"> <a
							onclick="return HideChangePhotoBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close" style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>

						<table>
							<tr>
								<td>Pick file : <input type="file"
									name="updateProfileImage" size="50" /></td>
							</tr>
							<tr>
								<td colspan="2"><br>
							</tr>
							<tr>
								<td><input type="submit" value="Upload" name=""></td>
								<td></td>
							</tr>
						</table>
					</form>
				</div>

			</div>