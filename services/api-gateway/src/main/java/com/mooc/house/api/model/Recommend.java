package com.mooc.house.api.model;

import java.util.Date;

public class Recommend {
  
  private Long id;
  private Long houseId;
  private Integer type;
  private Integer userId;
  private Integer district;
  private Date    createTime;
  
  public Long getId() {
    return id;
  }
  public void setId(Long id) {
    this.id = id;
  }
  public Long getHouseId() {
    return houseId;
  }
  public void setHouseId(Long houseId) {
    this.houseId = houseId;
  }
  public Integer getType() {
    return type;
  }
  public void setType(Integer type) {
    this.type = type;
  }
  public Integer getUserId() {
    return userId;
  }
  public void setUserId(Integer userId) {
    this.userId = userId;
  }
  public Integer getDistrict() {
    return district;
  }
  public void setDistrict(Integer district) {
    this.district = district;
  }
  public Date getCreateTime() {
    return createTime;
  }
  public void setCreateTime(Date createTime) {
    this.createTime = createTime;
  }

}
