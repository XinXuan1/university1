package cn.entity;

public class Department {
    private Integer id;

    private String dname;

    private Integer coid;
    
    private String coname;

    public Department(Integer id, String dname, Integer coid) {
        this.id = id;
        this.dname = dname;
        this.coid = coid;
    }

    public Department() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname == null ? null : dname.trim();
    }

    public Integer getCoid() {
        return coid;
    }

    public void setCoid(Integer coid) {
        this.coid = coid;
    }

	public String getConame() {
		return coname;
	}

	public void setConame(String coname) {
		this.coname = coname;
	}
    
    
}