package pl.coderslab.charity.aplication.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import pl.coderslab.charity.aplication.converters.CategoryConverter;

@Configuration
public class WebConfiguration implements WebMvcConfigurer {

    @Bean
    public CategoryConverter categoryConverter() {
        return new CategoryConverter();
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(categoryConverter());
    }
}