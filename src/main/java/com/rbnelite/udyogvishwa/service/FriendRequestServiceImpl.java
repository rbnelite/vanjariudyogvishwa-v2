package com.rbnelite.udyogvishwa.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.FriendRequestDao;
import com.rbnelite.udyogvishwa.dto.FriendRequestCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Service
public class FriendRequestServiceImpl implements FriendRequestService{

	@Resource
	private FriendRequestDao friendrequestdao;

	@Override
	public void sendFriendRequest(FriendRequestCredential friendRequestCredential) {
	
		FriendRequest friendrequest=new FriendRequest();
		
		LoginUser loginUser = RequestContext.getUser();
		
		String userMail=loginUser.getEmail();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		
	    friendrequest.setRequestFrom(userMail);
	    friendrequest.setRequestTo(friendRequestCredential.getRequestTo());
	    friendrequest.setRequestStatus("Pending");
		friendrequest.setRequestDate(dateFormat.format(date));
		
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

	@Override
	public List<FriendRequest> listFriends(String userMail) {
		
		return friendrequestdao.listFriends(userMail);
	}
	
}