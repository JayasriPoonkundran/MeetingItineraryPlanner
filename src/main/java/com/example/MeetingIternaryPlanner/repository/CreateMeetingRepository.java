package com.example.MeetingIternaryPlanner.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.MeetingIternaryPlanner.model.CreateMeetingModel;

@Repository
public interface CreateMeetingRepository extends JpaRepository<CreateMeetingModel, Integer> {
}

