package org.hx.bean;

import java.io.Serializable;
import java.util.Set;


public class Group implements Serializable {

	private int g_id;
	private String g_name;
	private int flag;
	private String g_sn;
	private Set<User> users;

	public int getG_id() {
		return g_id;
	}

	public void setG_id(int gId) {
		g_id = gId;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String gName) {
		g_name = gName;
	}

	public String getG_sn() {
		return g_sn;
	}

	public void setG_sn(String gSn) {
		g_sn = gSn;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
}
