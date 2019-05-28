package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.User;

/**
 * @author Xueht
 */
public interface UserDao {
    User getUser(String username);

    void updateInfo(User user);

    void updatePassword(User user);

    User login(String username);
}
