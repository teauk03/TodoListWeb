package com.kto03.springboot.TodoListWeb.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    private static int todosCount = 0;
    // DB 넣기전 임시 데이터
    static {
        todos.add(new Todo(++todosCount, "cho", "Spring", LocalDate.now().plusDays(1), false));
        todos.add(new Todo(++todosCount, "kti", "C#", LocalDate.now().plusDays(1), false));
        todos.add(new Todo(++todosCount, "chi", "C++", LocalDate.now().plusDays(1), false));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }

    public void addTodo(String username, String description, LocalDate targetDate, boolean done) {
        Todo todo = new Todo(++todosCount, username, description, targetDate, done);
        todos.add(todo);
    }
}
    
