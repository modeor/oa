package org.hx.bean;

import java.io.Serializable;


public class Employee implements Serializable {
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(int empId) {
		emp_id = empId;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String empName) {
		emp_name = empName;
	}

	public String getEmp_sex() {
		return emp_sex;
	}

	public void setEmp_sex(String empSex) {
		emp_sex = empSex;
	}

	public String getEmp_address() {
		return emp_address;
	}

	public void setEmp_address(String empAddress) {
		emp_address = empAddress;
	}

	public String getEmp_phone() {
		return emp_phone;
	}

	public void setEmp_phone(String empPhone) {
		emp_phone = empPhone;
	}

	public String getEmp_job() {
		return emp_job;
	}

	public void setEmp_job(String empJob) {
		emp_job = empJob;
	}

	public String getEmp_img() {
		return emp_img;
	}

	public void setEmp_img(String empImg) {
		emp_img = empImg;
	}

	public Department getDep() {
		return dep;
	}

	public void setDep(Department dep) {
		this.dep = dep;
	}
	public String getEmp_sn() {
		return emp_sn;
	}

	public void setEmp_sn(String empSn) {
		emp_sn = empSn;
	}
	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}
	private int emp_id;
	private String emp_name;
	private String emp_sn;
	private String emp_sex;
	private String emp_address;
	private String emp_phone;
	private String emp_job;
	private String emp_img;
	private Department dep;
	private int flag;
	private User user;
	

}
