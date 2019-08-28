package com.developer.SpringMySQL;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication

//@ComponentScan(value = {"com.developer.SpringMySQL","controllers"})
class SpringMySqlApplication {

//	new File(PartnerController.UploadDirectory).mkdir();
	public static void main(String[] args) {
		SpringApplication.run(SpringMySqlApplication.class, args);
	}

}
