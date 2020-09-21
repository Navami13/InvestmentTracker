package com.prototype.file.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Assets {
	@Id
	@Column(name="Name")
	private String Name;
	@Column(name="Type")
	private String Type;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
}
