package com.developer.SpringMySQL.controllers;


import com.developer.SpringMySQL.models.AppUsers;
import com.developer.SpringMySQL.models.AppUsersRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    AppUsersRepo appRepo;



    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("lists",appRepo.findAll());
        return  mv;

    }

    @RequestMapping( value = "/save", method= RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("firstname") String firstName, @RequestParam("lastname") String lastName){
        ModelAndView mv = new ModelAndView("redirect:/");
        AppUsers users = new AppUsers();
        users.setFirstName(firstName);
        users.setLastName(lastName);
        appRepo.save(users);
        return  mv;

    }

    @RequestMapping( value = "/view/{id}", method= RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view");
        mv.addObject("lists",appRepo.findById(id).orElse(null));
        return  mv;

    }

    @RequestMapping( value = "/delete/{id}", method= RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        appRepo.deleteById(id);
        return  mv;

    }

    @RequestMapping( value = "/edit/{id}", method= RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("lists",appRepo.findById(id).orElse(null));
        return  mv;

    }

    @RequestMapping( value = "/update", method= RequestMethod.POST)
    public ModelAndView doUpdate(
                                 @RequestParam("id") int id,
                                 @RequestParam("firstname") String firstName,
                                 @RequestParam("lastname") String lastName){
        ModelAndView mv = new ModelAndView("redirect:/");

        AppUsers users = (AppUsers) appRepo.findById(id).orElse(null);
            users.setFirstName(firstName);
            users.setLastName(lastName);
            appRepo.save(users);


        return  mv;

    }
}
