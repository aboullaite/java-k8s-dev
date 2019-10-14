package me.aboullaite.sbmsjib.model;

import java.time.LocalTime;

public class Event {

    String message;
    LocalTime when;

    public Event(String message, LocalTime when) {

        this.message = message;
        this.when = when;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public LocalTime getWhen() {
        return when;
    }

    public void setWhen(LocalTime when) {
        this.when = when;
    }
}
