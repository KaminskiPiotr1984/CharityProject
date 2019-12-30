package pl.coderslab.charity.aplication.controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.aplication.domain.repositories.InstitutionsRepository;


@Controller
@Slf4j

public class HomeController {


    @RequestMapping({"/", "home", "landing page", "charity"})
    public String homeAction(Model model) {
        return "index";
    }


//    private final InstitutionsRepository institutionsRepository;
//
//    public HomeController(InstitutionsRepository institutionsRepository) {
//        this.institutionsRepository = institutionsRepository;
//    }
}