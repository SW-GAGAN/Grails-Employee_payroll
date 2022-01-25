<meta name="layout" content="main"/>

<div class="main-content">
    <div class="header-content">
        <div class="emp-detail-text">
            Employee Details
            <div class="emp-count">10</div>
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
            <tr>
                <td>
                    <g:img class="profile" dir="../assets/profile-images/" file="Ellipse%20-1.png" alt="Profile"/>
                </td>
                <td>ROSHNI MALI</td>
                <td>female</td>
                <td><div class="dept-label">Finance</div>
                <td>&#8377; 1200000</td>
                <td>21 Aug 2020</td>
                <!--To update and delete an employee from the database-->
                <td>
                    <g:img (click)="remove(employee.id)" dir="../assets/icons/"
                           file="delete-black-18dp.svg" alt="delete" />
                    <g:img (click)="update(employee)" dir="../assets/icons/"
                           file="create-black-18dp.svg" alt="edit" />
                </td>
            </tr>

        </table>
    </div>
</div>