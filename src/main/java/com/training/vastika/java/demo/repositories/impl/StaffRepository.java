package com.training.vastika.java.demo.repositories.impl;

import com.training.vastika.java.demo.models.Staff;
import com.training.vastika.java.demo.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StaffRepository extends JpaRepository<Staff,Integer> {
}
