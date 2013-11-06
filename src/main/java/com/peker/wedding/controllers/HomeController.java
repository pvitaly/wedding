package com.peker.wedding.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.peker.wedding.entities.Guest;
import com.peker.wedding.services.IGuestService;
import com.peker.wedding.util.GuestStatusEnum;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private IGuestService	guestService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/rsvp", method = RequestMethod.PUT)
	public RedirectView rsvp(String uniqueId, String response, Model model) {
		RedirectView view = null;

		Guest guest = this.guestService.findByUniqueId(uniqueId);

		if (response.equalsIgnoreCase(GuestStatusEnum.DECLINED.toString())) {
			this.guestService.regretGuest(guest);
			view = new RedirectView("/wedding");
		} else if (response.equalsIgnoreCase(GuestStatusEnum.ACCEPTED.toString())) {
			view = new RedirectView("/wedding/rsvp");
		}

		return view;
	}

	@RequestMapping(value = "/rsvp", method = RequestMethod.GET)
	public String rsvp() {
		return "rsvp";
	}

}
