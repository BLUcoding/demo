package com.service;

import com.pojo.Person;

import java.util.List;

public interface PersonService {
     List<Person> FindAll();
    Boolean Update(Person person);
    Boolean Add(Person person);
    Boolean Delete(Person person);

}
