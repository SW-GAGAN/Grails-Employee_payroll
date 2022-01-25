package com.bridgelabz

class EmployeeController {

    EmployeeService employeeService

//collect list of employee and return it on ui

    def index() {
        def response = employeeService.list(params)
        [employeeList: response.list, total: response.count]
    }

//collect data from the particular employee by id

    def details(Integer id) {
        def response = employeeService.getById(id)
        if (!response) {
            redirect(controller: "employee", action: "index")
        } else {
            [employee: response]
        }
    }

    //redirect to params which will be used in save method

    def create() {
        [employee: flash.redirectParams]
    }

    //save the data if response is valid and redirect to index

    def save() {
        def response = employeeService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            redirect(controller: "employee", action: "create")
        } else {
            redirect(controller: "employee", action: "index")
        }
    }

    // Purpose : To get the data of the employee with the particular id and then redirect to index page

    def edit(Integer id) {
        if (flash.redirectParams) {
            [employee: flash.redirectParams]
        } else {
            def response = employeeService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
                redirect(controller: "employee", action: "index")
            } else {
                [employee: response]
            }
        }
    }

    // To Update the data of the employee with the help of service layer method
    def update() {
        def response = employeeService.getById(params.id)
        if (!response) {
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "employee", action: "index")
        } else {
            response = employeeService.update(response, params)
            if (!response.isSuccess) {
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.update"), false)
                redirect(controller: "employee", action: "edit")
            } else {
                flash.message = AppUtil.infoMessage(g.message(code: "updated"))
                redirect(controller: "employee", action: "index")
            }
        }
    }


    // To delete data of employee by using the service layer delete method

    def delete(Integer id) {
        def response = employeeService.getById(id)
        if (!response) {
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "employee", action: "index")
        } else {
            response = employeeService.delete(response)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.delete"), false)
            } else {
                flash.message = AppUtil.infoMessage(g.message(code: "deleted"))
            }
            redirect(controller: "employee", action: "index")
        }
    }
}