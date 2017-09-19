package fr.henka.henka_mover.models;

import java.util.List;


public class TrafficResult {

    private List<TrafficDetailsLine> metros;
    private List<TrafficDetailsLine> rers;
    private List<TrafficDetailsLine> tramways;

    public List<TrafficDetailsLine> getMetros() {
        return metros;
    }
    public List<TrafficDetailsLine> getRers() {
        return rers;
    }
    public List<TrafficDetailsLine> getTramways() {
        return tramways;
    }
}
