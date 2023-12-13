<!DOCTYPE html>
<html>
<head>
    <title>{{course['course_name']}}</title>
</head>
<body style="background-color:yellow; font-family:verdana;">
    <h1>{{course['course_name']}}</h1>
    <p>Student_name: {{course['Student_name']}}</p>
    
    <h2>To Do Changes</h2>
    <ul>
        % for exp in experience:
            <li>{{exp}}</li>
        % end
    </ul>

    <p><a href="/courses/{{course['id']}}/add_exp">Add exp</a></p>
    <p><a href="/courses/{{course['id']}}/update">Update course</a></p>
    <p><a href="/courses/{{course['id']}}/delete">Delete course</a></p>
    <p><a href="/courses">Back to courses</a></p>
</body>
</html>