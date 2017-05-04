package sunny.poc.entity;

import java.io.Serializable;
import java.util.Map;

import org.springframework.data.cassandra.mapping.CassandraType;
import org.springframework.data.cassandra.mapping.PrimaryKey;
import org.springframework.data.cassandra.mapping.Table;

import com.datastax.driver.core.DataType.Name;

@Table
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@PrimaryKey
	private String name;
	@CassandraType(type=Name.UDT,userTypeName="Address",typeArguments={Name.TEXT,Name.UDT})
	private Map<String, Address> addresses;

	public User() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param name
	 * @param addresses
	 */
	public User(String name, Map<String, Address> addresses) {
		super();
		this.name = name;
		this.addresses = addresses;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Map<String, Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(Map<String, Address> addresses) {
		this.addresses = addresses;
	}

}
