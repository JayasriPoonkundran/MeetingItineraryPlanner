package com.example.MeetingIternaryPlanner.model;



import jakarta.persistence.*;

@Entity
@Table(name = "participants")
public class ParticipantsModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

    private String email;

   

    // Constructors
    public ParticipantsModel() {
    }

    public ParticipantsModel(String name, String email) {
        this.name = name;
        this.email = email;
    
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
}

