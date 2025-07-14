package com.example.MeetingIternaryPlanner.model;
import jakarta.persistence.*;

@Entity
@Table(name = "create_meeting")
public class CreateMeetingModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String date;

    @Column(nullable = false)
    private String time;

    @Column(nullable = false)
    private int duration;

    @Column(length = 1000, nullable = false)
    private String agenda;

  
    public CreateMeetingModel() {
    }

 
    public CreateMeetingModel(String title, String date, String time, int duration, String agenda) {
        this.title = title;
        this.date = date;
        this.time = time;
        this.duration = duration;
        this.agenda = agenda;
    }

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getAgenda() {
        return agenda;
    }

    public void setAgenda(String agenda) {
        this.agenda = agenda;
    }
}

