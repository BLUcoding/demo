package com.mapper;


import com.pojo.Person;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
public interface PersonMapper {
     List<Person> FindUser();
     int UpdatePerson(Person person);
     int DeletePerson(Person person);
     int AddPerson(Person person);
}
