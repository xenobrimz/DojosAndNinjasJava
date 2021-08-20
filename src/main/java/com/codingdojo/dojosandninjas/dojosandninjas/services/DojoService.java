package com.codingdojo.dojosandninjas.dojosandninjas.services;

import com.codingdojo.dojosandninjas.dojosandninjas.repositories.DojoRepository;

import java.util.List;
import java.util.Optional;

import com.codingdojo.dojosandninjas.dojosandninjas.models.Dojo;
import org.springframework.stereotype.Service;

@Service
public class DojoService {
    private final DojoRepository dojoRepo;

    public DojoService(DojoRepository dojoRepo){
        this.dojoRepo = dojoRepo;
    }

    public List<Dojo> allDojos(){
        return (List<Dojo>)dojoRepo.findAll();
    }

    public Dojo createDojo(Dojo d){
        return this.dojoRepo.save(d);
    }

    public Dojo findDojo(Long id){
        Optional<Dojo> optionalDojo = dojoRepo.findById(id);
        if(optionalDojo.isPresent()){
            return optionalDojo.get();
        }
        return null;
    }

    public Dojo updateDojo(Dojo d){
        return dojoRepo.save(d);
    }

    public void deleteDojo(Long id){
        dojoRepo.deleteById(id);
    }
}
