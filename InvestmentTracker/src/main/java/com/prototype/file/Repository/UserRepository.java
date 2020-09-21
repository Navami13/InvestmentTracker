package com.prototype.file.Repository;

import org.springframework.data.jpa.repository.*;
import com.prototype.file.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
	User findByEmail(String email);
	User findByPassword(String password);
}
