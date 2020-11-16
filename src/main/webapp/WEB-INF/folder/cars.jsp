<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:pageTamplate pageTitle="Cars">
   <h1>Cars</h1>
     
   <c:forEach var="car" items="${cars}" varStatus="status">
      <div class="row">
          <div class="col-md-4">
              ${car.licensePlate}
              
          </div><!-- comment -->
          <div class="col-md-4">
              ${car.parkingSpot}
          </div>
          <div class="col-md-4">
              ${car.username}
          </div>
       </div>
   </c:forEach>
   <h5>Free Parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTamplate>
