package sunny.poc.service.impl;

import static com.datastax.driver.core.querybuilder.QueryBuilder.eq;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.cassandra.core.CassandraOperations;
import org.springframework.data.cassandra.repository.MapId;
import org.springframework.data.cassandra.repository.support.BasicMapId;
import org.springframework.stereotype.Service;

import sunny.poc.entity.Address;
import sunny.poc.entity.Phone;
import sunny.poc.entity.User;
import sunny.poc.repository.UserRepository;
import sunny.poc.service.UserService;

import com.datastax.driver.core.ConsistencyLevel;
import com.datastax.driver.core.ProtocolVersion;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import com.datastax.driver.core.Statement;
import com.datastax.driver.core.querybuilder.Insert;
import com.datastax.driver.core.querybuilder.QueryBuilder;
import com.datastax.driver.mapping.MappingManager;

@Service
public class UserServiceImpl implements UserService,InitializingBean  {

	@Autowired
	UserRepository userRepository;

	@Autowired
	private CassandraOperations cassandraOperations;

	@Autowired
	Session session;
	
	MappingManager manager = null;

	@Override
	public User getBySession(String name) {

		Statement statement = QueryBuilder.select().all().from("user")
				.where(eq("name", name)).setFetchSize(1);
		ResultSet rs = session.execute(statement);
		User user = new User();
		for (Row r : rs.all()) {
			user.setName(r.getString("name"));
			user.setAddresses(r
					.getMap("addresses", String.class, Address.class));
		}
		return user;

	}

	@Override
	public User getByRepository(String name) {
		Map<String, Serializable> map = new HashMap<String, Serializable>();
		map.put("name", name);
		MapId mapId = new BasicMapId(map);
		User user = userRepository.findOne(mapId);
		return user;
	}

	@Override
	public void saveUser() {

		Insert insert = QueryBuilder.insertInto("user");

		insert.setConsistencyLevel(ConsistencyLevel.ONE);

		Phone phone1 = new Phone(91, "876543219");
		Map<String, Phone> p = new HashMap<String, Phone>();
		p.put("work", phone1);

		Address address = new Address("84/10 onkar nagar-B,Tri nagar", "delhi",
				"110035", p);
		Map<String, Address> a = new HashMap<String, Address>();
		a.put("work", address);

		insert.value("name", "testone");
		insert.value("addresses", a);

		cassandraOperations.execute(insert);

	}
	
	@Override
	public void saveUserUsingRespository() {

		Phone phone = new Phone(91, "123456789");
		Map<String, Phone> phonemap = new HashMap<String, Phone>();
		phonemap.put("work", phone);

		Address address = new Address("asdfghjkl", "qwertyuiop",
				"zxcvbnm", phonemap);
		Map<String, Address> addressmap = new HashMap<String, Address>();
		addressmap.put("work", address);
		User u = new User("qaz",addressmap);
		userRepository.save(u);
System.out.println(u);
	}

	@Override
	public String createBySessionCql() {
		String query = "INSERT INTO user (name, addresses)"
				+ "VALUES ('sandip', {"
				+ "           'home' : {"
				+ "               street: '84/10 onkar nagar-B,Tri nagar',"
				+ "            city: 'delhi',"
				+ "         zip: '110035',"
				+ "      phones: { 'cell' : { country_code: 91, number: '9999637292' }}"
				// +
				// "             'landline' : { country_code: 1, number: '1234567890' } }"
				+ " },"
				+ "'work' : {"
				+ " street: 'FC 06, sector 16A',"
				+ " city: 'Noida',"
				+ " zip: '201301',"
				+ "phones: { 'fax' : { country_code: 91, number: '987654321' } }"
				+ " }" + " })";
		try {
			session.execute(query);
			return "successfully created the record.";
		} catch (Exception e) {
			return "error in creating the record.";
		}
	}
	
	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		manager = new MappingManager(session,ProtocolVersion.NEWEST_SUPPORTED);
		//manager.udtCodec(Address.class);
		//manager.udtCodec(Phone.class);
	}

}
