package com.prototype.file.Service;
import com.prototype.file.entity.User;
import com.prototype.file.entity.InvestmentDetails;

public interface InvestmentService {
	
	public void save(User user);
	public int saveshare(InvestmentDetails inv);
	public String findEmail(String email);
	public String password(String upass, String name);
}
