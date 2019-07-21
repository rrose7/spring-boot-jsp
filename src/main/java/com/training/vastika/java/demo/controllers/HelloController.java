package com.training.vastika.java.demo.controllers;

import com.training.vastika.java.demo.models.Student;
import com.training.vastika.java.demo.repositories.CrudeRepository;
import com.training.vastika.java.demo.repositories.impl.StudentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HelloController {
    private CrudeRepository<Student> studentRepository;

    public HelloController() {
        this.studentRepository = new StudentRepository();
    }

    @RequestMapping(value = {"", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        List<Student> students = this.studentRepository.findAll();
        model.addAttribute("students", students);
        return "index";
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String getInfo(Model model, @RequestParam("studentId") int id) {
        Student student = this.studentRepository.findById(id);
        model.addAttribute("student", student);
        return "info";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(Model model, @PathVariable("id") int id) {
        Student student = this.studentRepository.findById(id);
        model.addAttribute("student", student);
        return "edit";

    }
        @RequestMapping(value = "/update", method = RequestMethod.GET)
        public String update (Model model,@RequestParam("studentId") int id,
        @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
        @RequestParam("gpa") Double gpa){
            Student student = new Student(id, firstName, lastName, gpa);
            studentRepository.update(student);
            index(model);
            return "redirect:/index";


        }

    }

