package sunny.poc.entity;

import java.io.Serializable;

import org.springframework.data.cassandra.mapping.UserDefinedType;

import com.datastax.driver.mapping.annotations.UDT;

//@UDT(name="phone",keyspace="demo")
@UserDefinedType
public class Phone implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int country_code;
	private String number;
	
	public Phone() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @param country_code
	 * @param number
	 */
	public Phone(int country_code, String number) {
		super();
		this.country_code = country_code;
		this.number = number;
	}
	public int getCountry_code() {
		return country_code;
	}
	public void setCountry_code(int country_code) {
		this.country_code = country_code;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}

}
