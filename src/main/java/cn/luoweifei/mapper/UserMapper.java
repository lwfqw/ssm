package cn.luoweifei.mapper;

import cn.luoweifei.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    User selectByTel(String tel);//电话查用户
    List<User> sameCity(String city);//查同城市
    List<User> all();//所有用户
    boolean insert(User user);//插入
    boolean delete(String tel);//删除
    boolean modify(User user);//修改
}
