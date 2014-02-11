package com.rbnelite.udyogvishwa.dao;



import java.util.List;

import com.rbnelite.udyogvishwa.model.FriendRequest;



public interface FriendRequestDao {

	public void sendFriendRequest(FriendRequest friendRequest);
	public List<FriendRequest> listFriendRequest(String userMail);
	public void acceptFriendRequest(FriendRequest friendrequest);
}
