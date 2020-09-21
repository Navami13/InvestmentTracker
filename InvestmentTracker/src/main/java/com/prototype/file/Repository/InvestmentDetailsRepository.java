package com.prototype.file.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.prototype.file.entity.InvestmentDetails;


import org.springframework.stereotype.Repository;

@Repository
public interface InvestmentDetailsRepository extends JpaRepository<InvestmentDetails, Integer> {

}
