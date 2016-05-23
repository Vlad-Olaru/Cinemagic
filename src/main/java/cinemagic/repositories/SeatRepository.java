package cinemagic.repositories;

import cinemagic.model.Seat;
import cinemagic.model.TimeTable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SeatRepository extends CrudRepository<Seat, Long> {
    List<Seat> getByTimeTable(TimeTable timeTable);
}
