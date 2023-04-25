#!/usr/bin/python3
"""
Script that, using this REST API, for a given employee ID, returns information
about his/her TODO list progress
"""
import json
import requests
from sys import argv


if __name__ == "__main__":
    user_dict = {}
    users_list = []
    all_users = {}
    users_url = "https://jsonplaceholder.typicode.com/users"
    tasks_url = "https://jsonplaceholder.typicode.com/todos"
    filename = "todo_all_employees.json"

    users = requests.get(users_url)
    tasks = requests.get(tasks_url)

    with open(filename, "w", encoding='utf-8') as f:
        for user in users.json():
            user_name = user.get("username")
            user_id = user.get("id")
            for task in tasks.json():
                if (task.get("userId") == user_id):
                    title = task.get("title")
                    status = task.get("completed")
                    user_dict = {"username": user_name, "task": title,
                                 "completed": status}
                    users_list.append(user_dict)
                all_users[user_id] = users_list

        f.write(json.dumps(all_users))
