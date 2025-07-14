package com.example.MeetingIternaryPlanner.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.MeetingIternaryPlanner.model.ParticipantsModel;

@Repository
public interface ParticipantsRepository extends JpaRepository<ParticipantsModel, Integer> {
}
