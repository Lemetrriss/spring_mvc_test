package com.coreteka;

import com.coreteka.pojo.Student;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
//@RequestMapping("/student")
public class StudentController {

    @Value("#{countryOptions}")
    private Map<String, String> countryList;

    @RequestMapping("/studentForm")
    public String showForm(Model model) {
        System.out.println("create Student");
        Student student = new Student();
        model.addAttribute("student", student);
        model.addAttribute("countryList", countryList);
        return "student-form";
    }

    @RequestMapping("/processStudentForm")
    public String confirmForm(@ModelAttribute("student") Student student) {
        System.out.println("Student " + student.getFirstName() + " " + student.getLastName() + " from " + student.getCountry());
        return "student-confirmation";
    }
}
