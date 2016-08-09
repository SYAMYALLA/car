<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@page errorPage="WEB-INF/showErrorMessage.jsp" %> --%>

<html>

<head>  
  <link rel="stylesheet" type="text/css" href="default.css">

  <script language="JavaScript">
      function checkAll(field)
      {
          for (i=0; i < field.length; i++)
          {
              field[i].checked = true;
          }
      }
  </script>
</head>

<body>
	<p><%-- <%@include file="showImage.jsp"%> --%></p>
  <p><a href="addCar">[Add Car]</a></p>
  
  <form name="deleteForm" method="post" action="controller">
  <input type="hidden" name="action" value="deleteCar" />
  <table>    <tr>
      <th><a href="javascript:checkAll(document.deleteForm.id)">Select All</a></th>
      <th>Action</th>
        <th>Id</th>      <th>KINID</th>      <th>ENAME</th>
      <th>MAIL</th>
      <th>PHONE</th>
      <th>ADDRESS</th>
      <th>DOB</th>
      <th>DOJ</th>
          <!--  <th class="model-year">Model Year</th> -->
        </tr>        <c:forEach items='${carList}' var='car'>      <tr>
      <td><input type="checkbox" name="id" value="${car.id}"></td>
      <td><a href="controller?action=addCar?id=${car.id}">Edit</a></td>     <td>${car.id }</td>
     <td>${car.kinId}</td>      <td>${car.empname}</td>
      <td>${car.mail}</td>
      <td>${car.phoneNo}</td>
      <td>${car.address}</td>
      <td>${car.dob}</td>
      <td>${car.doj}</td>     <%--  <td class="model-year">${car.modelYear}</td> --%>
            </tr>    </c:forEach>
    
    <tr>
      <td colspan="5">
        <input type="submit" name="Delete Checked" value="Delete Checked" />
        &nbsp;&nbsp;
        <input type="reset" name="Reset" value="Reset" />
      </td>
    </tr>
      </table>
  </form></body>

</html>