package com.training.vastika.java.demo.controllers;

import com.training.vastika.java.demo.models.Student;
import com.training.vastika.java.demo.repositories.CrudeRepository;
import com.training.vastika.java.demo.repositories.impl.StudentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class HelloController {
    private CrudeRepository<Student> studentRepository;

    public HelloController() {
        this.studentRepository = new StudentRepository();
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(Model model) {
        List<Student> students = this.studentRepository.findAll();

        model.addAttribute("students", students);
        return "index";
    }

    @RequestMapping(value = "/info/{id}", method = RequestMethod.GET)
    public String getInfo(Model model, @PathVariable("id") int id) {
        Student student = this.studentRepository.findById(id);
        model.addAttribute("student", student);
        return "info";
    }

}