package com.prototype.file;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@ComponentScan
public class InvestmentTrackerApplication {

	public static void main(String[] args) {
		SpringApplication.run(InvestmentTrackerApplication.class, args);
	}

}
