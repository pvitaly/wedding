package com.peker.wedding.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "GUEST")
public class Guest implements Serializable {
	
	private static final long serialVersionUID = -2088808072414386963L;

	private Integer id;
	
	private String firstName;
	
	private String lastName;
	
	private Guest plusOne;
	
	private GuestTable table;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "FIRST_NAME")
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name = "LAST_NAME")
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@ManyToOne
	@JoinColumn(name = "PLUS_ONE_ID", referencedColumnName = "ID")
	public Guest getPlusOne() {
		return plusOne;
	}

	public void setPlusOne(Guest plusOne) {
		this.plusOne = plusOne;
	}

	@ManyToOne
	@JoinColumn(name = "GUEST_TABLE_ID", referencedColumnName = "ID")
	public GuestTable getTable() {
		return table;
	}

	public void setTable(GuestTable table) {
		this.table = table;
	}
	
}
