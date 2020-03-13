package persons;

public class Student extends Person {
    final static int MAX_COURSES = 4;
    private int numCourses = 0;
    protected String [] courses = {"PFI", "ID", "P2", "MMA"};
    private int [] grades = new int[MAX_COURSES];

    public Student(String name, String address) {
        super(name, address);
    }

    public String toString() {
        return "name " + name + "address " + address;
    }

    public void addCourseGrade(String course, int grade) {
        for(int i = 0; i < courses.length; i++) {
            if(courses[i] == course) {
                grades[i] = grade;
            }
        }
    }

    public void printGrades () {
        for(int i = 0; i < grades.length; i++) System.out.println(courses[i]+": "+grades[i]);
    }

    public double getAverageGrade() {
        int a = 0;
        for(int i = 0; i < grades.length; i++){
            a = a +grades[i];
        }
        return a/grades.length;
    }
}
