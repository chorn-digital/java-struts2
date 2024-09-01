package org.chorn.service;

import org.chorn.model.UserInput;
import org.chorn.repository.UserInputRepository;

import java.util.Date;

public class UserInputService {

    private final UserInputRepository userInputRepository = new UserInputRepository();

    public void processUserInput(String username) {
        UserInput userInput = new UserInput(username, new Date());
        userInputRepository.saveUserInput(userInput);
    }
}