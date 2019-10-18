package com.service.serviceimpl;

import com.mapper.PersonMapper;
import com.pojo.Person;
import com.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("PersonService")
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonMapper personMapper;


    @Override
    public List<Person> FindAll() {
        return personMapper.FindUser();
    }

    @Override
    public Boolean Update(Person person) {
        System.out.println("service 修改");
        if(personMapper.UpdatePerson(person)>0){
            return true;
        }
        return false;
    }

    @Override
    public Boolean Add(Person person) {
        System.out.println("service 增加");
        if(personMapper.AddPerson(person)>0){
            return true;
        }
        return false;
    }

    @Override
    public Boolean Delete(Person person) {
        System.out.println("service 删除");
        if(personMapper.DeletePerson(person)>0){
            return true;
        }
        return false;
    }
}
