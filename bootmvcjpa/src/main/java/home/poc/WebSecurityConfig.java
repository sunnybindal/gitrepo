package home.poc;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//@formatter:off
        http
            .authorizeRequests()
                .antMatchers("/","/users").permitAll()
                .anyRequest().authenticated()
                .and()
            .formLogin()
                //.loginPage("/login")
                .permitAll()
                .and()
            .logout()
                .permitAll();
     //@formatter:on
	}

}
