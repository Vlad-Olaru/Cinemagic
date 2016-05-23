package cinemagic.model;

import javax.persistence.*;

@Entity
@Table(name =  "seats")
public class Seat {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private long id;

    @OneToOne
    @JoinColumn(name = "timetable_id")
    private TimeTable timeTable;

    @Column(name = "occupied_seat")
    private String occupiedSeat;

    public Seat() {}

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public TimeTable getTimeTable() {
        return timeTable;
    }

    public void setTimeTable(TimeTable timeTable) {
        this.timeTable = timeTable;
    }

    public String getOccupiedSeat() {
        return occupiedSeat;
    }

    public void setOccupiedSeat(String occupiedSeat) {
        this.occupiedSeat = occupiedSeat;
    }
}
