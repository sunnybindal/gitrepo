package home.poc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
///import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
//@EnableJpaAuditing
public class BootmvcjpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootmvcjpaApplication.class, args);
	}
}
