package com.example.jvm2_lec2_jsp_project.utils;

import com.example.jvm2_lec2_jsp_project.models.Person;

import java.util.ArrayList;
import java.util.List;

public class PersonUtil {
    private static List<Person> personList;

    static {
        personList = new ArrayList<>();
    }

    private PersonUtil() {
    }

    public static List<Person> getPersonList(){
        return personList;
    }

    public static void setPersonList(Person  person){
        personList.add(person);
    }

    public static boolean deleteItem(int Index){
       Person person= personList.remove(Index);
        return person != null;
    }

    public static Person getElementByID(int Index){
        Person person =  personList.get(Index);

        return person;
    }

    public static void updatePerson(int Index, Person person){
        personList.set(Index, person);
    }
}
