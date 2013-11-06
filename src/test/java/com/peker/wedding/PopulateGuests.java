package com.peker.wedding;

import java.util.List;
import java.util.Random;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.peker.wedding.config.PersistenceJPAConfig;
import com.peker.wedding.entities.Guest;
import com.peker.wedding.repositories.IGuestRepository;
import com.peker.wedding.repositories.IGuestTableRepository;
import com.peker.wedding.util.GuestStatusEnum;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { PersistenceJPAConfig.class })
public class PopulateGuests {

	private Random					random	= new Random();

	@Autowired
	private IGuestRepository		guestRepository;

	@Autowired
	private IGuestTableRepository	guestTableRepository;

	static final String				AB		= "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	@Test
	@Ignore
	public void addGuests() throws Exception {
		for (int i = 0; i < 75; i++) {
			Guest guest = new Guest();
			guest.setGuestStatusEnum(GuestStatusEnum.WAITING);
			guest.setPlusOneAllowed(true);
			guest.setFirstName("FirstName" + random.nextInt());
			guest.setLastName("LastName" + random.nextInt());
			guestRepository.save(guest);
		}
	}

	@Test
	@Ignore
	public void generateUID() throws Exception {
		List<Guest> list = this.guestRepository.findAll();

		for (Guest guest : list) {
			guest.setUniqueId(this.randomString(5));
			this.guestRepository.save(guest);
		}
	}

	private String randomString(int len) {
		StringBuilder sb = new StringBuilder(len);
		for (int i = 0; i < len; i++)
			sb.append(AB.charAt(random.nextInt(AB.length())));
		return sb.toString().toUpperCase();
	}

}
