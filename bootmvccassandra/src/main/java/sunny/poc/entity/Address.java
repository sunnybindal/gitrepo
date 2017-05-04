package sunny.poc.entity;

import java.io.Serializable;
import java.util.Map;

import org.springframework.data.annotation.Persistent;
import org.springframework.data.cassandra.mapping.CassandraType;
import org.springframework.data.cassandra.mapping.UserDefinedType;

import com.datastax.driver.core.DataType.Name;
import com.datastax.driver.mapping.annotations.UDT;

//@UDT(name = "address", keyspace = "demo")
@UserDefinedType
@Persistent
public class Address implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String street;
	private String city;
	private String zip;
	@CassandraType(type=Name.UDT,userTypeName="Phone",typeArguments={Name.TEXT,Name.UDT})
	private Map<String, Phone> phones;

	public Address() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param street
	 * @param city
	 * @param zip
	 * @param phones
	 */
	public Address(String street, String city, String zip,
			Map<String, Phone> phones) {
		super();
		this.street = street;
		this.city = city;
		this.zip = zip;
		this.phones = phones;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public Map<String, Phone> getPhones() {
		return phones;
	}

	public void setPhones(Map<String, Phone> phones) {
		this.phones = phones;
	}

}
