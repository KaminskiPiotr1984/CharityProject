package pl.coderslab.charity.aplication.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.charity.aplication.domain.entities.Category;


public interface CategoryRepository extends JpaRepository<Category, Long> {


}
