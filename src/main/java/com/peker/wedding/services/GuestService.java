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
    private IGuestRepository guestRepository;

    @Autowired
    private IGuestTableService guestTableService;

    @Override
    @Transactional
    public Guest acceptGuest(Guest guest, String guestName, Boolean plusOne, String plusOneName,
            Integer totalPartySize, String messageFromGuest) {
        if (guest.getGuestStatusEnum() == GuestStatusEnum.WAITING) {
            messageFromGuest = checkMessageFromGuest(messageFromGuest);
            guest.setGuestName(guestName);
            guest.setMessageFromGuest(messageFromGuest);
            guest.setGuestStatusEnum(GuestStatusEnum.ACCEPTED);

            setPlusOne(guest, plusOne, plusOneName);

            setTotalPartySize(guest, plusOne, totalPartySize);

        }

        return this.guestRepository.save(guest);

    }

    private String checkMessageFromGuest(String messageFromGuest) {
        if (messageFromGuest.equalsIgnoreCase("null")) {
            messageFromGuest = null;
        }
        return messageFromGuest;
    }

    private void setTotalPartySize(Guest guest, Boolean plusOne, Integer totalPartySize) {
        if (guest.getKidsAllowed()) {
            if (totalPartySize == 0) {
                if (plusOne) {
                    totalPartySize = 2;
                } else {
                    totalPartySize = 1;
                }
            }
            guest.setTotalPartySize(totalPartySize);
        } else {
            if (plusOne) {
                guest.setTotalPartySize(2);
            } else {
                guest.setTotalPartySize(1);
            }
        }
    }

    private void setPlusOne(Guest guest, Boolean plusOne, String plusOneName) {
        if (guest.getPlusOneAllowed()) {
            guest.setPlusOne(plusOne);
            guest.setPlusOneName(plusOneName);
        }
    }

    @Override
    @Transactional
    public Guest declineGuest(Guest guest, String messageFromGuest) {
        if (guest.getGuestStatusEnum() == GuestStatusEnum.WAITING) {
            messageFromGuest = checkMessageFromGuest(messageFromGuest);
            guest.setMessageFromGuest(messageFromGuest);
            guest.setGuestStatusEnum(GuestStatusEnum.DECLINED);
        }

        return this.guestRepository.save(guest);
    }

    @Override
    public Guest findByUniqueId(String uniqueId) {
        if (uniqueId != null && uniqueId.length() > 0) {
            return this.guestRepository.findByUniqueId(uniqueId);
        }
        return null;
    }

    @Override
    @Transactional
    public Guest save(Guest guest) {
        return this.guestRepository.saveAndFlush(guest);
    }

    @Override
    public Guest findOne(Integer id) {
        if (id != null) {
            return this.guestRepository.findOne(id);
        }
        return null;
    }

}
