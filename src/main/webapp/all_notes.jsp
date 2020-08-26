<%@page import="java.util.List"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.todo.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes:Note Taker</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>

		<br>
		<h1 class="text-center">All Notes</h1>
		<br>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query query = s.createQuery("from Note");
				List<Note> list = query.list();

				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img src="img/paper.png" class="card-img-top m-4 mx-auto"
						alt="This is a note image" style="max-width: 70px">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p><b class="text-primary"><%=note.getAddedDate() %></b></p>
						<div class="container-button  text-center mt-2">
							<a href="DeleteNoteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a> 
							<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a> 
						</div>

					</div>
				</div>


				<%
					}

				s.close();
				%>


			</div>
		</div>
	</div>
</body>
</html>