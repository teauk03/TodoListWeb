package com.kto03.springboot.TodoListWeb.todo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class TodoControlloer {
    
    @RequestMapping("list-todos")
    public String listAllTodoList() {
        return "listTodos";
    }
}
