<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ include file="header.jsp" %>
             <div class="col-12 col-12 col-md-10" id="searchTemp">
		        <form:form action="EditMember" method="post" modelAttribute="member">
		            <div class="form-group">
		                <h2>Edit Profile </h2>
		            </div>
		            <div class="col-12">
		                <div class="form-group font-weight-bold">
		                    <label for="">First Name</label>
		                    <input type="text" class="form-control" name="firstName" id="firstName" value="${member.firstName}" placeholder="Enter the first name">
		                    <small id="errorFn" class="form-text text-muted alert-danger"></small>
		                </div>
		                <div class="form-group font-weight-bold">
		                    <label for="">Last Name</label>
		                    <input type="text" class="form-control" name="lastName" id="firstName" value="${member.lastName}" placeholder="Enter the last name">
		                    <small id="errorFn" class="form-text text-muted alert-danger"></small>
		                </div>
		                <div class="form-group">
		                    <label for="" class= "font-weight-bold">Email </label>
		                    <input type="hidden" name = "email" value="${member.email}">
		                    <input type="hidden" name = "id" value="${member.id}">
		                    <p>${member.email}</p>
		                </div>
		                <div class="form-group font-weight-bold">
		                    <label for="">Phone</label>
		                    <input type="text" class="form-control" name="phone"  value="${member.phone}" id="phone" placeholder="Enter your phone number">
		                    <small id="errorFn" class="form-text text-muted alert-danger"></small>
		                </div>
		                <div class="form-group font-weight-bold">
		                    <label for="">Description</label>
		                    <textarea class="form-control" name="description" >${member.description}</textarea> 
		                    <small id="errorFn" class="form-text text-muted alert-danger"></small>
		                </div>
		                <input id="signIn" type="submit" value="Submit button">
		                <input id="signIn" type="reset" value="Reset button">
		            </div>

		        </form:form>
			</div>
   <%@ include file="footer.jsp" %>