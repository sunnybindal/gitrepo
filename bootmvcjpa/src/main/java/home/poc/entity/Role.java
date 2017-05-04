/**
 * 
 */
package home.poc.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.envers.Audited;

/**
 * @author Sunny.Bindal
 *
 */
@Entity
@Audited
public class Role {

	@Id
	private Long id;
	private String rolename;
	
	public Role() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param rolename
	 */
	public Role(Long id, String rolename) {
		super();
		this.id = id;
		this.rolename = rolename;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	
	
}
