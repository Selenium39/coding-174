package com.mooc.house.user.common;

import org.apache.commons.lang3.exception.ExceptionUtils;
import org.apache.commons.lang3.reflect.FieldUtils;

import com.google.common.collect.ImmutableMap;
import com.mooc.house.user.exception.IllegalParamsException;
import com.mooc.house.user.exception.WithTypeException;
import com.mooc.house.user.model.User;

public class Exception2CodeRepo {
	
	private static final ImmutableMap<Object, RestCode> MAP = ImmutableMap.<Object, RestCode>builder()
			.put(IllegalParamsException.Type.WRONG_PAGE_NUM,RestCode.WRONG_PAGE)
            .put(IllegalStateException.class,RestCode.UNKNOWN_ERROR)
	        .put(UserException.Type.USER_NOT_LOGIN,RestCode.TOKEN_INVALID)
	        .put(UserException.Type.USER_NOT_FOUND,RestCode.USER_NOT_EXIST)
	        .put(UserException.Type.USER_AUTH_FAIL,RestCode.USER_NOT_EXIST).build();
	
	private static Object getType(Throwable throwable){
	   try {
		  return FieldUtils.readDeclaredField(throwable, "type", true);
	   } catch (Exception e) {
		  return null;
	   }	
	}
	
	
	public static RestCode getCode(Throwable throwable) {
		if (throwable == null) {
			return RestCode.UNKNOWN_ERROR;
		}
		Object target = throwable;
		if (throwable instanceof WithTypeException) {
			Object type = getType(throwable);
			if (type != null ) {
				target = type;
			}
		}
		RestCode restCode =  MAP.get(target);
		if (restCode != null) {
			return restCode;
		}
		Throwable rootCause = ExceptionUtils.getRootCause(throwable);
		if (rootCause != null) {
			return getCode(rootCause);
		}
		return restCode.UNKNOWN_ERROR;
	}

}
