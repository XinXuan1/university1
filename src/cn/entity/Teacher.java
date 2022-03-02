package cn.entity;

import java.io.Serializable;

public class Teacher implements Serializable{
    private Integer id;

    private String tname;

    private Integer dsid;

    private String tetype;

    private Integer uid;

    private String authorizes;

    private String tmail;
    
    private String coname;
    
    private Integer num;

    public Teacher(Integer id, String tname, Integer dsid, String tetype, Integer uid, String authorizes, String tmail) {
        this.id = id;
        this.tname = tname;
        this.dsid = dsid;
        this.tetype = tetype;
        this.uid = uid;
        this.authorizes = authorizes;
        this.tmail = tmail;
    }

    public Teacher() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public Integer getDsid() {
        return dsid;
    }

    public void setDsid(Integer dsid) {
        this.dsid = dsid;
    }

    public String getTetype() {
        return tetype;
    }

    public void setTetype(String tetype) {
        this.tetype = tetype == null ? null : tetype.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getAuthorizes() {
        return authorizes;
    }

    public void setAuthorizes(String authorizes) {
        this.authorizes = authorizes == null ? null : authorizes.trim();
    }

    public String getTmail() {
        return tmail;
    }

    public void setTmail(String tmail) {
        this.tmail = tmail == null ? null : tmail.trim();
    }

	public String getConame() {
		return coname;
	}

	public void setConame(String coname) {
		this.coname = coname;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}
    
    
}