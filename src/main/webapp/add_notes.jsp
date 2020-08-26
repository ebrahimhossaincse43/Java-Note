<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ include file="all_js_css.jsp"%>

<title>Add Notes</title>
</head>
<body>

	<div class="container">
		<%@ include file="navbar.jsp"%>

		<br>
		<h1 class="text-center">Please fill your note details</h1>
		<br>

		<!-- this is note form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input required 
				name="title"
				 type="text"
					class="form-control" id="title" placeholder="Enter here">

			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required 
				name="content"
				 class="form-control" id="content"
					placeholder="Type your content here" style="height: 200px"></textarea>
			</div>
			<div class="save_button text-center">
			<button type="submit" class="btn btn-primary">Add Note</button>
			</div>
		</form>

	</div>
</body>
</html>
