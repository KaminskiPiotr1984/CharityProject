package pl.coderslab.charity.aplication.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.charity.aplication.domain.entities.Donation;

public interface DonationsRepository extends JpaRepository<Donation, Long> {
}
