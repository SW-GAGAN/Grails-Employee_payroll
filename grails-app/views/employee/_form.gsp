<!-- Employee Form -->
<div class="form-head">
    Employee Payroll Form
</div>

<!-- Employee Name -->
<div class="row-content">
    <label class="label text" for="name"><g:message code="name"/></label>
    <g:textField class="input" name="name" value="${employee?.name}" placeholder="Enter your name" required="" />
    <UIHelper:renderErrorMessage fieldName="name" model="${employee}" errorMessage="please.enter.name"/>
</div>

<!-- Profile Pic-->
<div class="row-content">
    <label class="label text"  ><g:message code="profile.image"/></label>
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

<!-- Gender -->
<div class="row-content">
    <label class="label text" ><g:message code="gender"/></label>
    <div>
        <g:radio id="male" name="gender" value="Male" />
        <label class="text" for="male">Male</label>
        <g:radio id="female" name="gender" value="Female" />
        <label class="text" for="female">Female</label>
    </div>
</div>

<!-- Department -->
<div class="row-content">
    <label class="label text"  ><g:message code="department"/></label>
    <div>
        <g:checkBox class="checkbox" id="hr" name="department" value="HR" checked="false"/>
        <label class="text" for="hr">HR</label>
        <g:checkBox class="checkbox" id="sales" name="department" value="Sales" checked="false"/>
        <label class="text" for="sales">Sales</label>
        <g:checkBox class="checkbox" id="finance" name="department" value="Finance" checked="false" />
        <label class="text" for="finance">Finance</label>
        <g:checkBox class="checkbox" id="engineer" name="department" value="Engineer" checked="false" />
        <label class="text" for="engineer">Engineer</label>
        <g:checkBox class="checkbox" id="others" name="department" value="Others" checked="false" />
        <label class="text" for="others">Others</label>
    </div>
</div>

<!-- Employee Salary -->
<div class="row-content">
    <label class="label text" ><g:message code="salary"/></label>
    <g:textField class="input" name="salary" value="${employee?.salary}" placeholder="Enter your Salary" required="" />
    <UIHelper:renderErrorMessage fieldName="salary" model="${employee}" errorMessage="please.enter.salary"/>
</div>

<!-- Employee Start Date -->
<div class="row-content">
    <label class="label text" ><g:message code="date"/></label>
    <div id="date">
        <g:datePicker name="startDate" value="${employee?.startDate}"
                      precision="day" years="${2021..1960}"/>
    </div>
</div>

<!--Notes Text Area-->
<div class="row-content">
    <label class="label text" for="notes"><g:message code="note"/></label>
    <textarea id="notes" class="input" name="Notes" style="height:100px;" value="${employee?.note}" ></textarea>
</div>