package com.developer.SpringMySQL.controllers;

import com.developer.SpringMySQL.models.Categories;
import com.developer.SpringMySQL.models.CategoriesRepo;
import com.developer.SpringMySQL.models.Projects;
import com.developer.SpringMySQL.models.ProjectsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ProjectController {

    @Autowired
    ProjectsRepo projectsRepo;
    CategoriesRepo categoriesRepo;

//    Configuration con = new Configuration();
//    SessionFactory sf = con.buildSessionFactory();
//    Session session = sf.openSession();

    @RequestMapping("/projects")
    public ModelAndView doHome(){
        Categories categories = new Categories();
        List<Categories> list = categories.getList();
        ModelAndView mv = new ModelAndView("projects");
        mv.addObject("lists", projectsRepo.findAll());
        mv.addObject("listing", list);
        System.out.println(list);

        return mv;

    }

    @RequestMapping( value = "/saveprojects", method= RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("project_name") String projectname,
                               @RequestParam("project_category") String categories,
                               @RequestParam("project_description") String projectdescription){
        ModelAndView mv = new ModelAndView("redirect:/projects");
        Projects projects = new Projects();
        projects.setProjectname(projectname);
        projects.setCategories(categories);
        projects.setProjectdescription(projectdescription);
        //projectsRepo.save(projects);
        //session.save();
        return  mv;

    }

    @RequestMapping( value = "/delete_project/{id}", method= RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/projects");
        projectsRepo.deleteById(id);
        return  mv;

    }

    @RequestMapping( value = "/edit_project/{id}", method= RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit_project");
        mv.addObject("lists",projectsRepo.findById(id).orElse(null));
        return  mv;

    }

    @RequestMapping( value = "/updateprojects", method= RequestMethod.POST)
    public ModelAndView doUpdate(
            @RequestParam("id") int id,
            @RequestParam("project_name") String projectname,
            @RequestParam("project_category") String categories,
            @RequestParam("project_description") String projectdescription){
        ModelAndView mv = new ModelAndView("redirect:/projects");

        Projects projects = (Projects) projectsRepo.findById(id).orElse(null);
        projects.setProjectname(projectname);
        projects.setCategories(categories);
        projects.setProjectdescription(projectdescription);
        projectsRepo.save(projects);
        return  mv;

    }
}
