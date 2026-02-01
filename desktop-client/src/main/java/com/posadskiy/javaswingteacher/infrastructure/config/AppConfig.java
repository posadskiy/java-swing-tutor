package com.posadskiy.javaswingteacher.infrastructure.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.posadskiy.javaswingteacher.api.client.*;
import com.posadskiy.javaswingteacher.application.service.AuthenticationService;
import com.posadskiy.javaswingteacher.domain.repository.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestClient;

/**
 * Spring Java configuration for the application.
 * Configures beans and component scanning for all layers.
 *
 * Environment Configuration:
 * - Use -Dspring.profiles.active=dev for development
 * - Use -Dspring.profiles.active=prod for production
 * - Or set environment variable SWINGTEACHER_SERVICE_URL to override base URL
 */
@Configuration
@ComponentScan(basePackages = "com.posadskiy.javaswingteacher")
@PropertySource("classpath:application.properties")
public class AppConfig {
    // Profile-specific properties are loaded in the Start class
    // before the Spring context is initialized

    @Bean
    public ObjectMapper objectMapper() {
        return new ObjectMapper()
            .registerModule(new JavaTimeModule())
            .disable(com.fasterxml.jackson.databind.SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
    }

    @Bean
    public RestClient restClient(
        Environment env,
        TokenRefreshInterceptor tokenRefreshInterceptor,
        BearerTokenInterceptor bearerTokenInterceptor,
        ObjectMapper objectMapper
    ) {
        // Priority: 1. Environment variable, 2. Properties file, 3. Default
        String baseUrl = env.getProperty("SWINGTEACHER_SERVICE_URL",
            env.getProperty("swingteacher.service.url", "http://localhost:8080"));
        
        MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
        converter.setObjectMapper(objectMapper);
        
        return RestClient.builder()
            .baseUrl(baseUrl)
            .messageConverters(converters -> {
                converters.removeIf(c -> c instanceof MappingJackson2HttpMessageConverter);
                converters.add(converter);
            })
            .requestInterceptors(interceptors -> {
                interceptors.add(tokenRefreshInterceptor);
                interceptors.add(bearerTokenInterceptor);
            })
            .build();
    }

    // Repository beans using API clients
    
    @Bean
    public UserRepository userRepository(RestClient restClient, AuthenticationService authService) {
        return new UserApiClient(restClient, authService);
    }

    @Bean
    public LessonRepository lessonRepository(RestClient restClient) {
        return new LessonApiClient(restClient);
    }

    @Bean
    public TaskRepository taskRepository(RestClient restClient) {
        return new TaskApiClient(restClient);
    }

    @Bean
    public DocumentationRepository documentationRepository(RestClient restClient) {
        return new DocumentationApiClient(restClient);
    }

    @Bean
    public ErrorRepository errorRepository(RestClient restClient) {
        return new ErrorApiClient(restClient);
    }

    @Bean
    public KeywordRepository keywordRepository(RestClient restClient) {
        return new KeywordApiClient(restClient);
    }

    @Bean
    public ShorthandRepository shorthandRepository(RestClient restClient) {
        return new ShorthandApiClient(restClient);
    }

    @Bean
    public CompletedTaskRepository completedTaskRepository(RestClient restClient) {
        return new CompletedTaskApiClient(restClient);
    }

    @Bean
    public CodeCheckingApiClient codeCheckingApiClient(RestClient restClient) {
        return new CodeCheckingApiClient(restClient);
    }

    // API Client beans (for direct injection)

    @Bean
    public LessonApiClient lessonApiClient(RestClient restClient) {
        return new LessonApiClient(restClient);
    }

    @Bean
    public TaskApiClient taskApiClient(RestClient restClient) {
        return new TaskApiClient(restClient);
    }
}




