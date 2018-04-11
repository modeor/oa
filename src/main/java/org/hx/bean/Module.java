package org.hx.bean;

import java.io.Serializable;
import java.util.Set;

public class Module implements Serializable {
	public int getM_id() {
		return m_id;
	}

	public void setM_id(int mId) {
		m_id = mId;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String mName) {
		m_name = mName;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String mAddress) {
		m_address = mAddress;
	}

	public String getM_path_c() {
		return m_path_c;
	}

	public void setM_path_c(String mPathC) {
		m_path_c = mPathC;
	}

	public String getM_path_n() {
		return m_path_n;
	}

	public void setM_path_n(String mPathN) {
		m_path_n = mPathN;
	}

	public String getM_sn() {
		return m_sn;
	}

	public void setM_sn(String mSn) {
		m_sn = mSn;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public Module getParent() {
		return parent;
	}

	public void setParent(Module parent) {
		this.parent = parent;
	}

	public Set<Module> getChildren() {
		return children;
	}

	public void setChildren(Set<Module> children) {
		this.children = children;
	}

	private int m_id;
	private String m_name;
	private String m_address;
	// 鼠标移上去显示的图片
	private String m_path_c;
	// 鼠标离开显示的图片
	private String m_path_n;
	// 模块编号
	private String m_sn;
	// 是否显示
	private int flag;
	// 父模块
	private Module parent;
	// 子模块
	private Set<Module> children;

}
