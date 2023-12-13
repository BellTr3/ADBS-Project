<!DOCTYPE html>
<html>
<head>
    <title>Update course</title>
</head>
<body>
    <h1>Update course</h1>
    <form action="/courses/{{course['id']}}/update" method="post">
        <label for="course_name">course_name:</label>
        <input type="text" id="course_name" name="course_name" value="{{course['course_name']}}" required><br>

        <label for="Student_name">Student_name:</label>
        <input type="text" id="Student_name" name="Student_name" value="{{course['Student_name']}}" required><br>

        <input type="submit" value="Update course">
    </form>
    <p><a href="/courses/{{course['id']}}">Back to course Details</a></p>
</body>
</html>