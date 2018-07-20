package com.mooc.house.api.common.zuul;

import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import com.google.common.base.Splitter;
import com.google.common.collect.BiMap;
import com.google.common.collect.HashBasedTable;
import com.google.common.collect.HashBiMap;
import com.google.common.collect.Table;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;

/**
 * Created by wangjialuo on 2017/12/18.
 */
@Component
public class PrefixPathZuulFilter extends ZuulFilter {

  @Autowired
  private Environment environment;
  
  private static  AtomicReference<Map<String,Object>> routeMapRef = new AtomicReference<>();
  private static  AtomicReference<Table<String,String,String>> tableRef = new AtomicReference<>();


  @Override
  public String filterType() {
    return "pre";
  }

  @Override
  public int filterOrder() {
    return 6;
  }

  @Override
  public boolean shouldFilter() {
    return true;
  }

  @Override
  public Object run() {
    RequestContext context = RequestContext.getCurrentContext();
    Object orgReqPath = context.get("requestURI");
    String suffix = StringUtils.substringAfterLast(orgReqPath.toString(),"/");
    if (context.get("serviceId") != null){
      String servicePrefix = getSrvPrefix(environment,context.get("serviceId").toString());
      if (servicePrefix !=  null){
        context.put("requestURI", servicePrefix + suffix);
      }
    }
    return null;
  }
  
  
  public static String getSrvPrefix(Environment environment,String serviceId){
    Map<String, Object> props = getRouteMap(environment);
    Table<String,String,String> table = getSrvTable(props);
    Map<String,String> _map = table.column("serviceId");
    if (_map.isEmpty()) {
      _map = table.column("service-id");
    }
    BiMap<String,String> srvName2tag = HashBiMap.create(_map).inverse();
    String tag = srvName2tag.get(serviceId);
    if (tag != null){
       return table.get(tag,"servicePrefix");
    }else {
       return null;
    }
  }
  
  
  public static Table<String,String,String> getSrvTable(Map<String,Object> props){
    Table<String,String,String> table = tableRef.get();
    if (table == null){
      final Table<String,String,String>  _table = HashBasedTable.create();
      props.forEach((k,v) ->{
       if (k.endsWith(".serviceId")
           ||k.endsWith(".service-id")
           ||k.endsWith(".servicePrefix")){
         List<String> list =  Splitter.on(".").omitEmptyStrings().trimResults().splitToList(k);
         _table.put(list.get(0),list.get(1),v.toString());
       }
       });
       tableRef.compareAndSet(null,_table);
    }
    return tableRef.get();
  }

  public static Map<String,Object> getRouteMap(Environment environment){
    Map<String,Object> map =  routeMapRef.get();
    if (map == null){
      RelaxedPropertyResolver resolver = new RelaxedPropertyResolver(environment);
      Map<String, Object> props = resolver.getSubProperties("zuul.routes");
      routeMapRef.compareAndSet(null,props);
    }
    return routeMapRef.get();

  }
  
}
