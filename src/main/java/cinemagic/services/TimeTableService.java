package cinemagic.services;

import cinemagic.model.Movie;
import cinemagic.model.TimeTable;

import java.util.List;

public interface TimeTableService {

    List<TimeTable> findAll();
    TimeTable findById(long id);
    List<String> findAllAfterCurrentHour();
    TimeTable findByStartingTime(String startingTime);
    List<TimeTable> findByMovie(Movie movie);
    TimeTable findNextTimeTableForMovie(Movie movie);
    TimeTable findByMovieAndStartingTime(Movie movie, String startingTime);
}
