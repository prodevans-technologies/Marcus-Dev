package com.marcus.myapp;

import javax.servlet.http.HttpSession;

import org.apache.xmlrpc.XmlRpcException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.marcus.dao.impl.PayBillDAOImpl;
import com.prodevans.marcus.pojo.PayBillDetails;



@Controller
public class PayBillController 
{
	@Autowired
	PayBillDAOImpl payBillDAOImpl;
	public void setPayBillDAOImpl(PayBillDAOImpl payBillDAOImpl) {
		this.payBillDAOImpl = payBillDAOImpl;
	}

	
	@RequestMapping(value = "/payBill", method = RequestMethod.GET)
	public ModelAndView viewBill(ModelMap model, HttpSession session) 
	{
		return  new ModelAndView("paybill/payBill","payBillDetails",new PayBillDetails());
	}
	
	@RequestMapping(value = "/payBillRequest", method = RequestMethod.POST)
	public ModelAndView payBillRequest(ModelMap model, HttpSession session,@ModelAttribute(name="payBillDetails")PayBillDetails bill) throws XmlRpcException 
	{
		bill=payBillDAOImpl.getAccountDetails(bill);
		session.setAttribute("bill",bill);
		return  new ModelAndView("paybill/payBillSendData","bill",bill);
	}
	
	@RequestMapping(value = "/payBillRequestHandler", method = RequestMethod.POST)
	public String payBillRequestHandler(ModelMap model, HttpSession session) 
	{
		return  "paybill/payBillRequestHandler";
	}
	
	@RequestMapping(value = "/payBillResponseHandler", method = RequestMethod.POST)
	public String payBillResponseHandler(ModelMap model, HttpSession session) 
	{
		return  "paybill/payBillResponseHandler";
	}
	
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public ModelAndView sample(ModelMap model, HttpSession session) 
	{
		return  new ModelAndView("paybill/sample","payBillDetails",new PayBillDetails());
	}
	
	@RequestMapping(value = "/ccvCancelResponse", method = RequestMethod.POST)
	public String ccvCancelResponse(ModelMap model, HttpSession session) 
	{
		return  "paybill/ccvCancelResponse";
	}	
}
