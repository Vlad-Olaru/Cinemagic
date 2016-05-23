package cinemagic.repositories;

import cinemagic.model.Movie;
import cinemagic.model.TimeTable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TimeTableRepository extends CrudRepository<TimeTable, Long> {
    List<TimeTable> findAll();
    TimeTable findByStartingTime(String startingTime);
    TimeTable findById(long id);
    TimeTable findByMovieAndStartingTime(Movie movie, String startingTime);

    @Query("SELECT distinct startingTime FROM TimeTable")
    List<String> findDistinctStartingDates();

    List<TimeTable> findByMovie(Movie movie);


}
