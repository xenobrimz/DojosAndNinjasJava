package com.codingdojo.dojosandninjas.dojosandninjas.repositories;

import com.codingdojo.dojosandninjas.dojosandninjas.models.Ninja;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {
    
}

