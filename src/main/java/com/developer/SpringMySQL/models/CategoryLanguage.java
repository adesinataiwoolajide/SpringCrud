package com.developer.SpringMySQL.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
@Setter
@Getter
public class CategoryLanguage {

    @Column(name = "categorylanguage")
    public String categorylanguage;


    @Override
    public String toString() {
        return "CategoryLanguage{" +
                "categorylanguage='" + categorylanguage + '\'' +
                '}';
    }
}
