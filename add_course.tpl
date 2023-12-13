<!DOCTYPE html>
<html>
<head>
    <title>Add course</title>
</head>
<body style="background-color:red; font-family:verdana;">
    <h1>Add course</h1>
    <form action="/courses/add" method="post">
        <label for="course_name">course_name:</label>
        <input  type="text" id="course_name" name="course_name" required><br>
        <br>
        <label for="Student_name">Student_name:</label>
        <input  type="text" id="Student_name" name="Student_name" required><br>
        <br>
        <input type="submit" value="Add course">
    </form>
    <p><a href="/courses">Back to courses</a></p>
</body>
</html>





