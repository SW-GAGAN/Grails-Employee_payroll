package com.bridgelabz

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class EmployeeModelServiceSpec extends Specification {

    EmployeeModelService employeeModelService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new EmployeeModel(...).save(flush: true, failOnError: true)
        //new EmployeeModel(...).save(flush: true, failOnError: true)
        //EmployeeModel employeeModel = new EmployeeModel(...).save(flush: true, failOnError: true)
        //new EmployeeModel(...).save(flush: true, failOnError: true)
        //new EmployeeModel(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //employeeModel.id
    }

    void "test get"() {
        setupData()

        expect:
        employeeModelService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<EmployeeModel> employeeModelList = employeeModelService.list(max: 2, offset: 2)

        then:
        employeeModelList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        employeeModelService.count() == 5
    }

    void "test delete"() {
        Long employeeModelId = setupData()

        expect:
        employeeModelService.count() == 5

        when:
        employeeModelService.delete(employeeModelId)
        sessionFactory.currentSession.flush()

        then:
        employeeModelService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        EmployeeModel employeeModel = new EmployeeModel()
        employeeModelService.save(employeeModel)

        then:
        employeeModel.id != null
    }
}
