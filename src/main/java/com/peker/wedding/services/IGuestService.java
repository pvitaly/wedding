package com.peker.wedding.services;

import com.peker.wedding.entities.Guest;

public interface IGuestService {

    Guest findByUniqueId(String uniqueId);

    Guest acceptGuest(Guest guest, String guestName, Boolean plusOne, String plusOneName, Integer totalPartySize, String messageFromGuest);

    Guest declineGuest(Guest guest, String messageFromGuest);

    Guest save(Guest guest);

    Guest findOne(Integer id);

}
