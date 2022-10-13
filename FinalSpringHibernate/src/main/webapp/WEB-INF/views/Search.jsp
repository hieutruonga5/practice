<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						</tr>
					</thead>
					<tbody >
						<c:forEach items="${contents}" var="content" varStatus="status">
							<tr>
								<th scope="row">${status.count}</th>
								<td>${content.title}</td>
								<td>${content.brief}</td>
								<td>${content.createDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
<script>

</script>
