/*
--------------------------------
Developed by                    |
user: Dennis Masaya             |
id: 201503413                   |
e-mail: dennismasaya@gmail.com  |
--------------------------------
This example demonstrates how to build a circular linked list, we use 
2 classes: 1) Node_single and 2)CircularLinkedList, our node class only 
has the attributes and a constructor to add value to those attributes, 
and our CircularLinkeList class has 2 methods (more can be easily 
implemented, such as: delete, find, etc.) 1)add and 2)print_list which 
are self-explanatory, on our print method we print the first element twice 
to demonstrate the usage of a circular linked list, finally on our setup 
method we create, add elements and finally print our LinkedList.
*/
void setup(){
  CircularLinkedList l3 = new CircularLinkedList(); //create a new CircularLinkedList
  l3.add(new Node_single(0)); //add element 0
  l3.add(new Node_single(1)); //add element 1
  l3.add(new Node_single(2)); //add element 2
  l3.add(new Node_single(3)); //add element 3
  l3.add(new Node_single(4)); //add element 4
  l3.add(new Node_single(5)); //add element 5
  l3.add(new Node_single(6)); //add element 6
  l3.print_list(); //print the list
}

/*=========== CIRCULAR LINKED LIST ===========*/
/*--NODE--*/
class Node_single{
 Node_single next; //pointer to next node
 int id; //atribute id used to store an int value

 Node_single(int id){ //constructor to our Node_single class
   this.id = id; //assign the value sent as a parameter to our class atribute
 }
}
/*--END NODE--*/
/*--LIST--*/
class CircularLinkedList{
  Node_single head; //usual head node to keep track of where our list starts.
  //ADD
  void add(Node_single n){
    if(head==null){
      head = n;
      head.next = head;
    }else{
      Node_single temp = head;
      while(temp.next!=head){
        temp = temp.next;
      }
      temp.next = n;
      n.next = head;
    }
  }
  //PRINT
  void print_list(){
    Node_single temp = head;
    while(temp.next!=head){
      print(temp.id+"->");
      temp = temp.next;
    }
    print(temp.id);
    print("->");
    temp = temp.next;
    print(temp.id);
    println();
  }
}
/*--END LIST--*/
/*=========== END CIRCULAR LINKED LIST ===========*/
