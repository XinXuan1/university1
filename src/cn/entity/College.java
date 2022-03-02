package cn.entity;

public class College {
    private Integer id;

    private String coname;

    public College(Integer id, String coname) {
        this.id = id;
        this.coname = coname;
    }

    public College() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConame() {
        return coname;
    }

    public void setConame(String coname) {
        this.coname = coname == null ? null : coname.trim();
    }
}