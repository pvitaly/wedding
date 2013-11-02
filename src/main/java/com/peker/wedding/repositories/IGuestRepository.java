package com.peker.wedding.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.peker.wedding.entities.Guest;

public interface IGuestRepository extends JpaRepository<Guest, Integer> {

}
