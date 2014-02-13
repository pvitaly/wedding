package com.peker.wedding.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name = "GUEST_TABLE")
public class GuestTable extends BaseEntity {

    private static final long serialVersionUID = 4217722177408878438L;

    private Integer tableNum;

    private Integer availableSeats;

    private Boolean reserved;

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
