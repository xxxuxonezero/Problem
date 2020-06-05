package cn.onezero.Dao;

import cn.onezero.domain.User;
import cn.onezero.utils.JDBCUtils;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.Date;

public class UserDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    public void updateLastTime(User u){
        String sql="update user set lasttime=? where email=? and pwd=?";
        int i = template.update(sql, new Date(), u.getEmail(), u.getPwd());
    }
}
