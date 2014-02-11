package com.rbnelite.udyogvishwa.service;


import java.util.List;

import com.rbnelite.udyogvishwa.dto.FriendRequestCredential;
import com.rbnelite.udyogvishwa.model.FriendRequest;

public interface FriendRequestService {
	
	public void sendFriendRequest(FriendRequestCredential friendRequestCredential);

	public List<FriendRequest> listFriendRequest(String userMail);
	
	public void acceptFriendRequest(FriendRequestCredential friendrequestdto,String status);
}
