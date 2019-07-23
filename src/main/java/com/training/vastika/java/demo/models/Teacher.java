package com.training.vastika.java.demo.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="Teacher")

public class Teacher {
    @Id
    @Column(name="id")
    private int id;
    @Column(name="firstname")
    private String firstname;
    @Column(name="lastName")
    private String lastname;
    @Column(name="address")
    private String address;
    @Column(name="subject")
    private String subject;

    public Teacher() {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.subject = subject;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setfirstname(String firstName) {
        this.firstname = firstName;
    }

    public void setlastname(String lastName) {
        this.lastname = lastName;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getId() {
        return id;
    }

    public String getfirstname() {
        return firstname;
    }

    public String getlastname() {
        return lastname;
    }

    public String getAddress() {
        return address;
    }

    public String getSubject() {
        return address;
    }


    @Override
    public String toString() {
        return "Teacher{" +
                "id=" + id +
                ", firstName='" + firstname + '\'' +
                ", lastName='" + lastname + '\'' +
                ", address='" + address + '\'' +
                ", subject=" + subject +
                '}';
    }
}


