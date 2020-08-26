<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ include file="all_js_css.jsp"%>

<title>Note Taker</title>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<div class="card mt-3">
			<img class="img-fluid mx-auto" src="img/paper.png"
				alt="This is a note image" style="max-width: 400px">
			<div class="card-body">
				<h1 class="text-primary text-uppercase text-center">Start
					Taking your notes</h1>
				<div class="text-center">
					<a href="add_notes.jsp" class="btn btn-primary">Start Here</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
