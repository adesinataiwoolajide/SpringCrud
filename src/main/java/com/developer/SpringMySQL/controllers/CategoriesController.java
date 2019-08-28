package com.developer.SpringMySQL.controllers;

import com.developer.SpringMySQL.models.Categories;
import com.developer.SpringMySQL.models.CategoriesRepo;
import com.developer.SpringMySQL.models.CategoryLanguage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoriesController {

    @Autowired
    CategoriesRepo categoriesRepo;
    CategoryLanguage categoryLanguage;
//    Configuration con = new Configuration().configure().addAnnotatedClass(Categories.class);
//    SessionFactory sf = con.buildSessionFactory();
//    Session session = sf.openSession();


    @RequestMapping("categories")
    public ModelAndView doHome(){
        ModelAndView mv =new ModelAndView("category");
        mv.addObject("lists",categoriesRepo.findAll());
//        session.beginTransaction();
//        Query query = session.createSQLQuery("select * from categories");
//        List<Categories> categoriesList = query.list();
//        for( Categories s : categoriesList){
//            System.out.println(s);
//        }


        return  mv;
    }

    @RequestMapping( value = "/savecategories", method= RequestMethod.POST)
    public ModelAndView doSave(
            @RequestParam("categoryname") String categoryname,
            @RequestParam("category_language") String categorylanguage){
        ModelAndView mv = new ModelAndView("redirect:/categories");
        Categories users = new Categories();
        CategoryLanguage lang = new CategoryLanguage();
        lang.setCategorylanguage(categorylanguage);
        users.setCategoryname(categoryname);
        users.setCategoryLanguage(lang);
        categoriesRepo.save(users);
        return  mv;


    }

    @RequestMapping( value = "/delete_category/{id}", method= RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/categories");
        categoriesRepo.deleteById(id);
        return  mv;

    }

    @RequestMapping( value = "/edit_category/{id}", method= RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit_category");
        mv.addObject("lists",categoriesRepo.findById(id).orElse(null));
        return  mv;

    }

    @RequestMapping( value = "/updatecategories", method= RequestMethod.POST)
    public ModelAndView doUpdate(
            @RequestParam("id") int id,
            @RequestParam("categoryname") String categoryname){
        ModelAndView mv = new ModelAndView("redirect:/categories");

        Categories users = (Categories) categoriesRepo.findById(id).orElse(null);
        users.setCategoryname(categoryname);
        categoriesRepo.save(users);
        return  mv;

    }

}
