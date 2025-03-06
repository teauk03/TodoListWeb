package com.kto03.springboot.TodoListWeb.todo;

import java.time.LocalDate;
import java.util.List;

public class TodoService {
    private static List<Todo> todos;
    // DB 넣기전 임시 데이터
    static {
        todos.add(new Todo(1, "cho", "Spring", LocalDate.now().plusDays(1), false));
        todos.add(new Todo(2, "kti", "C#", LocalDate.now().plusDays(1), false));
        todos.add(new Todo(3, "chi", "C++", LocalDate.now().plusDays(1), false));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }
}
    
