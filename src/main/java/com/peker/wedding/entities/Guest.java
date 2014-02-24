package com.peker.wedding.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

import com.peker.wedding.util.GuestStatusEnum;
import com.peker.wedding.util.NamePrefixEnum;

@Entity
@Table(name = "GUEST")
public class Guest extends BaseEntity {

    private static final long serialVersionUID = -2088808072414386963L;

    private String uniqueId;

    private String guestName;

    private GuestStatusEnum guestStatusEnum;

    private NamePrefixEnum namePrefixEnum;

    private String plusOneName;

    private Boolean plusOne;

    private Boolean plusOneAllowed;

    private GuestTable guestTable;

    private Boolean kidsAllowed;

    private Integer totalPartySize;

    private String messageFromGuest;

    @Column(name = "UNIQUE_ID")
    public String getUniqueId() {
        return uniqueId;
    }

    public void setUniqueId(String uniqueId) {
        this.uniqueId = uniqueId;
    }

    @Column(name = "GUEST_NAME")
    public String getGuestName() {
        return guestName;
    }

    public void setGuestName(String guestName) {
        this.guestName = guestName;
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

    @Column(name = "PLUS_ONE_NAME")
    public String getPlusOneName() {
        return plusOneName;
    }

    public void setPlusOneName(String plusOneName) {
        this.plusOneName = plusOneName;
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

    @Column(name = "TOTAL_PARTY_SIZE")
    public Integer getTotalPartySize() {
        return totalPartySize;
    }

    public void setTotalPartySize(Integer totalPartySize) {
        this.totalPartySize = totalPartySize;
    }

    @Column(name = "MESSAGE_FROM_GUEST")
    @Type(type = "text")
    public String getMessageFromGuest() {
        return messageFromGuest;
    }

    public void setMessageFromGuest(String messageFromGuest) {
        this.messageFromGuest = messageFromGuest;
    }

}
