package com.codingdojo.dojosandninjas.dojosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import com.codingdojo.dojosandninjas.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.dojosandninjas.services.DojoService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DojosController {
    private final DojoService dojoService;
    
    public DojosController(DojoService dojoService){
        this.dojoService = dojoService;
    }

    @GetMapping("/dojos")
    public String index(Model model, @ModelAttribute("dojo") Dojo dojo) {
        List<Dojo> dojos = dojoService.allDojos();
        model.addAttribute("dojos", dojos);
        return "index.jsp";
    }

    @GetMapping("/dojos/{id}")
    public String dojo(Model model, @PathVariable("id") Long id) {
        Dojo dojo = dojoService.findDojo(id);
        model.addAttribute("dojo", dojo);
        return "dojo.jsp";
    }

    @PostMapping("/dojos/create")
    public String createDojo(Model model, @Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result){
        if(result.hasErrors()){
            return "index.jsp";
        }
        this.dojoService.createDojo(dojo);
        return "redirect:/dojos";
    }

    @GetMapping("/dojos/{id}/edit")
    public String edit(Model model, @PathVariable("id") Long id) {
        Dojo dojo = dojoService.findDojo(id);
        model.addAttribute("dojo", dojo);
        return "dojoEdit.jsp";
    }

    @PostMapping("/dojos/{id}/update")
    public String editNinja(@PathVariable("id") Long id, @Valid @ModelAttribute("ninja") Dojo dojo, BindingResult result) {
        if (result.hasErrors()) {
            return "dojoEdit.jsp";
        } else {
            System.out.println(dojo.getId());
            System.out.println(dojo.getName());
            this.dojoService.updateDojo(dojo);
            return "redirect:/dojos";
        }
    }
}
