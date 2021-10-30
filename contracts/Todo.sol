// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Todo {
  address public owner = msg.sender;


     uint todo;
  
  struct task {
    uint id;
    string name;
    string description; 
    string status;
    uint   day;
  }

  mapping (uint => task) public Todos;

   uint [] public todos ;

  function  todoNumber()view  public  returns(uint){

       return todo;

  }

  

 function newTodo(string memory name,string memory desc,string memory status,uint ndays) public{

   todo++;
   Todos[todo].name =name;
   Todos[todo].description=desc;
   Todos[todo].status=status;
   Todos[todo].day=ndays;
   todos.push(todo);
 }
   
   function  CountTod()public view returns(uint num) {
    
     return todo;
   }

  function getTodo(uint  id)public view  returns(uint _id,string memory name,string memory desc,string memory status,uint _days){

   return (Todos[id].id,Todos[id].name,Todos[id].description,Todos[id].status,Todos[id].day);




  }
   











 
}
