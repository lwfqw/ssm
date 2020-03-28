package cn.luoweifei.service;

import cn.luoweifei.entity.User;
import cn.luoweifei.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServer {
    @Autowired
    UserMapper userMapper;
    public User selectByTel(String tel) {
        return userMapper.selectByTel(tel);
    }

    public List<User> selectSameCity(String city) {
        return userMapper.sameCity(city);
    }

    public List<User> all() {
        return userMapper.all();
    }

    public boolean delete(String tel) {
        return userMapper.delete(tel);
    }

    public boolean insert(User user) {
        return userMapper.insert(user);
    }

    public boolean update(User user) {
        return userMapper.modify(user);
    }
}
