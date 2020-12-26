<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page </title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp" %>
    <br>
     <h1>Edit your note </h1>
     <br>
     <%
     int noteId=Integer.parseInt(request.getParameter("note_id").trim());
     Session s=FactoryProvider.getFactory().openSession();
		
		Note note=(Note)s.get(Note.class,noteId);
     %>
     
     <!-- Edit form -->
     <form action="UpdateServlet" method="post">
     
     <input value = "<%= note.getId() %>" name="noteId" type="hidden"/>
     
     
			<div class="form-group">
				<label for="exampleInputEmail1">Note title</label> 
				<input name="title"
				required type="test" 
				class="form-control" 
				 id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter here" 
					value="<%=note.getTitle() %>">
					
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Note Content</label> 
				<textarea name="content"
				 required id="content" placeholder="Enter your content here"
				class="form-control"
				style=height:200px;> <%=note.getContent()%> 
				</textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Save your note</button>
			</div>
			
		</form>
     
     
     
     
     
    </div>


</body>
</html>