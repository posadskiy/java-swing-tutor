package com.posadskiy.javaswingtutor.infrastructure.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.posadskiy.javaswingtutor.api.client.*;
import com.posadskiy.javaswingtutor.application.service.AuthenticationService;
import com.posadskiy.javaswingtutor.domain.repository.*;
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
 * Environment (dev / prod config):
 * - Use -Dapp.env=dev or -Dapp.env=prod, or set JAVA_SWING_TUTOR_ENV=dev|prod
 * - application-dev.properties and application-prod.properties are loaded accordingly
 * - Override API URL with environment variable JAVA_SWING_TUTOR_SERVICE_URL if needed
 */
@Configuration
@ComponentScan(basePackages = "com.posadskiy.javaswingtutor")
@PropertySource("classpath:application.properties")
public class AppConfig {
    // Env-specific properties (application-dev.properties, application-prod.properties) are
    // loaded in Start before the context is initialized

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
        String baseUrl = env.getProperty("JAVA_SWING_TUTOR_SERVICE_URL",
            env.getProperty("java-swing-tutor.service.url", "http://localhost:8080"));
        
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




