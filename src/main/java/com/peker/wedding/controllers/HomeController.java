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
			view = new RedirectView("/");
		} else if (response.equalsIgnoreCase(GuestStatusEnum.ACCEPTED.toString())) {
			this.guestService.acceptGuest(guest);
			view = new RedirectView("/rsvp?uniqueId=" + uniqueId);
		}

		return view;
	}

	@RequestMapping(value = "/rsvp", method = RequestMethod.GET)
	public String rsvp(String uniqueId, Model model) {
		Guest guest = this.guestService.findByUniqueId(uniqueId);

		model.addAttribute("guest", guest);
		return "rsvp";
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

	@RequestMapping(value = "rsvp/addPlusOneFirstName", method = RequestMethod.POST)
	public @ResponseBody
	String addPlusOneFirstName(Integer id, String firstName) {
		Guest guest = this.guestService.findOne(id);
		guest.setPlusOneFirstName(firstName);

		this.guestService.save(guest);

		return null;
	}

	@RequestMapping(value = "rsvp/addPlusOneLastName", method = RequestMethod.POST)
	public @ResponseBody
	String addPlusOneLastName(Integer id, String lastName) {
		Guest guest = this.guestService.findOne(id);
		guest.setPlusOneLastName(lastName);

		this.guestService.save(guest);

		return null;
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
