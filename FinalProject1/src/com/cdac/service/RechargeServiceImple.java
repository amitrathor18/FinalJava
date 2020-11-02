package com.cdac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.RechargeDao;
import com.cdac.dto.Recharge;
@Service
public class RechargeServiceImple implements RechargeService{
 
	@Autowired
	private RechargeDao rechargeDao;
	@Override
	public void addRechargeDetails(Recharge recharge) {
	   rechargeDao.insertRecharge(recharge);
		
	}

}
