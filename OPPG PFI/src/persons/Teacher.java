package persons;

public class Teacher extends Person {
    private int numCourses = 0;
    private String[] courses;
    private static final int MAX_COURSESE = 5;

    Teacher (String name, String address) {
        super(name, address);
        numCourses = 0;
        courses  = new String[MAX_COURSESE];
    }

    public String toString() {
        return "name: " + name + "address: " + address;
    }

    //This method utlizes that it will not run the rest of the code after 'return false'
    public boolean addCourse2(String course) {
        for (int i = 0; i < numCourses; i++) {
            if (courses[i].equals(course)) return false;
        }
        courses[numCourses] = course;
        numCourses ++;
        return true;
    }

    //This method does the same, but with extra efforts like two for loops instead of one.
    public boolean addCourse(String course) {
        boolean a = true;
        for (int i = 0; i < courses.length; i++) {
            if (course.equals(courses[i])) {
                a = false;
            }
        }
        if (a) {
            for (int j = 0; j < courses.length; j++) {
                if (courses[j] == null) {
                    courses[j] = course;
                    numCourses ++;
                }
            }
        }
        return a;
    }
    public boolean removeCourse2(String course) {
        boolean found = false;
        int courseIndex = -1;

        for(int i = 0; i < numCourses; i++) {
            if(courses[i].equals(course)) {
                courseIndex = i;
                found = true;
                break;
            }
        }
        if(found) {
            for(int i = courseIndex; i < numCourses; i++) {
                courses[i] = courses[i+1];
            }
            numCourses --;
            return true;
        } else {
            return false;
        }
    }

    public boolean removeCourse(String course) {
        boolean b = false;
        for(int i = 0; i < courses.length; i++) {
            if(course.equals(courses[i])) {
                courses[i] = null;
                b = true;
                numCourses --;
            }
        }
        return b;
    }

}

