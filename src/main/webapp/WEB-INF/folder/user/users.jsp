<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:pageTemplate pageTitle="Users">
   <h1>Users</h1>
   
   <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
       <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Users/Create" role="button">Add User</a>
   </c:if>
   <c:forEach var="user" items="${users}" varStatus="status">
      <div class="row">
          <div class="col-md-4">
              ${user.username}
          </div><!-- comment -->
          <div class="col-md-4">
              ${user.email}
          </div>
          <div class="col-md-4">
              ${user.position}
          </div>
       </div>
   </c:forEach>
</t:pageTemplate>

   <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  window.addEventListener('load', function () {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation')

    // Loop over them and prevent submission
    Array.prototype.filter.call(forms, function (form) {
      form.addEventListener('submit', function (event) {
        if (form.checkValidity() === false) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
  }, false)
})()
</script>