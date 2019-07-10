package com.test.entity;

public class Idea {
	private int id;
	private String username;
	private String email;
	private String text;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Idea(int id, String username, String emali, String text) {
		this.id = id;
		this.username = username;
		this.email = emali;
		this.text = text;
	}

	public Idea() {

	}
}
