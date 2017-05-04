package home.poc.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.validation.constraints.Pattern;

import org.hibernate.annotations.Where;
import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

/**
 * @author Sunny.Bindal
 *
 */
@Entity
@Audited
//@EntityListeners(AuditingEntityListener.class)
@Where(clause="isdeleted=false")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@NotBlank(message="Login id cannot be left blank.")
	private String loginid;
	@NotBlank(message="First name cannot be left blank.")
	private String firstname;
	private String middlename;
	private String lastname;
	@NotBlank(message="Email cannot be left blank.")
	@Email(message="Please enter valid Email.")
	private String email;
	@NotBlank(message="Mobile cannot be left blank.")
	@Length(min=8,max=12,message="Mobile number must be between 8 and 12.")
	@Pattern(regexp="^[1-9]\\d*$",message="Please enter valid Mobile number.")
	private String mobile;
	
	private boolean isdeleted;
	
	@Column(name = "created_date", nullable = false, updatable = false)
    private Date createdDate;
 
    @Column(name = "modified_date")
    private Date modifiedDate;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param loginid
	 * @param firstname
	 * @param middlename
	 * @param lastname
	 * @param email
	 * @param mobile
	 */
	public User(Long id, String loginid, String firstname, String middlename,
			String lastname, String email, String mobile) {
		super();
		this.id = id;
		this.loginid = loginid;
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.email = email;
		this.mobile = mobile;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public boolean isIsdeleted() {
		return isdeleted;
	}

	public void setIsdeleted(boolean isdeleted) {
		this.isdeleted = isdeleted;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	@PrePersist
	public void dateSave(){
		createdDate=new Date();
		modifiedDate =  new Date();
	}
	
	@PreUpdate
	public void dateUpdate(){
		modifiedDate =  new Date();
	}
	
	
}