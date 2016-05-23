package cinemagic.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.WebMvcAutoConfiguration;
import org.springframework.boot.orm.jpa.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@SpringBootApplication
@ComponentScan("cinemagic")
@EnableJpaRepositories("cinemagic.repositories")
@EntityScan(basePackages = { "cinemagic.model"})
@EnableScheduling
public class App extends WebMvcAutoConfiguration.WebMvcAutoConfigurationAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/").setCachePeriod(0);
        super.addResourceHandlers(registry);
    }

    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }

}