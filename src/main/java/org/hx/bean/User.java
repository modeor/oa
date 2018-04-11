package org.hx.bean;

import java.io.Serializable;


public class User implements Serializable {
	public int getU_id() {
		return u_id;
	}

	public void setU_id(int uId) {
		u_id = uId;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String uName) {
		u_name = uName;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String uPwd) {
		u_pwd = uPwd;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	private int u_id;
	private String u_name;
	private String u_pwd;
	private int flag;
	private Group group;
	private Employee emp;
}
