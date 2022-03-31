// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Todo{

    struct TodoItem {
        string title;
        string description;
        bool completed;
    }

    TodoItem[] public todos;
    function createTodo(string memory _title, string memory _description) public {
        
        todos.push(TodoItem({ title: _title, description: _description, completed: false }));
        
        
    }

    function updateTitle(uint _index, string memory _title) public {
        todos[_index].title = _title;
    }

    function updateDescription(uint _index, string memory _description) public {
        todos[_index].description = _description;
    }

    function toggleCompleted(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }

    function getTodos() public view returns (TodoItem[] memory){
        return todos;
        
    }
    
}
