package com.developer.SpringMySQL.controllers;

import com.developer.SpringMySQL.models.PartnerRepo;
import com.developer.SpringMySQL.models.Partners;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class PartnerController {

    public static String UploadDirectory = System.getProperty("user.dir") +"/partner_logo";

    @Autowired
    PartnerRepo partnerRepo;

    @RequestMapping("partners")
    public ModelAndView doHome(){

        ModelAndView mv = new ModelAndView( "partner");
        mv.addObject("lists", partnerRepo.findAll());
        return mv;

    }


    @RequestMapping( value = "/savepartner", method= RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("partnerlogo") MultipartFile partnerlogo,
                               @RequestParam("partnername") String partnername){

        StringBuilder fileNames = new StringBuilder();
        Path fileNamePath = Paths.get(UploadDirectory, partnerlogo.getOriginalFilename());
        fileNames.append(partnerlogo.getOriginalFilename());
        try {

            Files.write(fileNamePath, partnerlogo.getBytes());



        }catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("Upload Path "+UploadDirectory);
        ModelAndView mv = new ModelAndView("redirect:/partners");
        Partners users = new Partners();
        users.setPartnername(partnername);
        users.setPartnerlogo(partnerlogo);
        partnerRepo.save(users);
        return  mv;

    }
}
