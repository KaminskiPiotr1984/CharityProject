package pl.coderslab.charity.aplication.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.charity.aplication.domain.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {


}