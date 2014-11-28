

<script type="text/javascript">
	var image1=new Image();
    image1.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 2.jpg";
    var image2=new Image();
    image2.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 3.jpg";
    var image3=new Image();
    image3.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 4.jpg";
    var image4=new Image();
    image4.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 5.jpg";
    var image5=new Image();
    image5.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 6.jpg";
    var image6=new Image();
    image6.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 7.jpg";
</script>

<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px;">People You May Know</h3>
			<div id="OutsidepeopleMayKnw">
				<div id="peopleMayKnw">

					<table width=100%>
						
						<c:if test="${!empty knownPeopleList}">
							<c:forEach items="${knownPeopleList}" var="knownPeople">
								<c:if test="${loginUser.email != knownPeople[0]}">
									<tr id="people${knownPeople[0]}">
										<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
											<input type="hidden" name="friendsEmailId" value="${knownPeople[0]}">
											<td>
												<img src="${pageContext.request.contextPath}/resources/ProfileImages/${knownPeople[3]}"
														height="30" width="30">
											</td>
											<td><input id="MayKnowUserName" title="View Profile of ${knownPeople[1]} ${knownPeople[2]}" type="submit" value="${knownPeople[1]} ${knownPeople[2]}"><br></td>	
										</form>
										<form action="/vanjariudyogvishwa-v2/sendFriendRequest"method="post">
											<td>
												<input type="hidden" id="sendRequestToId" name="requestTo" value="${knownPeople[0]}">
												<input type="hidden" id="sendRequestFromId" name="requestFrom" value="${loginUser.email}">
												<input type="submit" value="Connect" class="connectBtn"	style="float: right;" onclick="return sendRequest('${knownPeople[0]}');">
											</td>
										</form>
									</tr>
								</c:if>
								
							</c:forEach>
						</c:if>
					</table>
				</div>
				</div>
				
				<h3 style="background-color:#FF6300; font-family: vardana; margin-top: 0px;">AdvertiseMents</h3>
				<div id="OutsideRightMessage">
					<div id="InsideRightMessage">
						
						<div style="width: 292px;height: 270px;">
							<img src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 1.jpg" name="slide" width="292" height="270"/>
                        </div>
                        
                            <script>
                                
                                //variable that will increment through the images
                                var step=1;
                               
                                function slideit(){
                                    //if browser does not support the image object, exit.
                                    if (!document.images)
                                        return
                                    document.images.slide.src=eval("image"+step+".src");
                                    
                                    if (step<6 )
                                       	step++;
                                       
                                    else
                                        step=1;
                                        
                                    //call function "slideit()" every 2.5 seconds
                                    setTimeout("slideit()",9900);
                                }
                                slideit();
                                
                            </script>
						
						</div>
					</div>