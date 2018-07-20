package com.mooc.house.api.common.zuul;


import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.mooc.house.api.common.ResultMsg;
import com.mooc.house.api.common.exception.RateLimiterException;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;

/**
 * 错误filter
 *
 */
@Component
public class ErrorFilter extends ZuulFilter {
  
  private static final Logger logger = LoggerFactory.getLogger(ErrorFilter.class);

  @Override
  public boolean shouldFilter() {
      return RequestContext.getCurrentContext().getThrowable() != null;
  }

  @Override
  public Object run() {
    RequestContext ctx = RequestContext.getCurrentContext();
    HttpServletResponse response = ctx.getResponse();
    Throwable throwable = ctx.getThrowable();
    logger.error("Exception " + throwable.getMessage()  +" was thrown in filters: ",throwable);
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    ResultMsg resultMsg = ResultMsg.errorMsg("系统错误");
    if (throwable instanceof RateLimiterException || throwable.getCause() instanceof RateLimiterException) {
       resultMsg.setErrorMsg("系统繁忙,稍后重试");
    }
    try {
      response.getWriter().write(JSON.toJSONString(resultMsg));
    } catch (IOException e) {
      logger.error(e.getMessage(),e);
    }
    return null;
  }
  

  @Override
  public String filterType() {
      return "error";
  }

  @Override
  public int filterOrder() {
      return 5;
  }



}
