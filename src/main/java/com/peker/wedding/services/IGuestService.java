package com.peker.wedding.services;

import com.peker.wedding.entities.Guest;

public interface IGuestService {

	Guest findByUniqueId(String uniqueId);

	Guest acceptGuest(Guest guest);

	Guest regretGuest(Guest guest);

	Guest save(Guest guest);

	Guest findOne(Integer id);

}
