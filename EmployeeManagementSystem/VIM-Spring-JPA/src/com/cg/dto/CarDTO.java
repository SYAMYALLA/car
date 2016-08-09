package com.cg.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*NA*/
/**
 * 
 * This is a CarDTO class
 * @see java.lang.Object
 * @author Abhishek
 * 
 *
 */

@Entity
@Table(name = "Car")
public class CarDTO
{
//	TODO:1 Oracle db is using strategy = GenerationType.SEQUENCE
//	TODO:2 MySQL db is using strategy = GenerationType.AUTO

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private int id;
	@Column(name = "kinId")
	private String kinId;
	@Column(name = "empname")
    private String empname;
	@Column(name = "mail")
    private String mail;
	@Column(name = "phoneNo")
    private String phoneNo;
	@Column(name = "dob")
    private String dob;
	@Column(name = "doj")
    private String doj;
	@Column(name = "address")
	private String address;
	
    public CarDTO()
    {
        this.id = -1;
        this.kinId="";
        this.empname = "";
        this.mail = "";
        this.phoneNo = ""; 
        this.dob="";
        this.address="";
        this.doj="";
        
        
    }

      public int getId()
    {
        return id;
    }
    
       public void setId(int id)
    {
        this.id = id;
    }

      public String getEmpname()
    {
        return empname;
    }
    public void setEmpname(String empname)
    {
        this.empname = empname;
    }
    public String getKinId()
    {
    	return kinId;
    }
    public void setKinId(String kinId)
    {
    	this.kinId=kinId;
    }
    public String getMail()
    {
        return mail;
    }

    public void setMail(String mail)
    {
        this.mail = mail;
    }

   public String getDob()
    {
        return dob;
    }

   public void setDob(String dob)
    {
        this.dob = dob;
    }
   public String getDoj()
   {
       return doj;
   }

  public void setDoj(String doj)
   {
       this.doj = doj;
   }
  
   public String getPhoneNo()
   {
       return phoneNo;
   }

  public void setPhoneNo(String phoneNo )
   {
       this.phoneNo = phoneNo;
   }

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
} 
    
}
