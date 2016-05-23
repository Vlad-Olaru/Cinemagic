package cinemagic.services;


import cinemagic.model.Seat;
import cinemagic.model.TimeTable;
import cinemagic.repositories.SeatRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SeatServiceImpl implements SeatService {

    @Autowired
    private SeatRepository seatRepository;

    @Override
    public List<Seat> getByTimetable(TimeTable timeTable) {
        return seatRepository.getByTimeTable(timeTable);
    }

    @Override
    public String getOccupiedSeatsForTimeTable(TimeTable timeTable) {
        String occupiedSeats = "";
        List<Seat> seats = seatRepository.getByTimeTable(timeTable);
        for (Seat seat : seats) {
            occupiedSeats += seat.getOccupiedSeat();
            occupiedSeats += ",";
        }
        return occupiedSeats;
    }

    @Override
    public void save(Seat seat) {
        seatRepository.save(seat);
    }
}
