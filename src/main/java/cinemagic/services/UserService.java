package cinemagic.services;

import cinemagic.model.User;

import java.util.List;

public interface UserService {
    List<User> findAll();
    List<User> findByUserName(String userName);
    void save(User user);
    void delete(User user);

}
