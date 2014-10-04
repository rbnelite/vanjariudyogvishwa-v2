<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana;">Upcoming Events</h3>
				<div id="OutsideleftMainHome">
					<div id="leftMainHome">
					
								
						<c:if test="${!empty eventstList}">
							<c:forEach items="${eventstList}" var="myEvents">
								<table width=100%>
									<tr>
										<td align="center" width="100%"><a id="showEventUserName">${myEvents[1]} ${myEvents[2]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">Title :</font> <a id="showEventCred">${myEvents[0]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">At : </font><a id="showEventCred">${myEvents[4]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">On : </font><a id="showEventCred">${myEvents[5]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">Details : </font><a id="showEventCred">${myEvents[3]}</a></td>
									</tr>
								</table>
								<hr>
							</c:forEach>
							
						</c:if>
						
					</div>
				</div>
				<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana;">Links</h3>
				<div id="leftMain2">
					<table width=100% >
						<!-- <th style="background-color: #fab039"><font color="white">Links</font></th> -->
					<tr>
						<td width="16%"> <img  src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="message">Message</a></td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32" width="32"></td>
						<td width="84%"> <a id="Shortlinks" href="Events">Events</a> </td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/photo.png" title="Photos" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="Photos">Photos</a> </td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/product1.png" title="My Products" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="Product">Products</a></td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/friends1.png" title="Friend's" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="FriendList">Friends</a></td>
					</tr>
					</table>
				</div>
				
				<div id="leftMain3">
					<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana; ">Links</h3>
				</div>