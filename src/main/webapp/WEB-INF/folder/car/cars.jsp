<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:pageTemplate pageTitle="Cars">
   <h1>Cars</h1>
    
   <form method="POST" action="${pageContext.request.contextPath}/Cars">
     <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Cars/Create" role="button">Add Car</a>
     <button class="btn btn-danger" type="submit">Delete Cars</button>
   <c:forEach var="car" items="${cars}" varStatus="status">
      <div class="row">
          <div class="col-md">
              <input type="checkbox" name="car_ids" value="${car.id}"/>
          </div>2
          <div class="col-md-1">
              ${car.licensePlate}
              
          </div><!-- comment -->
          <div class="col-md-1">
              ${car.parkingSpot}
          </div>
          <div class="col-md-1">
              ${car.username}
          </div>
          <div class ="col-md-2">
                    <img src="${pageContext.request.contextPath}/Cars/Photos?id=${car.id}" width="48" />
                </div>
          <div class="col-md-2">
            <a class="btn btn-secondary" href ="${pageContext.request.contextPath}/Cars/Update?id=${car.id}" role="button">Edit Car</a>
          </div>
          <div class="col-md-2">
            <a class="btn btn-secondary" href ="${pageContext.request.contextPath}/Cars/AddPhoto?id=${car.id}" role="button">Add Photo</a>
          </div>
      </div>
   </c:forEach>
   </form>
   <h5>Free Parking spots: ${numberOfFreeParkingSpots}</h5>
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