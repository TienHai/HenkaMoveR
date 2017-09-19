package fr.henka.henka_mover.models;

public class Favorite {
    private String type, code, station;

    public Favorite() {
    }

    public Favorite(String type, String code, String station) {
        this.type = type;
        this.code = code;
        this.station = station;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }
}