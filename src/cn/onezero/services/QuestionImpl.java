package cn.onezero.services;

import cn.onezero.domain.*;
import cn.onezero.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class QuestionImpl {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    /**
     * 添加选择题
     * 出现了一个问题：template是如何与javabean对象形成映关系的？通过反射实现的映射，是否是数据库中栏位名与属性对应，如同BeanUtils
     * @param qs
     * @return
     */
    public boolean addChoice(QuestionChoice qs){
        String sql="insert into question_choice(Question,OptionA,OptionB,OptionC,OptionD,"+
        "Answer,course_id,img_pathA,img_pathQ,user_id,visit) values(?,?,?,?,?,?,?,?,?,?,?)";
        int i = template.update(sql, qs.getQuestion(), qs.getOptionA(), qs.getOptionB(), qs.getOptionC(),
                qs.getOptionD(), qs.getAnswer(), qs.getCourse_id(), qs.getImg_PathA(), qs.getImg_PathQ(), qs.getUser_id(), qs.getVisit());
        if(i==1){
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * 添加主观题
     * @param qz
     * @return
     */
    public boolean addZG(QuestionZG qz){
        String sql="insert into question_zhuguan(Question,Answer,course_id,type_id,img_pathA,img_pathQ,user_id,visit) "+
                "values(?,?,?,?,?,?,?,?)";
        int i = template.update(sql, qz.getQuestion(), qz.getAnswer(), qz.getCourse_id(), qz.getType_id(), qz.getImg_pathA(),
                qz.getImg_pathQ(), qz.getUser_id(), qz.getVisit());
        if(i==1){
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * 获取每个题型所添加的个数
     * @param user_id
     * @return
     */
    public List<TotalAddedQuestion> getQuestionCount(int user_id){
        List<TotalAddedQuestion> c=new ArrayList<TotalAddedQuestion>();
        String sql="select count(*) from question_choice where user_id=? ";
        Integer integer = template.queryForObject(sql, Integer.class, user_id);
        if(integer>0){
            TotalAddedQuestion e=new TotalAddedQuestion();
            e.setType_id(1);e.setType_name("选择题");e.setCount(integer);
            c.add(e);
        }
        sql="select c.type_id,count(*) as count,c.type_name from question_zhuguan q,type c " +
                "where q.type_id=c.type_id and user_id=? group by type_id";
        List<TotalAddedQuestion> query = template.query(sql, new BeanPropertyRowMapper<TotalAddedQuestion>(TotalAddedQuestion.class),user_id);
        c.addAll(query);
        return c;
    }

    /**
     * 更新数据（问题，答案，选项，权限）
     * @param qs
     * @return
     */
    public boolean update(QuestionChoice qs){
        String sql="update question_choice set question=?,optionA=?,optionB=?,optionC=?,optionD=?,answer=?,visit=? where" +
                " q_id=?";
        int i = template.update(sql, qs.getQuestion(), qs.getOptionA(), qs.getOptionB(), qs.getOptionC(), qs.getOptionD(), qs.getAnswer()
                , qs.getVisit(), qs.getQ_id());
        if(i==1){
            return true;
        }
        else{
            return false;
        }
    }

    public boolean update(QuestionZG qz){
        String sql="update question_zhuguan set question=?,answer=?,visit=? where" +
                " q_id=?";
        int i = template.update(sql, qz.getQuestion(), qz.getAnswer(), qz.getVisit(), qz.getQ_id());
        if(i==1){
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * 删除题目
     * @param q_id
     * @param type_id
     * @return
     */
    public boolean delete(int q_id,int type_id){
        String sql;
        int i;
        if(type_id==1){
            sql="delete from question_choice where q_id=?";
            i = template.update(sql, q_id);
        }
        else{
            sql="delete from question_zhuguan where q_id=?";
            i=template.update(sql,q_id);
        }
        if(i>0){
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * 随机抽取num道题目
     * @param num
     * @return
     */
    public List<QuestionChoice> generate(int num){
        String sql="select * from question_choice where q_id>=" +
                "((select max(q_id) from question_choice)-(select min(q_id) from question_choice))*rand() " +
                "+(select min(q_id) from question_choice) limit ?;";
        List<QuestionChoice> query = template.query(sql, new BeanPropertyRowMapper<QuestionChoice>(QuestionChoice.class), num);
        return query;
    }

    /**
     * 添加用户错题
     * 若存在则以最新的错误答案覆盖，并且count+1
     * @param wqs
     * @param user_id
     */
    public void addWrongQuestion(List<WrongQuestion> wqs,int user_id){
        String sql1="insert into wrong(q_id,user_id,wa) values(?,?,?)";
        String sql2="select count(*) from wrong where q_id=? and user_id=?";
        String sql3="update wrong set count=count+1,wa=? where q_id=? and user_id=?";
        Iterator<WrongQuestion> it=wqs.iterator();
        while(it.hasNext()){
            WrongQuestion wq=it.next();
            try{
                Integer i = template.queryForObject(sql2, Integer.class, wq.getQ_id(), user_id);
                if(i==0){
                    int update = template.update(sql1, wq.getQ_id(), user_id, wq.getWa());
                }
                else{
                    int update = template.update(sql3, wq.getWa(),wq.getQ_id() ,user_id);
                }
            }catch (Exception e){
                System.out.println(e);
            }

        }
    }

    /**
     * 收藏
     * @param cq
     * @param user_id
     */
    public void addCollect(CollectQuestion cq,int user_id){
        String sql="insert into collect values(?,?,?)";
        String sql2="select count(*) from collect where q_id=? and user_id=? and type_id=?";
        try{
            Integer i = template.queryForObject(sql2, Integer.class, cq.getQ_id(), user_id, cq.getType_id());
            if(i==0){
                int update = template.update(sql, cq.getQ_id(), user_id, cq.getType_id());
            }
        }catch (Exception e){
            System.out.println(e);
        }

    }

    public void deleteCollect(CollectQuestion cq,int user_id){
        String sql="delete from collect where q_id=? and user_id=? and type_id=?";
        int update = template.update(sql, cq.getQ_id(), user_id, cq.getType_id());
    }

    public void removeWrong(int user_id,int q_id){
        String sql="delete from wrong where q_id=? and user_id=?";
        template.update(sql, q_id, user_id);
    }
}
