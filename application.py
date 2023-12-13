from bottle import route, post, run, template, redirect, request
import database

# Initialize the database
database.initialize_database()

@route("/")
def get_index():
    redirect("/courses")

@route("/courses")
def get_courses():
    courses = database.get_all_courses()
    return template("courses.tpl", courses=courses)

@route("/courses/add")
def get_add_course():
    return template("add_course.tpl")

@post("/courses/add")
def post_add_course():
    course_name = request.forms.get("course_name")
    Student_name = request.forms.get("Student_name")
    database.add_course(course_name, Student_name)
    redirect("/courses")

@route("/courses/<course_id>")
def get_course_details(course_id):
    course = database.get_course_details(course_id)
    experience = database.get_experience_for_course(course_id)
    return template("course_details.tpl", course=course, experience=experience)

@route("/courses/<course_id>/add_exp")
def get_add_exp(course_id):
    return template("add_exp.tpl", course_id=course_id)

@post("/courses/<course_id>/add_exp")
def post_add_exp(course_id):
    exp_value = request.forms.get("exp")
    database.add_exp(course_id, exp_value)
    redirect(f"/courses/{course_id}")
    
@route("/courses/<course_id>/update")
def get_update_course(course_id):
    course = database.get_course_details(course_id)
    return template("update_course.tpl", course=course)

@post("/courses/<course_id>/update")
def post_update_course(course_id):
    course_name = request.forms.get("course_name")
    Student_name = request.forms.get("Student_name")
    database.update_course(course_id, course_name, Student_name)
    redirect("/courses")

@route("/courses/<course_id>/delete")
def get_delete_course(course_id):
    database.delete_course(course_id)
    redirect("/courses")

run(host='localhost', port=8080)