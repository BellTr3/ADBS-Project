<!DOCTYPE html>
<html>
<head>
    <title>courses</title>
</head>
<body style="background-color:powderblue; font-family:verdana;">
    <h1>courses</h1>
    <ul>
        % for course in courses:
            <li><a href="/courses/{{course['id']}}">{{course['course_name']}}</a> </li>
        % end
    </ul>
    <p><a href="/courses/add">Add a course</a></p>
</body>
</html>