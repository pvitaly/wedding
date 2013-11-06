package com.peker.wedding.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peker.wedding.entities.Guest;
import com.peker.wedding.entities.GuestTable;
import com.peker.wedding.repositories.IGuestTableRepository;

@Service
public class GuestTableService implements IGuestTableService {

	@Autowired
	private IGuestTableRepository	guestTableRepository;

	@Override
	public void guestAccept(Guest guest) {
		GuestTable guestTable = guest.getGuestTable();
		Integer availableSeats = guestTable.getAvailableSeats();

		adjustAvailableSeats(guest, guestTable, availableSeats);

		this.guestTableRepository.save(guestTable);

	}

	private void adjustAvailableSeats(Guest guest, GuestTable guestTable, Integer availableSeats) {
		if (guest.getPlusOne()) {
			availableSeats -= 2;
			guestTable.setAvailableSeats(availableSeats);

		} else {
			availableSeats -= 1;
			guestTable.setAvailableSeats(availableSeats);
		}
	}

}
