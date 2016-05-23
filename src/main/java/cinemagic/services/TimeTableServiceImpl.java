package cinemagic.services;

import cinemagic.model.Movie;
import cinemagic.model.TimeTable;
import cinemagic.repositories.TimeTableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
public class TimeTableServiceImpl implements TimeTableService{

    @Autowired
    private TimeTableRepository timeTableRepository;

    @Autowired
    private MovieService movieService;

    @Override
    public List<TimeTable> findAll() {
        return timeTableRepository.findAll();
    }

    @Override
    public TimeTable findByStartingTime(String startingTime) {
        return timeTableRepository.findByStartingTime(startingTime);
    }

    @Override
    public List<TimeTable> findByMovie(Movie movie) {
        return timeTableRepository.findByMovie(movie);
    }

    @Override
    public TimeTable findById(long id) {
        return timeTableRepository.findById(id);
    }

    @Override
    public TimeTable findByMovieAndStartingTime(Movie movie, String startingTime) {
        return timeTableRepository.findByMovieAndStartingTime(movie, startingTime);
    }

    public TimeTable findNextTimeTableForMovie(Movie movie) {
        List<TimeTable> timeTablesForCurrentMovie = timeTableRepository.findByMovie(movie);
        List<TimeTable> timeTablesAfterTime = new ArrayList<>();
        List<String> availableTimes = this.findAllAfterCurrentHour();

        for(String availableTime : availableTimes) {
            for(TimeTable timeTableForCurrentMovie : timeTablesForCurrentMovie) {
                if(timeTableForCurrentMovie.getStartingTime().equals(availableTime)) {
                    timeTablesAfterTime.add(timeTableForCurrentMovie);
                }
            }
        }

        return timeTablesAfterTime.get(0);
    }

    public List<String> findAllAfterCurrentHour() {
        LocalDateTime currentTime = LocalDateTime.now();
        List<String> allTimeTables = timeTableRepository.findDistinctStartingDates();
        List<String> availableTimes = new ArrayList<String>();
        for(String time : allTimeTables) {
            if(Integer.parseInt(time.split(":")[0]) > currentTime.getHour()) {
                availableTimes.add(time);
            }
        }
        return availableTimes;
    }

}
