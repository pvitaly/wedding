package com.peker.wedding.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name = "GUEST_TABLE")
public class GuestTable implements Serializable {

	private static final long	serialVersionUID	= 3473217873021430988L;

	private Integer				id;

	private Integer				tableNum;

	private Integer				availableSeats;

	private Boolean				reserved;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "TABLE_NUM")
	public Integer getTableNum() {
		return tableNum;
	}

	public void setTableNum(Integer tableNum) {
		this.tableNum = tableNum;
	}

	@Column(name = "AVAILABLE_SEATS")
	public Integer getAvailableSeats() {
		return availableSeats;
	}

	public void setAvailableSeats(Integer availableSeats) {
		this.availableSeats = availableSeats;
	}

	@Type(type = "yes_no")
	@Column(name = "RESERVED")
	public Boolean getReserved() {
		return reserved;
	}

	public void setReserved(Boolean reserved) {
		this.reserved = reserved;
	}

}
