package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;



import com.rbnelite.udyogvishwa.dao.FriendRequestDao;
import com.rbnelite.udyogvishwa.dto.FriendRequestCredential;
import com.rbnelite.udyogvishwa.model.FriendRequest;

@Service
public class FriendRequestServiceImpl implements FriendRequestService{

	@Resource
	private FriendRequestDao friendrequestdao;
	
	
	
	@Override
	public void sendFriendRequest(FriendRequestCredential friendRequestCredential) {
	
		FriendRequest friendrequest=new FriendRequest();
		
	    friendrequest.setRequestFrom(friendRequestCredential.getRequestFrom());
	    friendrequest.setRequestTo(friendRequestCredential.getRequestTo());
	    friendrequest.setRequestStatus(friendRequestCredential.getRequestStatus());
		friendrequest.setRequestDate(friendRequestCredential.getRequestDate());
		
		friendrequestdao.sendFriendRequest(friendrequest);
	}
	
	@Override
	public List<FriendRequest> listFriendRequest(String userMail) {
		
		return friendrequestdao.listFriendRequest(userMail);
	}

	@Override
	public void acceptFriendRequest(FriendRequestCredential friendrequestdto,String status) {
		FriendRequest friendrequest=new FriendRequest();
		friendrequest.setRequestFrom(friendrequestdto.getRequestFrom());
		
		friendrequest.setRequestTo(friendrequestdto.getRequestTo());
		
		friendrequest.setRequestStatus(status);
		friendrequestdao.acceptFriendRequest(friendrequest);
		
	}
	
	
}
