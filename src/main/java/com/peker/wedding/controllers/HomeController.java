package com.peker.wedding.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.peker.wedding.entities.Guest;
import com.peker.wedding.services.IGuestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    private static final String EMPTY_JSON = "{}";

    @Autowired
    private IGuestService guestService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return EMPTY_JSON;
    }

    @RequestMapping(value = "/getGuest", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody
    String getGuest(String uniqueId) {
        if (uniqueId != null && uniqueId.length() > 0) {
            Guest guest = this.guestService.findByUniqueId(uniqueId);

            if (guest != null && guest.getId() != null) {

                return guest.toString();
            }
        }
        return EMPTY_JSON;
    }

    @RequestMapping(value = "/accept/{uniqueId}/{guestName}/{plusOne}/{plusOneName}/{totalPartySize}/{messageFromGuest}", method = RequestMethod.PUT, produces = "application/json")
    public @ResponseBody
    String rsvpAccept(@PathVariable String uniqueId, @PathVariable String guestName, @PathVariable Boolean plusOne,
            @PathVariable String plusOneName, @PathVariable Integer totalPartySize,
            @PathVariable String messageFromGuest) {
        if (uniqueId != null && uniqueId.length() > 0) {
            Guest guest = this.guestService.findByUniqueId(uniqueId);

            if (guest != null && guest.getId() != null) {
                Guest acceptGuest = this.guestService.acceptGuest(guest, guestName, plusOne, plusOneName,
                        totalPartySize, messageFromGuest);
                return acceptGuest.toString();
            }
        }
        return EMPTY_JSON;
    }

    @RequestMapping(value = "/decline/{uniqueId}/{messageFromGuest}", method = RequestMethod.PUT, produces = "application/json")
    public @ResponseBody
    String rsvpRegret(@PathVariable String uniqueId, @PathVariable String messageFromGuest) {
        if (uniqueId != null && uniqueId.length() > 0) {
            Guest guest = this.guestService.findByUniqueId(uniqueId);

            if (guest != null && guest.getId() != null) {
                Guest acceptGuest = this.guestService.declineGuest(guest, messageFromGuest);
                return acceptGuest.toString();
            }
        }
        return EMPTY_JSON;
    }

}
