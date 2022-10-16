package com.company.spring.mvc_hibernate_aop.service;

import com.company.spring.mvc_hibernate_aop.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployeeById(int employeeId);

    public void deleteEmployee(int id);
}
