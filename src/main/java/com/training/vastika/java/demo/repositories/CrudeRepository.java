package com.training.vastika.java.demo.repositories;

import java.util.List;

public interface CrudeRepository<T> {
    List<T> findAll();
    T findById(int id);
    boolean update(T t);
}
