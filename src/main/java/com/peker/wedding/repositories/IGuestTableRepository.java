package com.peker.wedding.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.peker.wedding.entities.GuestTable;

public interface IGuestTableRepository extends
		JpaRepository<GuestTable, Integer> {

}
