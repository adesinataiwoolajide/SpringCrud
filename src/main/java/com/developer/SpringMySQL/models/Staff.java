package com.developer.SpringMySQL.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;

@Entity
@Table(name="staffs")

@Setter
@Getter
public class Staff {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    public int id;


    @Column(name = "staffname")
    public String staffname;

    @Email
    @Column(name="email")
    public String email;

    @Min(10)
    @Column(name="phonenumber")
    public Long phonenumber;

    @Column(name = "stafftype")
    public  String stafftype;

}
