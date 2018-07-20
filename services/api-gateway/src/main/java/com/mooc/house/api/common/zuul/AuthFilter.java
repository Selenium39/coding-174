package com.mooc.house.api.common.zuul;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.util.WebUtils;

import com.mooc.house.api.common.CommonConstants;
import com.mooc.house.api.common.UserContext;
import com.mooc.house.api.dao.UserDao;
import com.mooc.house.api.model.User;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;

/**
 * 鉴权filter
 *
 */
@Component
public class AuthFilter extends ZuulFilter {
  
  private static final String TOKEN_COOKIE = "token";
  
  @Autowired
  private UserDao userDao;

  @Override
  public boolean shouldFilter() {
    RequestContext ctx = RequestContext.getCurrentContext();
    HttpServletRequest  request  = ctx.getRequest();
    return UserContext.getUser() == null && request.getRequestURI().startsWith("/house/v1");
  }

  @Override
  public Object run() {
    RequestContext ctx = RequestContext.getCurrentContext();
    HttpServletRequest  request  = ctx.getRequest();
    Cookie cookie = WebUtils.getCookie(request, TOKEN_COOKIE);
    if (cookie != null && StringUtils.isNoneBlank(cookie.getValue())) {
      User user = userDao.getUserByToken(cookie.getValue());
      if (user != null) {
        request.setAttribute(CommonConstants.LOGIN_USER_ATTRIBUTE, user);
        UserContext.setUser(user);
      }else{
        throw new IllegalStateException();
      }
    }else {
      throw new IllegalStateException();
    }
    return null;
  }
  

  @Override
  public String filterType() {
      return "pre";
  }

  @Override
  public int filterOrder() {
      return 1;
  }
}
