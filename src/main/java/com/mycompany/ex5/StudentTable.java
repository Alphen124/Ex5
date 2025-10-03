package com.mycompany.ex5;

import jakarta.persistence.*;
import java.util.List;

public class StudentTable {

    private static final EntityManagerFactory emf = 
        Persistence.createEntityManagerFactory("StudentPU");

    
    public static void insertStudent(Student s) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(s);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

   
    public static Student findStudent(Integer id) {
        EntityManager em = emf.createEntityManager();
        try {
            return em.find(Student.class, id);
        } finally {
            em.close();
        }
    }

   
    public static List<Student> findAll() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createNamedQuery("Student.findAll", Student.class)
                     .getResultList();
        } finally {
            em.close();
        }
    }
}
