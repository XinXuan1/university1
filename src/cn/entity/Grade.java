package cn.entity;

import java.io.Serializable;

public class Grade implements Serializable{
    private Integer id;

    private Integer cid;

    private Integer score;

    private String message;

    private Integer sid;
    
    private String cname;
    
    private String tename;
    
    private String sname;

    public Grade(Integer id, Integer cid, Integer score, String message, Integer sid) {
        this.id = id;
        this.cid = cid;
        this.score = score;
        this.message = message;
        this.sid = sid;
    }

    public Grade() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getTename() {
		return tename;
	}

	public void setTename(String tename) {
		this.tename = tename;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
    
    
}