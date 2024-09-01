package org.chorn.controller;

import com.opensymphony.xwork2.ActionSupport;
import org.chorn.service.UserInputService;

public class HelloWorldAction extends ActionSupport {
    private String name;
    private final UserInputService userInputService = new UserInputService();

    public String execute() {
        if (name == null || name.isEmpty()) {
            return ERROR;
        }
        userInputService.processUserInput(name);
        return SUCCESS;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
