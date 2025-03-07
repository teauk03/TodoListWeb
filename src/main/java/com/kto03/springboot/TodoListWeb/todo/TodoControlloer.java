package com.kto03.springboot.TodoListWeb.todo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;



@Controller
@SessionAttributes("name")
public class TodoControlloer {
    private TodoService todoService;

    public TodoControlloer(TodoService todoService) {
        super();
        this.todoService = todoService;
    }
    
    @RequestMapping("list-todos")
    public String listAllTodoList(ModelMap model) {
        List<Todo> todos = todoService.findByUsername("cho");
        model.addAttribute("todos",todos);
        return "listTodos";
    }

    @RequestMapping(value="add-todo", method = RequestMethod.GET)
    public String showNewTodoPage() {
        return "todo";
    }

    @RequestMapping(value="add-todo", method = RequestMethod.POST)
    public String addNewTodo() {
        return "redirect:list-todos";
    }
}
