package persons;

public class Main {

    public static void main(String[] args) {
        Student atle = new Student("atle", "moselgade 35 1th.");
        Teacher hassan = new Teacher("hassan", "nørrebro bodega");

        atle.addCourseGrade("PFI", 10);
        atle.addCourseGrade("ID", 7);
        atle.printGrades();
    }
}
