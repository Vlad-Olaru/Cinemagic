package cinemagic.controllers;

import cinemagic.model.Movie;
import cinemagic.model.TimeTable;
import cinemagic.model.User;
import cinemagic.services.MovieService;
import cinemagic.services.TimeTableService;
import cinemagic.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private MovieService movieService;

    @Autowired
    private TimeTableService timeTableService;

    @ModelAttribute("timeTableService")
    private TimeTableService getTimeTableService() {
        return timeTableService;
    }

    @ModelAttribute("movies")
    private List<Movie> getMovies() {
        return movieService.findAll();
    }

    @ModelAttribute("genres")
    private List<String> getMovieGenres() {
        return movieService.findAllGenres();
    }

    @RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
    public String getHomePage(Model model) {
        return "home";
    }

}
