/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VacServ;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author mooham12314
 */
public class StudentTable {

    public static List<Student> findAllStudent() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        List<Student> stList = null;
        try {
            stList = (List<Student>) em.createNamedQuery("Student.findAll").getResultList();         
        } catch (Exception e) {
            throw new RuntimeException(e);
            
        }
        finally {
            em.close();
            emf.close();
        }
        return stList;
    }
    
    public static Student findStudentById(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        Student st = null;
        try {
            st = em.find(Student.class, id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        finally {
            em.close();
            emf.close();
        }
        return st;
    }
    public static int updateStudent(Student st) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Student target = em.find(Student.class, st.getId());
            if (target == null) {
                return 0;
            }
            target.setVaccineName(st.getVaccineName());
            em.persist(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
        
    }
    public static int removeStudent(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Student target = em.find(Student.class, id);
            if (target == null) {
                return 0;
            }
            em.remove(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
    }
    public static int insertStudent(Student st) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Student target = em.find(Student.class, st.getId());
            if (target != null) {
                return 0;
            }
            em.persist(st);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            
        }
        finally {
            em.close();
            emf.close();
        }
        return 1;
    }

}
