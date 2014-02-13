package com.peker.wedding.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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

    @RequestMapping(value = "/accept/{uniqueId}", method = RequestMethod.PUT, produces = "application/json")
    public @ResponseBody
    String rsvpAccept(@PathVariable String uniqueId) {
        if (uniqueId != null && uniqueId.length() > 0) {
            Guest guest = this.guestService.findByUniqueId(uniqueId);

            if (guest != null && guest.getId() != null) {
                Guest acceptGuest = this.guestService.acceptGuest(guest);
                return acceptGuest.toString();
            }
        }
        return EMPTY_JSON;
    }

    @RequestMapping(value = "/decline/{uniqueId}", method = RequestMethod.PUT, produces = "application/json")
    public @ResponseBody
    String rsvpRegret(@PathVariable String uniqueId) {
        if (uniqueId != null && uniqueId.length() > 0) {
            Guest guest = this.guestService.findByUniqueId(uniqueId);

            if (guest != null && guest.getId() != null) {
                Guest acceptGuest = this.guestService.regretGuest(guest);
                return acceptGuest.toString();
            }
        }
        return EMPTY_JSON;
    }

    @RequestMapping(value = "rsvp/setPlusOne", method = RequestMethod.POST)
    public @ResponseBody
    String rsvpClearPlusOne(Integer id, Boolean plusOne) {
        Guest guest = this.guestService.findOne(id);
        guest.setPlusOne(plusOne);

        this.guestService.save(guest);

        Gson gson = new Gson();
        String json = gson.toJson(guest);

        return json;
    }

    @RequestMapping(value = "rsvp/savePlusOneName", method = RequestMethod.POST)
    public @ResponseBody
    String addPlusOneFirstName(Integer id, String firstName, String lastName) {
        Guest guest = this.guestService.findOne(id);
        guest.setPlusOneFirstName(firstName);
        guest.setPlusOneLastName(lastName);

        this.guestService.save(guest);

        String name = guest.getPlusOneFirstName() + " " + guest.getPlusOneLastName();

        return name;
    }

    @RequestMapping(value = "rsvp/setKids", method = RequestMethod.POST)
    public @ResponseBody
    String rsvpSetKids(Integer id, Boolean bringingKids) {
        Guest guest = this.guestService.findOne(id);
        guest.setBringingKids(bringingKids);

        this.guestService.save(guest);

        return null;
    }

    @RequestMapping(value = "rsvp/saveKidsNames", method = RequestMethod.POST)
    public @ResponseBody
    String saveKidsNames(Integer id, String names) {
        Guest guest = this.guestService.findOne(id);
        guest.setKidNames(names);

        this.guestService.save(guest);

        return null;
    }

}
