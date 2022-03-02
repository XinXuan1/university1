package cn.entity;

public class Plans {
    private Integer id;

    private Integer csid;

    private Integer dsid;

    private Integer tsid;

    private String pstatus;
    
    private String cname;
    
    private String dname;
    
    private String tename;
    
    private String ctype;

    private Integer btime;

    private Integer etime;

    private String weeks;

    private String classnum;

    private String cplace;
    
    private String tname;
    
    private Integer sumxue;

    

    public Plans(Integer id, Integer csid, Integer dsid, Integer tsid, String pstatus) {
        this.id = id;
        this.csid = csid;
        this.dsid = dsid;
        this.tsid = tsid;
        this.pstatus = pstatus;
    }

    public Plans() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCsid() {
        return csid;
    }

    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    public Integer getDsid() {
        return dsid;
    }

    public void setDsid(Integer dsid) {
        this.dsid = dsid;
    }

    public Integer getTsid() {
        return tsid;
    }

    public void setTsid(Integer tsid) {
        this.tsid = tsid;
    }

    public String getPstatus() {
        return pstatus;
    }

    public void setPstatus(String pstatus) {
        this.pstatus = pstatus == null ? null : pstatus.trim();
    }

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getTename() {
		return tename;
	}

	public void setTename(String tename) {
		this.tename = tename;
	}

	public String getCtype() {
		return ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public Integer getBtime() {
		return btime;
	}

	public void setBtime(Integer btime) {
		this.btime = btime;
	}

	public Integer getEtime() {
		return etime;
	}

	public void setEtime(Integer etime) {
		this.etime = etime;
	}

	public String getWeeks() {
		return weeks;
	}

	public void setWeeks(String weeks) {
		this.weeks = weeks;
	}

	public String getClassnum() {
		return classnum;
	}

	public void setClassnum(String classnum) {
		this.classnum = classnum;
	}

	public String getCplace() {
		return cplace;
	}

	public void setCplace(String cplace) {
		this.cplace = cplace;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public Integer getSumxue() {
		return sumxue;
	}

	public void setSumxue(Integer sumxue) {
		this.sumxue = sumxue;
	}
    
    
}