<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div>
	<h1 class="title">Students List</h1>
	<h3>${message}</h3>
	<table class="table">
		<tbody>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>GPAX</th>
				<th>Ambition</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="student" items="${students}" >
				<tr>
					<td><c:out value="${student.id }"/></td>
					<td><c:out value="${student.name }"/></td>
					<td><c:out value="${student.gpax }"/></td>
					<td><c:out value="${student.ambition }"/></td>
					<td><a href="${pageContext.request.contextPath}/editStudent/${student.id}"><span class="icon"><i class="fa fa-pencil " aria-hidden="true"></i></span></a></td>
					<td>
						<form action="${pageContext.request.contextPath}/deleteStudent/${student.id}" method="POST" id="deleteForm${student.id}">
							<a href="#" onclick="document.getElementById('deleteForm${student.id}').submit()">
								<span class="icon">
									<i class="fa fa-trash " aria-hidden="true">
									</i>
								</span>
							</a>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>