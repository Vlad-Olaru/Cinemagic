package cinemagic.model;

import javax.persistence.*;

@Entity
@Table(name = "movies")
public class Movie {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private long id;

    @Column(name = "movie_name")
    private String movieName;

    @Column(name = "movie_description")
    private String movieDescription;

    @Column(name = "genre")
    private String genre;

    @Column(name = "picture_name")
    private String pictureName;

    public Movie() {}

    public Movie(String movieName, String movieDescription, String genre, String pictureName) {
        this.movieName = movieName;
        this.movieDescription = movieDescription;
        this.genre = genre;
        this.pictureName = pictureName;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieDescription() {
        return movieDescription;
    }

    public void setMovieDescription(String movieDescription) {
        this.movieDescription = movieDescription;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }

    public String getDataCat() {
        switch (this.genre) {
            case "Drama":
                return "web";
            case "Comedy":
                return "app";
            case "Horror":
                return "icon";
            default:
                return "card";
        }
    }
}
