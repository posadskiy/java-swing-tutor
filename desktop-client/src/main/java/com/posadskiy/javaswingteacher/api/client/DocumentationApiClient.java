package com.posadskiy.javaswingteacher.api.client;

import com.posadskiy.javaswingteacher.api.mapper.DtoMapper;
import com.posadskiy.javaswingteacher.domain.dto.DocumentationDto;
import com.posadskiy.javaswingteacher.domain.model.Documentation;
import com.posadskiy.javaswingteacher.domain.repository.DocumentationRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestClientException;

import java.sql.SQLException;
import java.util.Optional;

/**
 * REST API client for Documentation operations.
 */
@Slf4j
public class DocumentationApiClient implements DocumentationRepository {
    
    private final RestClient client;
    
    public DocumentationApiClient(RestClient client) {
        this.client = client;
    }
    
    @Override
    public Optional<Documentation> getDocumentation(int id) throws SQLException {
        return getDocumentation(id, null);
    }

    @Override
    public Optional<Documentation> getDocumentation(int id, String languageCode) throws SQLException {
        try {
            String uri = "/api/ref/documentation/{id}";
            if (languageCode != null && !languageCode.isBlank()) {
                uri += "?lang=" + languageCode;
            }
            
            return Optional.ofNullable(
                    client.get()
                        .uri(uri, id)
                        .retrieve()
                        .body(DocumentationDto.class)
                )
                .map(DtoMapper::toDocumentation);
        } catch (HttpClientErrorException | HttpServerErrorException ex) {
            // Handle HTTP errors gracefully - return empty instead of throwing
            log.debug("HTTP error fetching documentation {}: {}", id, ex.getStatusCode());
            return Optional.empty();
        } catch (RestClientException ex) {
            log.warn("Failed to fetch documentation by id: {}", id, ex);
            throw new SQLException("Failed to fetch documentation by id: " + id, ex);
        }
    }
}

