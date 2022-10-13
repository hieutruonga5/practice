<%@ include file="header.jsp" %>
             <div class="col-12 col-12 col-md-10" id="searchTemp">
          	 	<div class="form-group">
		                <h2> View Content </h2>
		        </div>
				<table id="dtBasicExample"
					class="table table-striped table-bordered table-sm">
					<thead>
						<tr>
							<th>#</th>
							<th>Title</th>
							<th>Brief</th>
							<th>Create Date</th>
							<th></th>
						</tr>
					</thead>
					<tbody >
						<c:forEach items="${contents}" var="content" varStatus="status">
							<tr>
								<th scope="row">${status.count}</th>
								<td>${content.title}</td>
								<td>${content.brief}</td>
								<td>${content.createDate}</td>
									<td><a href="deleteContent?id=${content.id}" data-userId="${user.employeeId}" class="btnDelete">xoa </a>
									<a href="<%=request.getContextPath() %>/employee/edit?employeeId=${user.employeeId }">sua</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

 <%@ include file="footer.jsp" %>