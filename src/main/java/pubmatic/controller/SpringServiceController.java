package pubmatic.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.bind.annotation.*;
import pubmatic.model.Employee;
import pubmatic.service.EmployeeService;


@RestController
@RequestMapping("/service/employess/")
public class SpringServiceController {


    @Autowired
    EmployeeService service;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = "/{id}", method = RequestMethod.GET,headers="Accept=application/json")
    @ResponseBody
    public Employee getEmployee(@PathVariable int id) {
        Employee employee = new Employee();
        employee.setName("Vikrant");
        return employee;
    }

    @RequestMapping(method = RequestMethod.GET,headers="Accept=application/json")
    @ResponseBody
    public List<Employee> getAllEmployee() {
        List<Employee> employees = service.findAllEmployees();
        return employees;
    }


    @RequestMapping(value = { "/edit-{ssn}-employee" }, method = RequestMethod.GET)
    public Employee getEmployee(@PathVariable String ssn) {
        Employee employee = service.findEmployeeBySsn(ssn);

        return employee;
    }


}