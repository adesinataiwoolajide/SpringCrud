package com.developer.SpringMySQL.controllers;

import com.developer.SpringMySQL.models.Staff;
import com.developer.SpringMySQL.models.StaffRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StaffController {

    @Autowired
    StaffRepo staffRepo;

    @RequestMapping("staff")
    public ModelAndView doHome(){

        ModelAndView mv =new ModelAndView("staff");
        mv.addObject("lists", staffRepo.findAll());
        return  mv;
    }

    @RequestMapping( value = "/saving_staff", method= RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("staff_name") String staffname,
                               @RequestParam("email") String email,
                               @RequestParam("phone_number") Long phonenumber,
                               @RequestParam("staff_type") String stafftype){
        ModelAndView mv = new ModelAndView("redirect:/staff");
        Staff staff = new Staff();
        staff.setStaffname(staffname);
        staff.setEmail(email);
        staff.setPhonenumber(phonenumber);
        staff.setStafftype(stafftype);
        staffRepo.save(staff);
        return  mv;

    }

    @RequestMapping( value = "/delete_staff/{id}", method= RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/staff");
        staffRepo.deleteById(id);
        return  mv;

    }

    @RequestMapping( value = "/edit_staff/{id}", method= RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit_staff");
        mv.addObject("lists",staffRepo.findById(id).orElse(null));
        return  mv;

    }

    @RequestMapping( value = "/update_staff", method= RequestMethod.POST)
    public ModelAndView doUpdate(
            @RequestParam("id") int id,
            @RequestParam("staff_name") String staffname,
            @RequestParam("email") String email,
            @RequestParam("phone_number") Long phonenumber,
            @RequestParam("staff_type") String stafftype){
        ModelAndView mv = new ModelAndView("redirect:/staff");

        Staff staff = (Staff) staffRepo.findById(id).orElse(null);
        staff.setStaffname(staffname);
        staff.setEmail(email);
        staff.setPhonenumber(phonenumber);
        staff.setStafftype(stafftype);
        staffRepo.save(staff);
        return  mv;

    }
}
