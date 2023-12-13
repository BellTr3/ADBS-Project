courses = []
course_id = 1
def initialize_database():
    global courses, course_id
    courses = []
    course_id = 1
def get_all_courses():
    return courses
def add_course(course_name, Student_name):
    global course_id
    course = {
        'id': course_id,
        'course_name': course_name,
        'Student_name': Student_name,
        'experience': []
    }
    course_id += 1
    courses.append(course)
def get_course_details(course_id):
    return next((course for course in courses if str(course['id']) == course_id), None)
def get_experience_for_course(course_id):
    course = get_course_details(course_id)
    return course['experience'] if course else []
def add_exp(course_id, exp_value):
    course = get_course_details(course_id)
    if course:
        course['experience'].append(int(exp_value))
def update_course(course_id, course_name, Student_name):
    course = get_course_details(course_id)
    if course:
        course['course_name'] = course_name
        course['Student_name'] = Student_name
def delete_course(course_id):
    global courses
    courses = [course for course in courses if str(course['id']) != course_id]