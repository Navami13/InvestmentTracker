package com.prototype.file.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.prototype.file.entity.Stocks;
import org.springframework.stereotype.Repository;

@Repository
public interface StocksRepository extends JpaRepository<Stocks, Integer>{

}
