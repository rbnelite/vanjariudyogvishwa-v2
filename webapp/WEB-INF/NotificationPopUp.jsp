



<div id="NotificationTopHome">
	<div id="InsideNotificationTopHome">
		
		
			<h3 style="background-color: #fab039"><font color="white">Notification</font>
				<a onclick="return DisableNotificBlock()"> 
					<img src="${pageContext.request.contextPath}/resources/images/close (3).png"
						id="close"  style="width: 40px; height: 40px; float: right;"></a>
			</h3>
			<table width="100%">
			<form action="/vanjariudyogvishwa-v2/Notification" method="post">
				<c:if test="${!empty NotificationList}">
					<c:forEach items="${NotificationList}" var="note">
						<tr><td colspan=2 align="left">
							<div class="userStatusImage">
								<img src="${pageContext.request.contextPath}/resources/ProfileImages/${note[4]}" height="20" width="20">
							</div>
							<h7 id="${note[3]}" onclick="jumpcomment('${note[3]}')"><b style="color: red;">${note[1]} ${note[2]}</b> commented on status: <i style="color: gray;">${note[0]}</i></h7>
			
							<input type="submit" id="submit1" style="display: none"></td>
						</tr>						
					</c:forEach>
					<input type="hidden" id="notificationId" name="notificationId">
				</c:if>
			</form>
		</table>
		
		<table style="float: right;">
			<tr><td>
				<a href="Notificationjsp"> All Notifications....</a></td>
			</tr>
		</table>
		
	</div>
</div>