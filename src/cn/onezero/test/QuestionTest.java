package cn.onezero.test;

import cn.onezero.Dao.PageDao;
import cn.onezero.domain.*;
import cn.onezero.utils.JDBCUtils;
import cn.onezero.utils.Md5Util;
import com.alibaba.druid.sql.visitor.functions.Char;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.*;

public class QuestionTest {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    @Test
    public void demo1() throws JsonProcessingException {
        String sql="select * from question_choice where user_id is null";
        List<QuestionChoice> question_choice = template.query(sql, new BeanPropertyRowMapper<QuestionChoice>(QuestionChoice.class));
        for(QuestionChoice q:question_choice){
            System.out.println(q);
        }
        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(question_choice);
        System.out.println(s);
    }

    @Test
    public void demo2(){
        String sql="select count(*) from user where email=?";
        Integer ljsf = template.queryForObject(sql, Integer.class, "ljsf");
        System.out.println(ljsf);
        sql="select count(*) from question_choice where course_id=?";
        Integer integer = template.queryForObject(sql, Integer.class, 1);

    }
    @Test
    public void demo3(){
        String sql="select count(*) from question_zhuguan where course_id=? and type_id=?";
        Integer integer = template.queryForObject(sql, Integer.class, 1,2);
        System.out.println(integer);
                sql="select * from question_zhuguan where course_id=? and type_id=? limit ?,?";
        List<QuestionZG> query = template.query(sql, new BeanPropertyRowMapper<QuestionZG>(QuestionZG.class), 1, 2,0, 10);
        System.out.println(query);
    }
    @Test
    public void demo4(){
        String sql="select Question from question_choice where  q_id=10";
        String s = template.queryForObject(sql, String.class);
        System.out.println(s);
    }

    @Test
    public void demo5(){
        List<TotalAddedQuestion> c=new ArrayList<TotalAddedQuestion>();
        String sql="select count(*) from question_choice where user_id=? ";
        Integer integer = template.queryForObject(sql, Integer.class, 4);
        if(integer>0){
            TotalAddedQuestion e=new TotalAddedQuestion();
            e.setType_id(1);e.setType_name("选择题");e.setCount(integer);
            c.add(e);
        }
        sql="select c.type_id,count(*) as count,c.type_name from question_zhuguan q,type c " +
                "where q.type_id=c.type_id and user_id=? group by type_id";
        List<TotalAddedQuestion> query = template.query(sql, new BeanPropertyRowMapper<TotalAddedQuestion>(TotalAddedQuestion.class),4);
        c.addAll(query);
        for(TotalAddedQuestion t:c){
            System.out.println(t);
        }
    }

    @Test
    public void demo6(){
        String sql="select * from question_choice where q_id>=" +
                "((select max(q_id) from question_choice)-(select min(q_id) from question_choice))*rand() " +
                "+(select min(q_id) from question_choice) and visit=1 limit ?;";
        List<QuestionChoice> query = template.query(sql, new BeanPropertyRowMapper<QuestionChoice>(QuestionChoice.class), 50);
        for(QuestionChoice q:query){
            System.out.println(q);
        }
    }

    @Test
    public void demo7(){
        String sql="select q.*,w.* from wrong w inner join question_choice q on w.q_id=q.q_id where w.user_id=2";
        List<WrongQuestion> query = template.query(sql, new BeanPropertyRowMapper<WrongQuestion>(WrongQuestion.class));
        for(WrongQuestion w:query){
            System.out.println(w);
        }
    }

    @Test
    public void demo8(){
        String sql3="update wrong set count=count+1,wa=? where q_id=? and user_id=?";
        int update = template.update(sql3,"A" , 208,4);
    }

    @Test
    //时间互转
    public void demo9(){
//        String sql="insert into dd values(?)";
//        Date d=new Date();
//        int update = template.update(sql, "1999-06-30");
//        sql="insert into tt values(?)";
//        update = template.update(sql, d);
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//        String s = sdf.format(d);
//        System.out.println(s);
        Date parse = sdf.parse("1999-07-30", new ParsePosition(0));
        System.out.println(parse);
    }
    @Test
    //随机数
    public void demo10(){
        String str="0123456789";
        Random random = new Random();
        String res="";
        for(int i=0;i<6;i++){
            char s=str.charAt(random.nextInt(10));
            res+=s;
        }
        System.out.println(res);
        try {
            String s = Md5Util.encodeByMd5("111111");
            System.out.println(s);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void demo11() throws JsonProcessingException {
        QuestionZG qz=new QuestionZG();
        QuestionChoice qc=new QuestionChoice();
        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(qz);
        s+=mapper.writeValueAsString(qc);
        System.out.println(s);
    }

    @Test
    public void demo12() throws ParseException {
        String sql="select * from user where user_id=4";
        User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class));
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String s = sdf.format(user.getBirthday());
        System.out.println(s);
//        System.out.println(user);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//注意月份是MM
        Date date = simpleDateFormat.parse("2019-09-02");
        System.out.println(date);   //Mon Sep 02 00:00:00 CST 2019
        System.out.println(simpleDateFormat.format(date));  //2019-09-02
    }
}
