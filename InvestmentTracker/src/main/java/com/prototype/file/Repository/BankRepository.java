package com.prototype.file.Repository;
import com.prototype.file.entity.Bank;
import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;

@Repository
public interface BankRepository extends JpaRepository<Bank, String>{

}
