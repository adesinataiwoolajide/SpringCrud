package com.developer.SpringMySQL.models;


import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

@Entity
@Table(name = "partners")
@Getter
@Setter

public class Partners {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "partnerid")
    public Integer partnerid;

    @Column(name = "partnername")
    public String partnername;

    @Column(name = "partnerlogo")
    public String partnerlogo;

    public void setPartnerlogo(MultipartFile partnerlogo) {


    }
}
