package cn.entity;

public class Records {
    private Integer id;

    private String rtime;

    private String rcontents;

    private Integer uid;

    public Records(Integer id, String rtime, String rcontents, Integer uid) {
        this.id = id;
        this.rtime = rtime;
        this.rcontents = rcontents;
        this.uid = uid;
    }

    public Records() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRtime() {
        return rtime;
    }

    public void setRtime(String rtime) {
        this.rtime = rtime == null ? null : rtime.trim();
    }

    public String getRcontents() {
        return rcontents;
    }

    public void setRcontents(String rcontents) {
        this.rcontents = rcontents == null ? null : rcontents.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}