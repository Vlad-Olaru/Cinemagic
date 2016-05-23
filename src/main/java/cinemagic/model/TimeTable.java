package cinemagic.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "time_table")
public class TimeTable {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private long id;

    @OneToOne
    private Movie movie;

    @Column(name = "starting_time")
    private String startingTime;

    @Column(name = "ending_time")
    private String endingTime;

    public TimeTable(){}

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public String getStartingTime() {
        return startingTime;
    }

    public void setStartingTime(String startingTime) {
        this.startingTime = startingTime;
    }

    public String getEndingTime() {
        return endingTime;
    }

    public void setEndingTime(String endingTime) {
        this.endingTime = endingTime;
    }

}
