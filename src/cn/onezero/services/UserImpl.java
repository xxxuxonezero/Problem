package cn.onezero.services;

import cn.onezero.Dao.UserDao;
import cn.onezero.domain.User;
import cn.onezero.utils.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserImpl {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    private UserDao ud=new UserDao();

    /**
     * 添加用户
     * @param u
     * @return
     */
    public boolean addUser(User u){
        String sql="insert into user(email,pwd,phone_num,sex,username) values(?,?,?,?,?)";
        int i = template.update(sql, u.getEmail(), u.getPwd(), u.getPhone_num(), u.getSex(), u.getUsername());
        if(i==1){
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * 判断用户邮箱是否已注册
     * @param u
     * @return
     */
    public boolean isExistsEmail(User u){
        String sql="select count(*) from user where email=?";
        Integer exists = template.queryForObject(sql, Integer.class, u.getEmail());
        if(exists==1){
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * 判断该用户是否已存在，若存在返回其具体信息
     * @param email
     * @param pwd
     * @return
     */
    public User register(String email,String pwd){
        String sql="select * from user where email=? and pwd=?";
        try{
            User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), email, pwd);
            if(user!=null){
                ud.updateLastTime(user);
            }
            return user;
        }catch(DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }

    public boolean updateInfo1(User u){
        String sql="update user set username=?,realname=?,sex=?,birthday=?,job=?,introduction=? where user_id=?";
        int i = template.update(sql, u.getUsername(), u.getRealname(), u.getSex(), u.getBirthday(), u.getJob(), u.getIntroduction(), u.getUser_id());
       if(i>0){

           return true;
       }
       else{
           return false;
       }
    }

    public boolean updateInfo2(User u){
        String sql="update user set avatar=? where user_id=?";
        int i = template.update(sql, u.getAvatar(), u.getUser_id());
        if(i>0)
            return true;
        else
            return false;
    }
}
