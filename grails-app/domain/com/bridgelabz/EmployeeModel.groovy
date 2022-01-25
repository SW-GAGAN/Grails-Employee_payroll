package com.bridgelabz

import grails.rest.Resource
import java.time.LocalDate

@Resource(uri="/employee")
class EmployeeModel {

    Long id
    String name
    String profilePic
    String gender
    String department
    String salary
    LocalDate date
    String note

    static constraints = {
        id unique: true, blank: false
        name blank: false
        profilePic blank: false
        gender blank: false
        department blank: false
        salary blank: false
        date blank: false
    }
}
