package com.prototype.file.Service;


import com.prototype.file.entity.InvestmentDetails;
import com.prototype.file.Repository.InvestmentDetailsRepository;
import com.prototype.file.entity.User;
import com.prototype.file.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.*;

@Service("InvestmentServiceImpl")
public class InvestmentServiceImpl {
	
	@Autowired
	private UserRepository UserRepo;
	@Autowired
	private InvestmentDetailsRepository InvRepo;
	
	public void save(User user)
	{
		UserRepo.save(user);
	}
	public int saveshare(InvestmentDetails invest)
	{	
		InvestmentDetails inv=InvRepo.save(invest);
		return inv.getInvestmentNumber();
	}
	public String findEmail(String email) throws NullException
	{
	     User u=UserRepo.findByEmail(email);
		String ptr = null;  
		String vemail=u.getEmail();
        // Checking if ptr.equals null or works fine. 
            if (vemail.equals(ptr)) 
            {
                System.out.print("undefined Service"); 
                return "undefined";
            }
            else 
                System.out.print(u.getEmail()+"Service"); 
                return u.getFirstName();            
     } 
	public String password(String upass, String email)
	{
		String ptr=null;
	   User ne=UserRepo.findByEmail(email);
	   User np=UserRepo.findByPassword(upass);
	   if (np.getPassword()==ptr || ne.getEmail()==ptr) 
       {
           System.out.print("undefined Service"); 
           return "undefined";
       }
       else 
           System.out.print(np.getPassword()+"Service"); 
	        return np.getPassword();
	}
}
