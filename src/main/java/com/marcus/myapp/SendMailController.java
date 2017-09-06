package com.marcus.myapp;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.xmlrpc.XmlRpcException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.marcus.dao.impl.SendMailDAOImpl;
import com.prodevans.marcus.pojo.SendMailDetails;

@Controller
public class SendMailController {

    @Autowired
    SendMailDAOImpl feedbackDAOImpl;

    public SendMailDAOImpl getFeedbackDAOImpl() {
        return feedbackDAOImpl;
    }

    @RequestMapping(value = "/contactus", method = RequestMethod.GET)
    public ModelAndView contactus(ModelMap model, HttpSession session) {
        return new ModelAndView("contactus", "contactusDetails", new SendMailDetails());
    }

    @RequestMapping(value = "/contactusRequestPage", method = RequestMethod.POST)
    public String contactusRequest(ModelMap model, HttpSession session, @ModelAttribute(name = "contactusDetails") SendMailDetails feedback) throws XmlRpcException {
        boolean result = feedbackDAOImpl.sentMailContactUs(feedback);
        return "redirect:contactus";
    }

    @RequestMapping(value = "/newconnection", method = RequestMethod.GET)
    public ModelAndView newconnection(Locale locale, Model model) {

        return new ModelAndView("newconnection", "newConnectionDetails", new SendMailDetails());

    }

    @RequestMapping(value = "/newconnectionRequestPage", method = RequestMethod.POST)
    public String newconnectionRequestPage(ModelMap model, HttpSession session, @ModelAttribute(name = "newconnection") SendMailDetails feedback) throws XmlRpcException {
        boolean result = feedbackDAOImpl.sentMailNewConnection(feedback);
        return "redirect:newconnection";
    }

}
