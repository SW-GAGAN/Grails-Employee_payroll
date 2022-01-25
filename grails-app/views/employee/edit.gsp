<%--
  Created by IntelliJ IDEA.
  User: Dilip-Reddy
  Date: 26-01-2022
  Time: 01:07
--%>

<meta name="layout" content="main"/>

<div class="form-content">
<g:form class="form" controller="employee" action="update">
    <g:hiddenField name="id" value="${employee.id}"/>
    <g:render template="form" model="[edit:'yes']"/>
    <!-- Update-Reset-Cancel Button -->
    <div class="buttonParent">
    <g:link controller="employee" action="index" class="resetButton button cancelButton" ><g:message code="cancel"/></g:link>
        <div class="submit-reset">
            <g:submitButton class="button submitButton" name="update" value="${g.message(code: "update")}"/>
            <button type="reset" class="resetButton button" id="resetButton"><g:message code="reset"/></button>
        </div>
    </div>
</g:form>
</div>