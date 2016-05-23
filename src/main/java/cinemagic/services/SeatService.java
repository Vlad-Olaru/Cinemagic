package cinemagic.services;

import cinemagic.model.Seat;
import cinemagic.model.TimeTable;

import java.util.List;

public interface SeatService {

    List<Seat> getByTimetable(TimeTable timeTable);
    String getOccupiedSeatsForTimeTable(TimeTable timeTable);
    void save(Seat seat);
}
