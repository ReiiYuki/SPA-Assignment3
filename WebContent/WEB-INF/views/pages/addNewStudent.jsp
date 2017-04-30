<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h1 class="title">Student Application Form</h1>
${message}
<form:form method="POST" action="${pageContext.request.contextPath}/addNewStudent" modelAttribute="student">
	<div class="field">
		<form:label path="name" class="label">Name</form:label>
		<p class="control">
			<form:input path="name" class="input" placeholder="What is student's name ?"/>			
		</p>
	</div>
	<div class="field">
		<form:label path="gpax" class="label">GPAX</form:label>
		<p class="control">
			<form:input path="gpax" class="input" placeholder="How about his/her GPAX ?"/>
		</p>
	</div>
	<div class="field">
		<form:label path="ambition" class="label">Ambition</form:label>
		<p class="control">
			<form:input path="ambition" class="input" placeholder="What is his/her ambition ?"/>
		</p>
	</div>
	<div class="field">
		<p class="control">
			<button type="submit" class="button is-info">Save</button>
		</p>
	</div>
</form:form>