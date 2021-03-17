package ead3.midterm.auth.service;

import ead3.midterm.auth.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);


}
