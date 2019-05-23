package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.User;

public interface UserDao {
    User getUser(User user);

    void updateInfo(User user);

    void updatePassword(User user);
}
