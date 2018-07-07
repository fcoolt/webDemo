package web.demo.common.base;

import flexjson.JSONSerializer;

/**
 * Json类基类
 * 
 * 类名称：BaseFlexJson 创建时间：2018-01-18
 * 
 * @version 1.0.0
 * 
 */
public class BaseFlexJson
{
  public String serializeToJSONString() throws Exception
  {
    return new JSONSerializer().deepSerialize(this);
  }
}
