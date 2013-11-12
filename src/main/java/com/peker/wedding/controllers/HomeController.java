package com.peker.wedding.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.peker.wedding.entities.Guest;
import com.peker.wedding.services.IGuestService;
import com.peker.wedding.util.GuestStatusEnum;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final String	REDIRECT	= "redirect:/";
	@Autowired
	private IGuestService		guestService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/rsvp", method = RequestMethod.PUT)
	public RedirectView rsvp(String uniqueId, String response, Model model) {
		RedirectView view = null;

		if (uniqueId != null) {
			Guest guest = this.guestService.findByUniqueId(uniqueId);

			if (guest == null || guest.getId() == null) {
				view = new RedirectView("/");
				return view;
			}

			if (response.equalsIgnoreCase(GuestStatusEnum.DECLINED.toString())) {
				this.guestService.regretGuest(guest);
				view = new RedirectView("/");
			} else if (response.equalsIgnoreCase(GuestStatusEnum.ACCEPTED.toString())) {
				this.guestService.acceptGuest(guest);
				view = new RedirectView("/rsvp?uniqueId=" + uniqueId);
			}

			return view;
		}
		view = new RedirectView("/");
		return view;
	}

	@RequestMapping(value = "/rsvp", method = RequestMethod.GET)
	public String rsvp(String uniqueId, Model model) {
		if (uniqueId != null) {
			Guest guest = this.guestService.findByUniqueId(uniqueId);

			if (guest == null || guest.getId() == null) {
				return REDIRECT;
			}

			model.addAttribute("guest", guest);
			return "rsvp";
		}
		return REDIRECT;
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
