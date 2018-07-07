package web.demo.common.base;

import java.util.ArrayList;
import java.util.List;

/**
 * Json信息类
 * 
 * 类名称：BaseJsonData 创建时间：2018-01-18
 * 
 * @version 1.0.0
 * 
 */
public class BaseJsonData extends BaseFlexJson {
	
	private Object items = null;
	private int totalCount = 0;
	private String detail = "操作成功";
	private boolean status = true;
	private Object addon = null;

	public Object getItems() {
		return this.items;
	}

	public void setItems(Object items) {
		this.items = items;
	}

	public int getTotalCount() {
		return this.totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Object getAddon() {
		return this.addon;
	}

	public void setAddon(Object addon) {
		this.addon = addon;
	}

	public static void main(String[] args) throws Exception {
		BaseJsonData data = new BaseJsonData();
		List<String> list = new ArrayList<String>();
		list.add("hello world!");
		data.setItems(list);
		System.out.println(data.serializeToJSONString());
	}
}
