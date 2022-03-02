package cn.entity;

public class Zhibiao {
    private Integer id;

    private Integer sid;

    private Integer fenlv;

    private String ftype;
    
    private String sname;

    public Zhibiao(Integer id, Integer sid, Integer fenlv, String ftype) {
        this.id = id;
        this.sid = sid;
        this.fenlv = fenlv;
        this.ftype = ftype;
    }

    public Zhibiao() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getFenlv() {
        return fenlv;
    }

    public void setFenlv(Integer fenlv) {
        this.fenlv = fenlv;
    }

    public String getFtype() {
        return ftype;
    }

    public void setFtype(String ftype) {
        this.ftype = ftype == null ? null : ftype.trim();
    }

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
    
    
}