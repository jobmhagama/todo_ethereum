// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Todo {
  address public owner = msg.sender;

     uint[] public todos;

  struct todo {
    uint id;
    string name;
    string description; 
    string status;
    uint   day;
  }

  mapping (uint => todo) public Todos;

  function  todoNumber()view  public  returns(uint[]  memory) {

    return todos;
    
  }

 function newTodo(uint id,string memory name,string memory desc,string memory status,uint ndays) public{
   
   Todos[id].id =id;
   Todos[id].name =name;
   Todos[id].description=desc;
   Todos[id].status=status;
   Todos[id].day=ndays;
   todos.push(id);
 }
   
   function  CountTod()public view returns(uint num) {
     uint number = todos.length;
     return number;
   }

  function getTodo(uint  id)public view  returns(uint _id,string memory name,string memory desc,string memory status,uint _days){

   return (Todos[id].id,Todos[id].name,Todos[id].description,Todos[id].status,Todos[id].day);




  }
   











 
}
