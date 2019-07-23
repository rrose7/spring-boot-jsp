package com.training.vastika.java.demo.controllers;

import com.training.vastika.java.demo.models.Student;
import com.training.vastika.java.demo.repositories.impl.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class studentController {
    @Autowired
    private StudentRepository studentRepository;

    @RequestMapping(value = {"/students"}, method = RequestMethod.GET)
    public String index(Model model) {
        List<Student> students = this.studentRepository.findAll();
        model.addAttribute("students", students);
        return "student";
    }

    @RequestMapping(value = "/studentInfo", method = RequestMethod.GET)
    public String getInfo(Model model, @RequestParam("studentId") int id) {
        Student student = studentRepository.getOne(id);
        model.addAttribute("student", student);
        return "studentInfo";
    }

    @RequestMapping(value = "/students/{id}/edit", method = RequestMethod.GET)
    public String getUpdateForm(Model model, @PathVariable("id") int id) {
        Student student = studentRepository.getOne(id);
        model.addAttribute("student", student);
        return "StudentForm";

    }
    @RequestMapping(value = "/students/add", method = RequestMethod.GET)
    public String addForm(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        return "StudentForm";

    }
    @RequestMapping(value = "/students", method = RequestMethod.POST)
    public String upsertStudent(@ModelAttribute("student") Student student) {
        this.studentRepository.save(student);

        return "redirect:/students";


    }



}

