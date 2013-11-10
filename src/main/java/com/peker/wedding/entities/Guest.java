package com.peker.wedding.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

import com.peker.wedding.util.GuestStatusEnum;
import com.peker.wedding.util.NamePrefixEnum;

@Entity
@Table(name = "GUEST")
public class Guest implements Serializable {

	private static final long	serialVersionUID	= -2088808072414386963L;

	private Integer				id;

	private String				uniqueId;

	private String				firstName;

	private String				lastName;

	private GuestStatusEnum		guestStatusEnum;

	private NamePrefixEnum		namePrefixEnum;

	private String				plusOneFirstName;

	private String				plusOneLastName;

	private Boolean				plusOne;

	private Boolean				plusOneAllowed;

	private GuestTable			guestTable;

	private Boolean				kidsAllowed;

	private Boolean				bringingKids;

	private String				kidNames;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "UNIQUE_ID")
	public String getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
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

	@Enumerated(EnumType.STRING)
	@Column(name = "STATUS")
	public GuestStatusEnum getGuestStatusEnum() {
		return guestStatusEnum;
	}

	public void setGuestStatusEnum(GuestStatusEnum guestStatusEnum) {
		this.guestStatusEnum = guestStatusEnum;
	}

	@Enumerated(EnumType.STRING)
	@Column(name = "PREFIX")
	public NamePrefixEnum getNamePrefixEnum() {
		return namePrefixEnum;
	}

	public void setNamePrefixEnum(NamePrefixEnum namePrefixEnum) {
		this.namePrefixEnum = namePrefixEnum;
	}

	@Column(name = "PLUS_ONE_FIRST_NAME")
	public String getPlusOneFirstName() {
		return plusOneFirstName;
	}

	public void setPlusOneFirstName(String plusOneFirstName) {
		this.plusOneFirstName = plusOneFirstName;
	}

	@Column(name = "PLUS_ONE_LAST_NAME")
	public String getPlusOneLastName() {
		return plusOneLastName;
	}

	public void setPlusOneLastName(String plusOneLastName) {
		this.plusOneLastName = plusOneLastName;
	}

	@Type(type = "yes_no")
	@Column(name = "PLUS_ONE")
	public Boolean getPlusOne() {
		return plusOne;
	}

	public void setPlusOne(Boolean plusOne) {
		this.plusOne = plusOne;
	}

	@Type(type = "yes_no")
	@Column(name = "PLUS_ONE_ALLOWED")
	public Boolean getPlusOneAllowed() {
		return plusOneAllowed;
	}

	public void setPlusOneAllowed(Boolean plusOneAllowed) {
		this.plusOneAllowed = plusOneAllowed;
	}

	@ManyToOne
	@JoinColumn(name = "GUEST_TABLE_ID", referencedColumnName = "ID")
	public GuestTable getGuestTable() {
		return guestTable;
	}

	public void setGuestTable(GuestTable guestTable) {
		this.guestTable = guestTable;
	}

	@Type(type = "yes_no")
	@Column(name = "KIDS_ALLOWED")
	public Boolean getKidsAllowed() {
		return kidsAllowed;
	}

	public void setKidsAllowed(Boolean kidsAllowed) {
		this.kidsAllowed = kidsAllowed;
	}

	@Type(type = "yes_no")
	@Column(name = "BRINGING_KIDS")
	public Boolean getBringingKids() {
		return bringingKids;
	}

	public void setBringingKids(Boolean bringingKids) {
		this.bringingKids = bringingKids;
	}

	@Column(name = "KIDS_NAMES")
	public String getKidNames() {
		return kidNames;
	}

	public void setKidNames(String kidNames) {
		this.kidNames = kidNames;
	}

}
