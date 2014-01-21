package com.rbnelite.udyogvishwa.utils;

import com.rbnelite.udyogvishwa.dto.LoginUser;

public class RequestContext {
	private static ThreadLocal<LoginUser> user = new ThreadLocal<LoginUser>();

	public static LoginUser getUser() {
		return user.get();
	}

	public static void setUser(LoginUser user) {
		RequestContext.user.set(user);
	}

}
