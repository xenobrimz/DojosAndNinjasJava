package com.codingdojo.dojosandninjas.dojosandninjas.repositories;

import com.codingdojo.dojosandninjas.dojosandninjas.models.Dojo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long> {
    
}
