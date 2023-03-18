package app.article;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class ArticleApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(ArticleApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(ArticleApplication.class, args);
        System.out.println("App is Working");
    }

    @Bean
    public FilterRegistrationBean tuckey() {
        final FilterRegistrationBean rb = new FilterRegistrationBean();
        rb.setFilter(new CustomUrlRewriter());
        return rb;
    }
}
