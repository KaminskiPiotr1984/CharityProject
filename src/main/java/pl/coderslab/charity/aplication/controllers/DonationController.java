package pl.coderslab.charity.aplication.controllers;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.aplication.domain.repositories.DonationsRepository;
import pl.coderslab.charity.aplication.domain.repositories.InstitutionsRepository;

@Controller
@Slf4j
@RequestMapping("/form")

public class DonationController {

    private final InstitutionsRepository institutionsRepository;
    private final DonationsRepository donationsRepository;

    public DonationController(InstitutionsRepository institutionsRepository, DonationsRepository donationsRepository) {
        this.institutionsRepository = institutionsRepository;
        this.donationsRepository = donationsRepository;
    }


    @GetMapping
    public String formAction(Model model) {
        model.addAttribute("institutions", institutionsRepository.findAll());
        model.addAttribute("donations", donationsRepository.findAll());

        return "form";
    }

}
