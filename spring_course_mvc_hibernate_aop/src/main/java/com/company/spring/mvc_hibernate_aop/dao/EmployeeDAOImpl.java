package com.company.spring.mvc_hibernate_aop.dao;

import com.company.spring.mvc_hibernate_aop.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Queue;

@Repository("employeeDao")
public class EmployeeDAOImpl implements EmployeeDAO{
    @Autowired
    @Qualifier("sessionFactory")
    private SessionFactory sessionFactory;
    @Override
    public List<Employee> getAllEmployees() {
        Session session = sessionFactory.getCurrentSession();
        List<Employee>  allEmployees = session.createQuery("from Employee",Employee.class).getResultList();
        return allEmployees;
    }

    @Override
    public void saveEmployee(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(employee);
    }

    @Override
    public Employee getEmployeeById(int employeeId) {
        Session session = sessionFactory.getCurrentSession();
        Employee emp = session.get(Employee.class,employeeId);
        return emp;
    }

    @Override
    public void deleteEmployee(int id){
        Session session = sessionFactory.getCurrentSession();
        Query<Employee> query = session.createQuery("delete from Employee "+
                "where id=:employeeId");
        query.setParameter("employeeId",id);
        query.executeUpdate();
    }

}
