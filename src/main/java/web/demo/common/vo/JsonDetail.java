package web.demo.common.vo;

import web.demo.common.base.BaseFlexJson;

public class JsonDetail extends BaseFlexJson {

	private Object items = null;
	private int totalCount = 0;
	private String info = "操作成功";
	private boolean status = true;

	public Object getItems() {
		return items;
	}

	public void setItems(Object items) {
		this.items = items;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
