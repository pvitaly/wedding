package com.peker.wedding.services;

import com.peker.wedding.entities.Guest;

public interface IGuestService {

	Guest findByUniqueId(String uniqueId);

	void acceptGuest(Guest guest);

	void regretGuest(Guest guest);

}
