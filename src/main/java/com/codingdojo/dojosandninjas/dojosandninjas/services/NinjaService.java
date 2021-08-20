package com.codingdojo.dojosandninjas.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import com.codingdojo.dojosandninjas.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.dojosandninjas.repositories.NinjaRepository;

import org.springframework.stereotype.Service;

@Service
public class NinjaService {
    private final NinjaRepository ninjaRepo;

    public NinjaService(NinjaRepository ninjaRepo){
        this.ninjaRepo = ninjaRepo;
    }

    public List<Ninja> allNinjas(){
        return (List<Ninja>)ninjaRepo.findAll();
    }

    public Ninja createNinja(Ninja d){
        return this.ninjaRepo.save(d);
    }

    public Ninja findNinja(Long id){
        Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
        if(optionalNinja.isPresent()){
            return optionalNinja.get();
        }
        return null;
    }

    public Ninja updateNinja(Ninja d){
        return ninjaRepo.save(d);
    }

    public void deleteNinja(Long id){
        ninjaRepo.deleteById(id);
    }
}
