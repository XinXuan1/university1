package cn.entity;

public class Teams {
    private Integer id;

    private String tename;

    public Teams(Integer id, String tename) {
        this.id = id;
        this.tename = tename;
    }

    public Teams() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTename() {
        return tename;
    }

    public void setTename(String tename) {
        this.tename = tename == null ? null : tename.trim();
    }
}