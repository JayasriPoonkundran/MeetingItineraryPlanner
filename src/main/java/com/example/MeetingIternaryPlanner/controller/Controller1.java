package com.example.MeetingIternaryPlanner.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.MeetingIternaryPlanner.model.CreateMeetingModel;
import com.example.MeetingIternaryPlanner.model.ParticipantsModel;
import com.example.MeetingIternaryPlanner.model.RegisterModel;
import com.example.MeetingIternaryPlanner.repository.CreateMeetingRepository;
import com.example.MeetingIternaryPlanner.repository.ParticipantsRepository;
import com.example.MeetingIternaryPlanner.repository.RegisterRepository;

@Controller
public class Controller1 {

    @Autowired
    private RegisterRepository repo;

    @Autowired
    private CreateMeetingRepository meetingRepo;

    @Autowired
    private ParticipantsRepository parRepo;

    @GetMapping("/")
    public String showHomePage() {
        return "home";
    }

    @GetMapping("/register")
    public String showRegisterForm() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute RegisterModel user, Model model) {
        RegisterModel existingUser = repo.findByEmail(user.getEmail());
        if (existingUser != null) {
            model.addAttribute("registerError", "This email ID already exists");
            return "register";
        }
        repo.save(user);
        model.addAttribute("username", user.getUsername());
        return "dashboard";
    }

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("errorMessage", null);
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String email,
                            @RequestParam String password,
                            Model model) {
        RegisterModel user = repo.findByEmailAndPassword(email, password);
        if (user != null) {
            model.addAttribute("username", user.getUsername());
            return "dashboard";
        } else {
            model.addAttribute("errorMessage", "Invalid email or password");
            return "login";
        }
    }

    @GetMapping("/dashboard")
    public String showDashboard() {
        return "dashboard";
    }

    @GetMapping("/create-meeting")
    public String showCreateMeetingForm() {
        return "createMeeting";
    }

    @PostMapping("/saveMeeting")
    public String saveMeeting(@ModelAttribute CreateMeetingModel meeting, Model model) {
        CreateMeetingModel savedMeeting = meetingRepo.save(meeting);
        model.addAttribute("meetingId", savedMeeting.getId());
        return "addParticipants";
    }

   
    @GetMapping("/addParticipants")
    public String showAddParticipantsPage(Model model) {
        return "addParticipants";
    }

   
    @PostMapping("/addParticipants")
    public String saveParticipant(@ModelAttribute ParticipantsModel participant, Model model) {
        try {
            parRepo.save(participant);
            model.addAttribute("successMessage", "Participant added successfully!");
        } catch (Exception e) {
            model.addAttribute("successMessage", "Error occurred: " + e.getMessage());
        }
        return "addParticipants";
    }
    
    @GetMapping("/view-itinerary")
    public String viewItinerary(Model model) {
        List<CreateMeetingModel> meetings = meetingRepo.findAll();
        model.addAttribute("meetings", meetings);
        System.out.println("Meetings fetched: " + meetings.size());

        return "viewItinerary";
    }
    
    @GetMapping("/MeetingList")
    public String viewMeetingList(Model model) {
        List<CreateMeetingModel> meetings = meetingRepo.findAll();
        model.addAttribute("meetings", meetings);
        return "MeetingList";
    }

    @GetMapping("/deleteMeeting")
    public String deleteMeeting(@RequestParam int id) {
        meetingRepo.deleteById(id);
        return "redirect:/MeetingList";
    }

    @GetMapping("/updateMeetingForm")
    public String showUpdateForm(@RequestParam int id, Model model) {
        CreateMeetingModel meeting = meetingRepo.findById(id).orElse(null);
        model.addAttribute("meeting", meeting);
        return "UpdateMeeting"; 
    }
    @PostMapping("/updateMeeting")
    public String updateMeeting(@ModelAttribute CreateMeetingModel meeting) {
        meetingRepo.save(meeting); // It will update if ID exists
        return "redirect:/MeetingList";
    }
    
    @GetMapping("/participantsList")
    public String showParticipants(Model model) {
        List<ParticipantsModel> participants = parRepo.findAll();
        model.addAttribute("participants", participants);
        return "ParticipantsList"; // Make sure JSP name matches
    }
    
 // Show edit form
    @GetMapping("/editParticipant")
    public String editParticipant(@RequestParam int id, Model model) {
        ParticipantsModel participant = parRepo.findById(id).orElse(null);
        model.addAttribute("participant", participant);
        return "EditParticipant"; // This is the JSP to be created
    }

    // Update participant
    @PostMapping("/updateParticipant")
    public String updateParticipant(@ModelAttribute ParticipantsModel participant) {
        parRepo.save(participant);
        return "redirect:/participantsList";
    }

    // Delete participant
    @GetMapping("/deleteParticipant")
    public String deleteParticipant(@RequestParam int id) {
        parRepo.deleteById(id);
        return "redirect:/participantsList";
    }

    




}
