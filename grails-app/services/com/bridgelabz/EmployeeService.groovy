package com.bridgelabz

import grails.web.servlet.mvc.GrailsParameterMap
import org.springframework.validation.BindingResult

class EmployeeService {


     //  To save the employee if data is valid and if it has no errors with the help of flush

    def save(GrailsParameterMap params) {
        EmployeeModel employee = new EmployeeModel(params)
        def response = AppUtil.saveResponse(false, employee)
        if (employee.validate()) {
            employee.save(flush: true)
            if (!employee.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }

    // To list all the data of the employee in the employee payroll and (pagination)

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<EmployeeModel> employeeList = EmployeeModel.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        } as List<EmployeeModel>
        return [list: employeeList, count: EmployeeModel.count()]
    }

    // To save updated data of employee in database

       def update(EmployeeModel employee, GrailsParameterMap params) {
        employee.properties = params as BindingResult
        def response = AppUtil.saveResponse(false, employee)
        if (employee.validate()) {
            employee.save(flush: true)
            if (!employee.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }


    // To get data of employee with particular ID

    def getById(Serializable id) {
        return EmployeeModel.get(id)
    }

    // To delete data of employee from the database of employee payroll app

      def delete(EmployeeModel employee) {
        try {
            employee.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
