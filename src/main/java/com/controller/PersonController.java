package com.controller;
import com.pojo.Person;
import com.service.PersonService;
import com.service.serviceimpl.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * 这个是首页面的控制类
 */
@RestController
public class PersonController {

    @Autowired
    private PersonService personService;

//    返回所有用户的信息
    @RequestMapping("/check")
    public Map<String, Object> k1() {
        List<Person> people=personService.FindAll();
        System.out.println(people);
        Map<String, Object> map = new HashMap<>();
        map.put("result",people);
        return map;
    }

//    用来返回修改结果
    @RequestMapping("/update")
    public Map<String, Object> kk(String user_name,String user_tel,String user_info,int flag) {
         boolean jun=false;
        Person person=new Person(user_name,user_tel,user_info);
        System.out.println("用来修改的数据"+person);
        System.out.println(flag);
        switch (flag){
            case 2:
                jun=personService.Add(person);
                break;
            case 4:
                jun=personService.Delete(person);
                break;
            case 3:
                jun=personService.Update(person);
            break;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("result",jun);
        return map;
    }
}
