module tb;

  typedef struct {
    string name;
    int age;
    int marks;
  } student_t;

  student_t s1;

  initial begin
    s1.name  = "Swathi";
    s1.age   = 20;
    s1.marks = 95;

    $display("Name  = %s", s1.name);
    $display("Age   = %0d", s1.age);
    $display("Marks = %0d", s1.marks);
  end

endmodule
/*
# Name  = Swathi
# Age   = 20
# Marks = 95
*/
