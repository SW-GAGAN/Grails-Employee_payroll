package com.bridgelabz

class EmployeeController {

    EmployeeService employeeService

    def index() {
//        def response = employeeService.list(params)
//        [employeeList: response.list, total:response.count]
    }

    def create(){
        [employee: flash.redirectParams]
    }


    def save() {
        def response = employeeService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            redirect(controller: "employee", action: "create")
        }else{
            redirect(controller: "employee", action: "index")
        }
    }
}