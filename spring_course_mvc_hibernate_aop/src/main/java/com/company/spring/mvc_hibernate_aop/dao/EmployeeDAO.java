package com.company.spring.mvc_hibernate_aop.dao;

import com.company.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployeeById(int employeeId);

    public void deleteEmployee(int id);

}
