package cinemagic.services;

import cinemagic.model.Movie;

import java.util.List;

public interface MovieService {
    List<Movie> findAll();
    List<Movie> findByGenre(String genre);
    List<String> findAllGenres();
    Movie findById(long id);
}
