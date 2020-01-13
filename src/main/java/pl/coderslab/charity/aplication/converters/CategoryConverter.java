package pl.coderslab.charity.aplication.converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.charity.aplication.domain.entities.Category;
import pl.coderslab.charity.aplication.domain.repositories.CategoryRepository;

public class CategoryConverter implements Converter<String, Category> {

    private CategoryRepository categoryRepository;

    @Autowired
    public void setCategoryRepository(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @Override
    public Category convert(String id) {
        return categoryRepository.getOne(Long.parseLong(id));
    }
}