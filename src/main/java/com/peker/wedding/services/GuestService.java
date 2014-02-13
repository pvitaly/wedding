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
    public Guest acceptGuest(Guest guest) {
        if (guest.getGuestStatusEnum() == GuestStatusEnum.WAITING) {
            guest.setGuestStatusEnum(GuestStatusEnum.ACCEPTED);
        }

        return this.guestRepository.save(guest);

    }

    @Override
    @Transactional
    public Guest regretGuest(Guest guest) {
        if (guest.getGuestStatusEnum() == GuestStatusEnum.WAITING) {
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
