package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.Recharge;
import com.cdac.dto.User;
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
	@RequestMapping(value="/recharge_add.htm", method=RequestMethod.POST)
	public String addRechargeInDb(Recharge recharge,HttpSession session)
	{
		System.out.println(recharge);
		int userId = ((User)session.getAttribute("user")).getUserId();
	    recharge.setUserId(userId);
		rechargeService.addRechargeDetails(recharge);
		return "home";
	}
}
