package com.peker.wedding.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import com.google.gson.Gson;

@MappedSuperclass
public class BaseEntity implements Serializable {

    private static final long serialVersionUID = -6504971086047216486L;

    private Integer id;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", unique = true, nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        Gson gson = new Gson();
        String json = gson.toJson(this);

        return json;
    }

}
