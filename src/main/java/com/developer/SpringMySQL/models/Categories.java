package com.developer.SpringMySQL.models;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "categories")
@Setter
@Getter
@Cacheable
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Categories {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    public int id;

    @Column(name="categoryname")
    public  String categoryname;


    public CategoryLanguage categoryLanguage;


    public List<Categories> getList() {

        List<Categories> category = new ArrayList<Categories>();
        return category;
    }

    @Override
    public String toString() {
        return "Categories{" +
                "id=" + id +
                ", categoryname='" + categoryname + '\'' +
                ", categoryLanguage=" + categoryLanguage +
                '}';
    }
}