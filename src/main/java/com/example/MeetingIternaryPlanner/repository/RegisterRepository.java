package com.example.MeetingIternaryPlanner.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.MeetingIternaryPlanner.model.RegisterModel;

public interface RegisterRepository extends JpaRepository<RegisterModel, String> {
    RegisterModel findByEmail(String email);
    RegisterModel findByEmailAndPassword(String email, String password);
}
