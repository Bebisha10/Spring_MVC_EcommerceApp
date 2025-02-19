package ecommerceapp;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("ecommerceapp")
public class Config 
{
	@Bean
	public EntityManager em()
	{
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}
}
