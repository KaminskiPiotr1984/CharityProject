package pl.coderslab.charity.aplication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.aplication.dtos.RegistrationDataDTO;
import pl.coderslab.charity.aplication.services.RegistrationService;

import javax.validation.Valid;

@Controller
@RequestMapping("/register")
public class RegistrationController {

    private final RegistrationService registrationService;

    public RegistrationController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @GetMapping
    public String getRegistrationPage(Model model) {
        model.addAttribute("registrationData", new RegistrationDataDTO());
        return "register";
    }

    @PostMapping
    public String processRegistrationPage(@ModelAttribute("registrationData") @Valid RegistrationDataDTO registrationData, BindingResult results) {
        if (results.hasErrors()) {
            return "register";
        }
        registrationService.register(registrationData);
        return "redirect:/";
    }

}