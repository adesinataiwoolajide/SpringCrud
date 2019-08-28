package com.developer.SpringMySQL.models;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "services")

@Setter
@Getter
public class Services {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "serviceid")
    public Integer serviceid;

    @Column(name = "servicename")
    public String servicename;



}
