package cinemagic.controllers;

import cinemagic.model.Seat;
import cinemagic.model.TimeTable;
import cinemagic.services.MovieService;
import cinemagic.services.SeatService;
import cinemagic.services.TimeTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MapController {

    @Autowired
    private TimeTableService timeTableService;

    @Autowired
    private SeatService seatService;

    @ModelAttribute("timeTableService")
    private TimeTableService getTimeTableService() {
        return timeTableService;
    }

    @ModelAttribute("timeTableAvailableTimes")
    private List<String> currentTimeTables(){return timeTableService.findAllAfterCurrentHour();}

    @RequestMapping(value = {"/map/{id}"}, method = RequestMethod.GET)
    public String getMappingPage(Model model, @PathVariable long id) {
        TimeTable timeTable = timeTableService.findById(id);
        String occupiedSeats = seatService.getOccupiedSeatsForTimeTable(timeTable);
        model.addAttribute("occupiedSeats", occupiedSeats);
        model.addAttribute("timeTable", timeTable);
        return "map";
    }

    @RequestMapping(value = {"/map/{id}"}, method = RequestMethod.POST)
    public String getSeats( @PathVariable long id, @RequestParam(value="seatsToBeOccupied[]") List<String> seatNumbersToBeOccupied) {
        TimeTable timeTable = timeTableService.findById(id);
        for(String seatNumberToBeOccupied : seatNumbersToBeOccupied) {
            Seat seat = new Seat();
            seat.setOccupiedSeat(seatNumberToBeOccupied);
            seat.setTimeTable(timeTable);
            seatService.save(seat);
        }

        return "redirect:/home";
    }


}
