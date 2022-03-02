package cn.entity;

public class Course {
    private Integer id;

    private String cname;

    private Integer csore;

    private String ctype;

    private Integer snumber;

    private Integer maxnumber;

    private Integer btime;

    private Integer etime;

    private String weeks;

    private String classnum;

    private String cplace;

    private Integer teid;

    private Integer tid;
    
    private String tname;

    public Course(Integer id, String cname, Integer csore, String ctype, Integer snumber, Integer maxnumber, Integer btime, Integer etime, String weeks, String classnum, String cplace, Integer teid, Integer tid) {
        this.id = id;
        this.cname = cname;
        this.csore = csore;
        this.ctype = ctype;
        this.snumber = snumber;
        this.maxnumber = maxnumber;
        this.btime = btime;
        this.etime = etime;
        this.weeks = weeks;
        this.classnum = classnum;
        this.cplace = cplace;
        this.teid = teid;
        this.tid = tid;
    }

    public Course() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public Integer getCsore() {
        return csore;
    }

    public void setCsore(Integer csore) {
        this.csore = csore;
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype == null ? null : ctype.trim();
    }

    public Integer getSnumber() {
        return snumber;
    }

    public void setSnumber(Integer snumber) {
        this.snumber = snumber;
    }

    public Integer getMaxnumber() {
        return maxnumber;
    }

    public void setMaxnumber(Integer maxnumber) {
        this.maxnumber = maxnumber;
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
        this.weeks = weeks == null ? null : weeks.trim();
    }

    public String getClassnum() {
        return classnum;
    }

    public void setClassnum(String classnum) {
        this.classnum = classnum == null ? null : classnum.trim();
    }

    public String getCplace() {
        return cplace;
    }

    public void setCplace(String cplace) {
        this.cplace = cplace == null ? null : cplace.trim();
    }

    public Integer getTeid() {
        return teid;
    }

    public void setTeid(Integer teid) {
        this.teid = teid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}
    
    
}