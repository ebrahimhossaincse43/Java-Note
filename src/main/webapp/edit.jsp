
<%@page import="com.todo.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@ include file="navbar.jsp"%>

		<br>
		<h1 class="text-center">Edit your note</h1>
		<%
		
		int noteId= Integer.parseInt(request.getParameter("note_id"));
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Note note = (Note) s.get(Note.class, noteId);
		
		%> 
		
		<form action="UpdateServlet" method="post">
		
			<input value="<%=note.getId() %>" name="noteId" type="hidden"  />
			<div class="form-group">
				<label for="title">Note Title</label> <input required 
				name="title"
				 type="text"
					class="form-control" 
					id="title" 
					placeholder="Enter here"
					value="<%=note.getTitle()%>"
					/>

			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required 
				name="content"
				 class="form-control" id="content"
					placeholder="Type your content here" style="height: 200px"
					
					><%=note.getContent()%></textarea>
			</div>
			<div class="save_button text-center">
			<button type="submit" class="btn btn-success">Save your note</button>
			</div>
		</form>
		

	</div>

</body>
</html>