//
//  UsersListView.swift
//  Coordinator
//
//  Created by  Arun Singh Rathore
//
import SwiftUI
import Combine

struct UsersListView: View {
    @StateObject var viewModel: UsersListViewModel
    let didClickUser = PassthroughSubject<User, Never>()
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                Button(action: {
                    didClickUser.send(user)
                }) {
                    Text(user.name)
                }
            }
            .navigationBarTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView(viewModel: UsersListViewModel())
    }
}
