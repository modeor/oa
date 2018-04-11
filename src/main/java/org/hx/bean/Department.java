package org.hx.bean;

import java.io.Serializable;
import java.util.Set;

public class Department implements Serializable {
	private int dep_id;

	private String dep_sn;

	private Department parent;

	private Set<Department> child;

	private String dep_name;

	private String dep_desc;

	private int flag;

	public Set<Department> getChild() {
		return child;
	}

	public void setChild(Set<Department> child) {
		this.child = child;
	}

	public String getDep_desc() {
		return dep_desc;
	}

	public void setDep_desc(String dep_desc) {
		this.dep_desc = dep_desc;
	}

	public int getDep_id() {
		return dep_id;
	}

	public void setDep_id(int dep_id) {
		this.dep_id = dep_id;
	}

	public String getDep_name() {
		return dep_name;
	}

	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}

	public String getDep_sn() {
		return dep_sn;
	}

	public void setDep_sn(String dep_sn) {
		this.dep_sn = dep_sn;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public Department getParent() {
		return parent;
	}

	public void setParent(Department parent) {
		this.parent = parent;
	}
}
