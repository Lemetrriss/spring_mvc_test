package com.coreteka.pojo;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.LinkedHashMap;
import java.util.Map;

@Data
@Component
public class Student {
    private String firstName;
    private String lastName;
    private String country;
    private String favouriteLanguage;
    private String[] operationSystems;
//    private ImmutableMap<String, String> countryList;
    private Map<String, String> favouriteLanguageOpt;

    // parameter order: value, display label
    //


    public Student(){
//        countryList = ImmutableMap.of(
//                "BR", "Brazil",
//                "GR", "Germany",
//                "FR", "France",
//                "IN", "India");
        favouriteLanguageOpt = new LinkedHashMap<>();
        favouriteLanguageOpt.put("Java", "Java");
        favouriteLanguageOpt.put("C#", "C#");
        favouriteLanguageOpt.put("PHP", "PHP");
        favouriteLanguageOpt.put("Ruby", "Ruby");
    }
}