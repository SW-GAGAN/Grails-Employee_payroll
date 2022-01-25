<!-- Add Employee Page Layout -->

<meta name="layout" content="main"/>

<div class="form-content">

    <g:form class="form" controller="employee" action="create" method="POST">
        <div class="form-head">
            Employee Payroll Form
        </div>

        <!----- Employee Name ----->
        <div class="row-content">
            <label class="label text" for="name">Name</label>
            <g:textField class="input" name="name" value="${myValue}" placeholder="Enter your name" required="" />
        </div>

        <!----- Profile Pic ----->
        <div class="row-content">
            <label class="label text"  >Profile Image</label>
            <div class="profile-radio-content">
                <label>
                    <g:radio id="profile1" name="profilePic" value="../assets/profile-images/Ellipse -3.png" />
                    <g:img  class="profile" id="image1" dir="../assets/profile-images" file="Ellipse -3.png"/>
                </label>
                <label>
                    <g:radio id="profile2" name="profilePic" value="../assets/profile-images/Ellipse 1.png" />
                    <g:img  class="profile" id="image2" dir="../assets/profile-images" file="Ellipse 1.png"/>
                </label>
                <label>
                    <g:radio id="profile3" name="profilePic" value="../assets/profile-images/Ellipse -8.png" />
                    <g:img  class="profile" id="image3" dir="../assets/profile-images" file="Ellipse -8.png"/>
                </label>
                <label>
                    <g:radio id="profile4" name="profilePic" value="../assets/profile-images/Ellipse -7.png" />
                    <g:img  class="profile" id="image4" dir="../assets/profile-images" file="Ellipse -7.png"/>
                </label>
            </div>
        </div>

        <!----- Gender ----->
        <div class="row-content">
            <label class="label text" >Gender</label>
            <div>
                <g:radio id="male" name="gender" value="male" />
                <label class="text" for="male">Male</label>
                <g:radio id="female" name="gender" value="female" />
                <label class="text" for="female">Female</label>
            </div>
        </div>

        <!----- Department ----->
        <div class="row-content">
            <label class="label text"  >Department</label>
            <div>
                <g:checkBox class="checkbox" id="hr" name="department" value="${false}" />
                <label class="text" for="hr">HR</label>
                <g:checkBox class="checkbox" id="sales" name="department" value="${false}" />
                <label class="text" for="sales">Sales</label>
                <g:checkBox class="checkbox" id="finance" name="department" value="${false}" />
                <label class="text" for="finance">Finance</label>
                <g:checkBox class="checkbox" id="engineer" name="department" value="${false}" />
                <label class="text" for="engineer">Engineer</label>
                <g:checkBox class="checkbox" id="others" name="department" value="${false}" />
                <label class="text" for="others">Others</label>
            </div>
        </div>

        <!----- Employee Salary ----->
        <div class="row-content">
            <label class="label text" >Choose Your Salary</label>
            <input class="input" type="range" name="salary" id="salary" min="300000" max="5000000" step="100" value="4000000" required>
            <output class="salary-output" for="salary">4000000</output>
        </div>

        <!----- Start Date ----->
        <div class="row-content">
            <label class="label text" >Start Date</label>
            <div id="date">
                <g:select id="day" name="date.day" from="${1..31}" value="${day}"
                          noSelection="['':'Day']"/>
                <g:select id="month" name="month.category" from="${['Jan', 'Fb', 'Mr',"Ap","May","Jn","Jl","Ag","Sp","Oc","Nv","Dc"]}"
                          valueMessagePrefix="month.category" noSelection="['':'Month']" />
                <g:select id="year" name="date.year" from="${2021..1960}" value="${year}"
                          noSelection="['':'Year']"/>
            </div>
        </div>

        <!----- Notes ----->
        <div class="row-content">
            <label class="label text" for="notes">Notes</label>
            <textarea id="notes" class="input" name="Notes" style="height:100px;" ></textarea>
        </div>

        <!----- Submit Reset Cancel Button ----->
        <div class="buttonParent">
            <g:link controller="employee" action="index" class="resetButton button cancelButton" value="${g.message(code: "cancel")}"><g:message code="Cancel"/></g:link>
            <div class="submit-reset">
                <g:submitButton class="button submitButton" name="save" value="${g.message(code: "submit")}"/>
                <button type="reset" class="resetButton button" id="resetButton">Reset</button>
            </div>
        </div>
    </g:form>
</div>