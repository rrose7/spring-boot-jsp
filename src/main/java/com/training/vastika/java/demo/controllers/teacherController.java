package com.training.vastika.java.demo.controllers;

import com.training.vastika.java.demo.models.Teacher;
import com.training.vastika.java.demo.repositories.impl.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class teacherController {
    @Autowired
    private TeacherRepository teacherRepository;

    @RequestMapping(value = {"teachers"}, method = RequestMethod.GET)
    public String index(Model model) {
        List<Teacher> teachers = this.teacherRepository.findAll();
        model.addAttribute("teachers", teachers);
        return "teacher";
    }

    @RequestMapping(value = "teacherInfo", method = RequestMethod.GET)
    public String getInfo(Model model, @RequestParam("teacherId") int id) {
        Teacher teacher = teacherRepository.getOne(id);
        model.addAttribute("teacher", teacher);
        return "teacherInfo";
    }

    @RequestMapping(value = "/teachers/{id}/edit", method = RequestMethod.GET)
    public String getUpdateForm(Model model, @PathVariable("id") int id) {
        Teacher teacher = teacherRepository.getOne(id);
        model.addAttribute("teacher", teacher);
        return "teacherForm";

    }
    @RequestMapping(value = "/teachers/add", method = RequestMethod.GET)
    public String addForm(Model model) {
        Teacher teacher = new Teacher();
        model.addAttribute("teacher", teacher);
        return "teacherForm";

    }
    @RequestMapping(value = "/teachers", method = RequestMethod.POST)
    public String upsertTeacher(@ModelAttribute("teacher") Teacher teacher) {
        this.teacherRepository.save(teacher);

        return "redirect:/teachers";


    }



}

