package com.bridgelabz

import grails.web.servlet.mvc.GrailsParameterMap

class EmployeeService {

    /**
     * Purpose : To save the employee if data is valid and if it has no errors with the help of flush
     * if flush is true then it allows ORM to save the employee data
     *
     * @param params
     * @return response
     */
    def save(GrailsParameterMap params) {
        EmployeeModel employee = new EmployeeModel(params)
        def response = AppUtil.saveResponse(false, member)
        if (employee.validate()) {
            employee.save(flush: true)
            if (!employee.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }

    /**
     * Purpose : To list all the data of the employee in the employee payroll
     * and want to show list to the frontend (pagination)
     * @param params
     * @return
     */
    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<EmployeeModel> employeeList = Employee.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        } as List<EmployeeModel>
        return [list: employeeList, count: employeeList.count()]
    }
}
