<%@ include file="header.jsp"%>
<div class="col-12 col-12 col-md-10" id="searchTemp">
	<form action="EditMember" method="post">
		<div class="form-group">
			<h2>Profile</h2>
			<c:if test="${empty isEdit}">
				<a href="showEditMember?email=${member.email}"
					class="btn btn-primary">Edit Profile</a>
			</c:if>

		</div>
		<div class="col-12">
			<div class="form-group font-weight-bold">
				<label for="">First Name</label>
				<c:choose>
					<c:when test="${empty isEdit}">
						<input type="text" class="form-control" name="firstName"
							id="firstName" value="${member.firstName}" disabled="disabled">
					</c:when>
					<c:otherwise>
						<input type="text" class="form-control" name="firstName"
							id="firstName" value="${member.firstName}">
						<small id="errorFn" class="form-text text-muted alert-danger"></small>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="form-group font-weight-bold">
				<label for="">Last Name</label>
				<c:choose>
					<c:when test="${empty isEdit}">
						<input type="text" class="form-control" name="lastName"
							id="lastName" value="${member.lastName}" disabled="disabled">
					</c:when>
					<c:otherwise>
						<input type="text" class="form-control" name="lastName"
							id="lastName" value="${member.lastName}"
							placeholder="Enter the last name">
						<small id="errorFn" class="form-text text-muted alert-danger"></small>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="form-group">
				<label for="" class="font-weight-bold">Email </label> <input
					type="hidden" name="email" value="${member.email}"> <input
					type="hidden" name="id" value="${member.id}">
				<p>${member.email}</p>
			</div>
			<div class="form-group">
				<label for="" class="font-weight-bold">Hobbies</label> <input
					type="checkbox" name="hobbies" value="football">Football
				&nbsp <input type="checkbox" name="hobbies" value="basketball">Basketball
			</div>
			<div class="form-group">
				<label for="" class="font-weight-bold">Gender </label> 
				<select name="gender" id="cars">
					<option >----</option>
					<option value="0" ${member.gender == '0' ? 'selected' : ''}>Man</option>
					<option value="1" ${member.gender == '1' ? 'selected' : ''}>Woman</option>
				</select>
			</div>
			<div class="form-group font-weight-bold">
				<label for="">Phone</label>
				<c:choose>
					<c:when test="${empty isEdit}">
						<input type="text" class="form-control" name="phone"
							value="${member.phone}" id="phone" disabled="disabled">
					</c:when>
					<c:otherwise>
						<input type="text" class="form-control" name="phone"
							value="${member.phone}" id="phone"
							placeholder="Enter your phone number">
						<small id="errorFn" class="form-text text-muted alert-danger"></small>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="form-group font-weight-bold">
				<label for="">Description</label>
				<c:choose>
					<c:when test="${empty isEdit}">
						<textarea class="form-control" name="description"
							disabled="disabled">${member.description}</textarea>
						<small id="errorFn" class="form-text text-muted alert-danger"></small>
					</c:when>
					<c:otherwise>
						<textarea class="form-control" name="description">${member.description}</textarea>
						<small id="errorFn" class="form-text text-muted alert-danger"></small>
					</c:otherwise>
				</c:choose>

			</div>
			<c:if test="${not empty isEdit}">
				<input id="signIn" type="submit" value="Submit button">
				<input id="signIn" type="reset" value="Reset button">
			</c:if>

		</div>

	</form>
</div>
<%@ include file="footer.jsp"%>