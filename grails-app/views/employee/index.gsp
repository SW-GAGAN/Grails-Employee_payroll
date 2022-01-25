<meta name="layout" content="main"/>

<div class="main-content">
    <div class="header-content">
        <div class="emp-detail-text">
            Employee Details
            <div class="emp-count">${employeeList.size()}</div>
        </div>
        <g:link controller="employee" action="create" class="add-button">
            <g:img dir="../assets/icons/" file="add-24px.svg" alt=""/>
            <g:message code="add.user"/>
        </g:link>
    </div>

    <div class="table-main">
        <table id="table-display" class="table">

            <tr>
                <!-- Table Headers -->
                <th></th>
                <th>Name</th>
                <th>Gender</th>
                <th>Department</th>
                <th>Salary</th>
                <th>Start Date</th>
                <th>Actions</th>
            </tr>

            <!-- Employee Details in Table Rows -->
            <g:each in="${employeeList}" var="info">
                <tr>
                    <td><g:img class="profile" uri="${info.profilePic}" alt="Profile"/></td>
                    <td>${info.name}</td>
                    <td>${info.gender}</td>
                    <td>
                        <g:each in="${info.department}" var="i">
                            <div class="dept-label">${i}</div>
                        </g:each>
                    </td>
                    <td>&#8377; ${info.salary}</td>
                    <td>${info.startDate}</td>

                    <!--To update and delete an employee from the database-->
                    <td>
                        <g:link controller="employee" action="delete" id="${info.id}">
                            <g:img dir="../assets/icons/"
                                   file="delete-black-18dp.svg" alt="delete" />
                        </g:link>
                        <g:link controller="employee" action="edit" id="${info.id}">
                            <g:img (click)="update(employee)" dir="../assets/icons/"
                                   file="create-black-18dp.svg" alt="edit" />
                        </g:link>
                    </td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
