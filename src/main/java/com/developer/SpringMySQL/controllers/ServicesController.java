package com.developer.SpringMySQL.controllers;

import com.developer.SpringMySQL.models.Services;
import com.developer.SpringMySQL.models.ServicesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class ServicesController {

    @Autowired
    ServicesRepo servicesRepo;

    @RequestMapping("services")
    public ModelAndView doHome(){

        ModelAndView mv = new ModelAndView("service");
        mv.addObject("lists", servicesRepo.findAll());
        return mv;
    }

    @RequestMapping( value = "/saveservices", method= RequestMethod.POST)
    public ModelAndView doSave(
            @RequestParam("servicename") String servicename) {
        ModelAndView mv = new ModelAndView("redirect:/services");
        Services services = new Services();
        services.setServicename(servicename);
        servicesRepo.save(services);
        return  mv;

    }

    @RequestMapping(value="delete_service/{serviceid}", method= RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable(name = "serviceid") Integer serviceid) {
        ModelAndView mv = new ModelAndView("redirect:/services");
        servicesRepo.deleteById(serviceid);
        return mv;
    }

    @RequestMapping( value = "/edit_service/{serviceid}", method= RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("serviceid") Integer serviceid){
        ModelAndView mv = new ModelAndView("edit_service");
        mv.addObject("lists",servicesRepo.findById(serviceid).orElse(null));
        return  mv;

    }

    @RequestMapping( value = "/updateservices", method= RequestMethod.POST)
    public ModelAndView doUpdate(
            @RequestParam("serviceid") Integer serviceid,
            @RequestParam("servicename") String servicename) {
        ModelAndView mv = new ModelAndView("redirect:/services");
        Services services = (Services) servicesRepo.findById(serviceid).orElse(null);
        services.setServicename(servicename);
        servicesRepo.save(services);
        return  mv;
    }
}
