package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.AdminAddOffers;
import com.cdac.dto.Recharge;
import com.cdac.dto.User;
import com.cdac.service.AdminOffersService;
import com.cdac.service.RechargeService;

@Controller
public class RechargeController {
	@Autowired
    private RechargeService rechargeService;
	@RequestMapping(value="/prep_recharge_add_form.htm",method = RequestMethod.GET)
	public String prepAddRecharge(ModelMap map)
	{
		map.put("recharge",new Recharge());
		return "recharge_add_form";
	}
	/*@RequestMapping(value="/recharge_add_form1.htm",method = RequestMethod.GET)
	public String prepAddRecharge1(ModelMap map)
	{
		//map.put("recharge",new Recharge());
		return "recharge_add_form";
	}*/
	@RequestMapping(value="/recharge_add.htm", method=RequestMethod.POST)
	public String addRechargeInDb(Recharge recharge,HttpSession session)
	{
		System.out.println(recharge);
		int userId = ((User)session.getAttribute("user")).getUserId();
	    recharge.setUserId(userId);
		rechargeService.addRechargeDetails(recharge);
		return "home";
	}
	@Autowired
	private AdminOffersService adminOffersService;
	@RequestMapping(value="/view_offer.htm", method=RequestMethod.GET)
	public String showOffers(ModelMap map)
	{
		List<AdminAddOffers> li=adminOffersService.seeAllOffers();
		map.put("offerlist",li);
		return "view_offers";
	}
	
	@RequestMapping(value="/recharge_Bill.htm", method=RequestMethod.GET)
	public String seeBills(ModelMap map,HttpSession session)
	{
		int userId = ((User)session.getAttribute("user")).getUserId();
		System.out.println(userId);
		List<Recharge> li = rechargeService.selectBill(userId);
		map.put("rechList", li);
		return "ShowBill";
	}
}
