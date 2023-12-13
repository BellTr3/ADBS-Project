<!DOCTYPE html>
<html>
<head>
    <title>Add Experience</title>
</head>
<body>
    <h1>Add Experience</h1>
    <form action="/courses/{{course_id}}/add_exp" method="post">
        <label for="exp">Experience:</label>
        <input type="number" id="exp" name="exp" min="1" max="3" required><br>

        <input type="submit" value="Add exp">
    </form>
    <p><a href="/courses/{{course_id}}">Back to course Details</a></p>
</body>
</html>