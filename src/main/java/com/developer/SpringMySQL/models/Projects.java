package com.developer.SpringMySQL.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "projects")
@Setter
@Getter
public class Projects {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int id;

    @NotEmpty
    @Column(name="projectname")
    public String projectname;


    @Column(name = "projectdescription")
    public String projectdescription;

    @OneToOne(fetch = FetchType.EAGER)
    public Categories categories;



    public void setCategories(String categories) {
    }
}
