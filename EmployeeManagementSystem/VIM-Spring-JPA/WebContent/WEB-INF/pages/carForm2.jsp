<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%><html><head>  <link rel="stylesheet" type="text/css" href="default.css"></head><body>	<p><%@include file="showImage.jsp"%></p>
  <p><a href="controller?action=viewCarList">[Return to List]</a></p>
    <form:form commandName="car" action="saveCar" method="post">    
  <input type="hidden" name="action" value="saveCar" />
  <input type="hidden" name="id" value="${car.id}" />
  <table>
    <!-- input fields -->    <%-- <tr>      <td>Make<font color="red"><sup>*</sup></font> </td>
      <td><form:input type="text" path="make" value="${car.make}" /></td>
    </tr>  
    <tr>        <td>Model</td>
      <td><form:input type="text" path="model" value="${car.model}" /></td>
    </tr>    
    <tr>      <td class="model-year">Model Year</td> --%>
      <%-- <td><form:input type="text" path="modelYear" value="${car. modelYear}" /></td>
    </tr> --%>
     <tr>        <td>KINID</td>      <td><form:input type="text" path="kinId" value="${car.kinId }" /></td>    </tr>      <tr>        <td>EMPNAME</td>      <td><form:input type="text" path="empname" value="${car.empname }" /></td>    </tr>      <tr>        <td>MAIL</td>      <td><form:input type="text" path="mail" value="${car.mail }" /></td>    </tr>     <tr>        <td>PHONE</td>      <td><form:input type="text" path="phoneNo" value="${car.phoneNo }" /></td>    </tr>     <tr>      <td>ADDRESS</td>     <td><TEXTAREA NAME="textarea1" ROWS="5" value="${car.address }"></textarea></td>    </tr>     <tr>        <td>DOB(dd/mm/yyyy)</td>      <td><form:input type="text" path="dob" value="${car.dob}"/></td>    </tr>     <tr>        <td>DOJ(dd/mm/yyyy)</td>      <td><form:input type="text"  path="doj" value="${car.doj}"/></td>    </tr>    
    <!-- Save/Reset buttons -->
    <tr>
      <td colspan="2">
        <input type="submit" name="save" value="Save" /> 
        &nbsp;&nbsp;
        <input type="reset" name="reset" value="Reset" />
      </td>
    </tr>                  </table>
  </form:form></body></html>