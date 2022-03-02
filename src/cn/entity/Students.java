package cn.entity;

public class Students {
    private Integer id;

    private String sname;

    private Integer studentid;

    private String sex;

    private String birth;

    private String place;

    private Integer uid;

    private String smail;

    private String myself;

    private Integer did;
    
    private Integer csid;
    
    private String dname;
    
    private Integer num;
    
    private String pmail;
    
    private String sphone;
    
    private String ptele;

    public Students(Integer id, String sname, Integer studentid, String sex, String birth, String place, Integer uid, String smail, String pmail, String sphone, String ptele, String myself, Integer did) {
        this.id = id;
        this.sname = sname;
        this.studentid = studentid;
        this.sex = sex;
        this.birth = birth;
        this.place = place;
        this.uid = uid;
        this.smail = smail;
        this.myself = myself;
        this.did = did;
        this.pmail=pmail;
        this.ptele=ptele;
        this.sphone=sphone;
        
    }

    public Students() {
        super();
    }

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Integer getStudentid() {
		return studentid;
	}

	public void setStudentid(Integer studentid) {
		this.studentid = studentid;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getSmail() {
		return smail;
	}

	public void setSmail(String smail) {
		this.smail = smail;
	}

	public String getMyself() {
		return myself;
	}

	public void setMyself(String myself) {
		this.myself = myself;
	}

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Integer getCsid() {
		return csid;
	}

	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getPmail() {
		return pmail;
	}

	public void setPmail(String pmail) {
		this.pmail = pmail;
	}

	public String getSphone() {
		return sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

	public String getPtele() {
		return ptele;
	}

	public void setPtele(String ptele) {
		this.ptele = ptele;
	}

   
    
    
}