package pl.coderslab.charity.aplication.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.charity.aplication.domain.entities.Institution;

public interface InstitutionsRepository extends JpaRepository<Institution, Long> {


}
