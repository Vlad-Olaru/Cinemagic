package cinemagic.services;

import cinemagic.model.Movie;
import cinemagic.repositories.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    private MovieRepository movieRepository;

    @Override
    public List<Movie> findAll() {
        return movieRepository.findAll();
    }

    @Override
    public List<Movie> findByGenre(String genre) {
        return movieRepository.findByGenre(genre);
    }

    @Override
    public List<String> findAllGenres() {
        return movieRepository.findAllGenres();
    }

    @Override
    public Movie findById(long id) {
        return movieRepository.findById(id);
    }
}
