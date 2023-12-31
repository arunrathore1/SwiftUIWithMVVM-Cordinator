//
//  UsersListViewModel.swift
//  Coordinator
//
//  Created by  Arun Singh Rathore
//
import Combine

final class UsersListViewModel: ObservableObject {
    @Published var users: [User] = []
    
    func fetchUsers() {
        self.users = [
            User(id: 1, name: "User 1"),
            User(id: 2, name: "User 2"),
            User(id: 3, name: "User 3")
        ]
    }
}

