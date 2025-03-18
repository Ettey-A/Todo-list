document.addEventListener("DOMContentLoaded", function () {
    loadTasks();

    document.getElementById("createReminder").addEventListener("click", function () {
        let taskText = prompt("Enter task:");
        let categoryText = prompt("Enter category (e.g., Work, Grocery, Personal):");

        if (taskText && categoryText) {
            let tasks = JSON.parse(localStorage.getItem("tasks")) || [];
            tasks.push({ text: taskText, category: categoryText, completed: false });
            localStorage.setItem("tasks", JSON.stringify(tasks));
            loadTasks();
        }
    });
});

function loadTasks() {
    let tasks = JSON.parse(localStorage.getItem("tasks")) || [];
    let taskList = document.getElementById("taskList");
    let completedTasks = document.getElementById("completedTasks");

    taskList.innerHTML = "";
    completedTasks.innerHTML = "";

    tasks.forEach((task, index) => {
        let taskDiv = document.createElement("div");
        taskDiv.classList.add("task-item");

        taskDiv.innerHTML = `
            <span>${task.text} - <strong>${task.category}</strong></span>
            <div>
                ${task.completed ? "" : `<button class="complete-btn" onclick="completeTask(${index})">✓</button>`}
                <button class="delete-btn" onclick="deleteTask(${index})">✗</button>
            </div>
        `;

        if (task.completed) {
            taskDiv.classList.add("completed");
            completedTasks.appendChild(taskDiv);
        } else {
            taskList.appendChild(taskDiv);
        }
    });
}

function completeTask(index) {
    let tasks = JSON.parse(localStorage.getItem("tasks")) || [];
    tasks[index].completed = true;
    localStorage.setItem("tasks", JSON.stringify(tasks));
    loadTasks();
}

function deleteTask(index) {
    let tasks = JSON.parse(localStorage.getItem("tasks")) || [];
    tasks.splice(index, 1);
    localStorage.setItem("tasks", JSON.stringify(tasks));
    loadTasks();
}
