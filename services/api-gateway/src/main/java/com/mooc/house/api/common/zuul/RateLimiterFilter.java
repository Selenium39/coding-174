package com.mooc.house.api.common.zuul;

import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Component;

import com.google.common.util.concurrent.RateLimiter;
import com.mooc.house.api.common.exception.RateLimiterException;
import com.netflix.zuul.ZuulFilter;

@Component
public class RateLimiterFilter extends ZuulFilter {
  
  private static final RateLimiter RATE_LIMITER = RateLimiter.create(100, 1, TimeUnit.SECONDS);
  

  @Override
  public boolean shouldFilter() {
    return true;
  }

  @Override
  public Object run() {
    if (!RATE_LIMITER.tryAcquire(1)) {
      throw new RateLimiterException();
    }
    return null;
  }
  

  @Override
  public String filterType() {
      return "pre";
  }

  @Override
  public int filterOrder() {
      return -100;
  }
}
