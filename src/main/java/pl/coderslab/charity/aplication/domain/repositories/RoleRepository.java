package pl.coderslab.charity.aplication.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.charity.aplication.domain.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Role getByName(String name);
}