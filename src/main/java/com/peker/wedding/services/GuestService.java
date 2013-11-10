package com.peker.wedding.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.peker.wedding.entities.Guest;
import com.peker.wedding.repositories.IGuestRepository;
import com.peker.wedding.util.GuestStatusEnum;

@Service
public class GuestService implements IGuestService {

	@Autowired
	private IGuestRepository	guestRepository;

	@Autowired
	private IGuestTableService	guestTableService;

	@Override
	@Transactional
	public void acceptGuest(Guest guest) {
		guest.setGuestStatusEnum(GuestStatusEnum.ACCEPTED);
		this.guestRepository.save(guest);

	}

	@Override
	@Transactional
	public void regretGuest(Guest guest) {
		guest.setGuestStatusEnum(GuestStatusEnum.DECLINED);
		this.guestRepository.save(guest);
	}

	@Override
	public Guest findByUniqueId(String uniqueId) {
		return this.guestRepository.findByUniqueId(uniqueId);
	}

	@Override
	@Transactional
	public Guest save(Guest guest) {
		return this.guestRepository.saveAndFlush(guest);
	}

	@Override
	public Guest findOne(Integer id) {
		return this.guestRepository.findOne(id);
	}

}
