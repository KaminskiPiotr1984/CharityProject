package pl.coderslab.charity.aplication.controllers;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.aplication.domain.entities.Donation;
import pl.coderslab.charity.aplication.domain.repositories.CategoryRepository;
import pl.coderslab.charity.aplication.domain.repositories.DonationsRepository;
import pl.coderslab.charity.aplication.domain.repositories.InstitutionsRepository;

import javax.validation.Valid;

@Controller
@Slf4j
@RequestMapping("/form")

public class DonationController {

    private final InstitutionsRepository institutionsRepository;
    private final DonationsRepository donationsRepository;
    private final CategoryRepository categoryRepository;

    public DonationController(InstitutionsRepository institutionsRepository, DonationsRepository donationsRepository, CategoryRepository categoryRepository) {
        this.institutionsRepository = institutionsRepository;
        this.donationsRepository = donationsRepository;
        this.categoryRepository = categoryRepository;
    }


    @GetMapping
    public String formAction(Model model) {
        model.addAttribute("institutions", institutionsRepository.findAll());
        model.addAttribute("category", categoryRepository.findAll());
        model.addAttribute("donation", new Donation());
        return "form";
    }

    @PostMapping()
    public String formFilling(@Valid Donation donation, BindingResult result) {
        if (result.hasErrors()) {
            return "form";
        }
        donationsRepository.save(donation);
        return "/";
    }


}
