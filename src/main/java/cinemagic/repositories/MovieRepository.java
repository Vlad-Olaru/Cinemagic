package cinemagic.repositories;

import cinemagic.model.Movie;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieRepository extends CrudRepository<Movie, Long> {
    List<Movie> findAll();
    List<Movie> findByGenre(String genre);

    Movie findById(long id);

    @Query("SELECT distinct genre FROM Movie")
    List<String> findAllGenres();

}
