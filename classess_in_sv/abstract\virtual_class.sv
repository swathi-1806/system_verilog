/*
abstract class is a class that
- cannot create objects
- only used as a base class
- we have use "virtual" keyword infront of class
- abstract class may have -properties
                          - methods
                          - constructor
                          - pure virtual methods
* pure virtual method has only declaration , no implementation(we tell the what the function name is , but we don't write function bide/code in abstract class)
  - so every child class must write it's own version of this(pure virtual methods) methods.
*/

virtual class animal;
  int animal_age;

  function new(int a);
    animal_age = a;
  endfunction

  function void print();
    $display("age=%0d",animal_age);
  endfunction

  pure virtual function void sound();  //the function nam eis sound(), now we have to implement sound() function in every child class which is extende from abstract class
endclass

    class dog extends animal;
      function new(int a);
        super.new(a);
      endfunction

      function void sound();
        $display("dog says :\"bow bow\"");
      endfunction
    endclass

    class cat extends animal;
      function new(int a);
        super.new(a);
      endfunction

      function void sound();
        $display("dog says :\"meow meow\"");
      endfunction
    endclass


    module tb;
      animal a_h;
      initial begin
        //dog object
        
       // a_h = dog::new(5);
        a_h.print();
        a_h.sound();

        //cat object
        a_h = cat::new(3);
        a_h.print();
        a_h.sound();
      end
    endmodule

    /*
# age=5
# dog says :"bow bow"
# age=3
# dog says :"meow meow"
    */

    
    
