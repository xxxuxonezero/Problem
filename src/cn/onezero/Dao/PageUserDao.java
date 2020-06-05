package cn.onezero.Dao;

import cn.onezero.domain.CollectQuestion;
import cn.onezero.domain.QuestionChoice;
import cn.onezero.domain.QuestionZG;
import cn.onezero.domain.WrongQuestion;
import cn.onezero.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;

public class PageUserDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    /**
     * 获取用户添加的总选择题数
     * @param user_id
     * @return
     */
    public int getTotalCount(int user_id){
        String sql="select count(*) from question_choice where user_id=?";
        Integer i = template.queryForObject(sql, Integer.class, user_id);
        return i;
    }

    /**
     * 获取用户添加的所有选择题
     * @param user_id
     * @return
     */
    public List<QuestionChoice> getQueryPage(int user_id,int begin,int PageSize){
        String sql="select * from question_choice where user_id=? order by q_id desc limit ?,? ";
        List<QuestionChoice> query = template.query(sql, new BeanPropertyRowMapper<QuestionChoice>(QuestionChoice.class), user_id,begin,PageSize);
        return query;
    }

    public int getTotalCount(int user_id,int type_id){
        String sql="select count(*) from question_zhuguan where user_id=? and type_id=?";
        Integer i = template.queryForObject(sql, Integer.class, user_id,type_id);
        return i;
    }

    public List<QuestionZG> getQueryPage(int user_id,int type_id,int begin,int PageSize){
        String sql="select * from question_zhuguan where user_id=? and type_id=? order by q_id desc limit ?,? ";
        List<QuestionZG> query = template.query(sql, new BeanPropertyRowMapper<QuestionZG>(QuestionZG.class), user_id,type_id,begin,PageSize);
        return query;
    }

    public int getTotalWrongCount(int user_id){
        String sql="select count(*) from wrong where user_id=?";
        Integer i = template.queryForObject(sql, Integer.class, user_id);
        return i;
    }

    public List<WrongQuestion> getQueryWrongPage(int user_id, int begin, int PageSize){
        String sql="select w.*,q.* from wrong w inner join question_choice q on w.q_id=q.q_id where w.user_id=? limit ?,?";
        List<WrongQuestion> query = template.query(sql, new BeanPropertyRowMapper<WrongQuestion>(WrongQuestion.class), user_id,begin,PageSize);
        return query;
    }
    public  int getTotalCollectCount(int user_id){
        String sql="select count(*) from collect where user_id=?";
        Integer i = template.queryForObject(sql, Integer.class, user_id);
        return i;
    }

    public List<CollectQuestion> getQueryCollectPage(int user_id, int begin, int PageSize){
        String sql="select * from collect where user_id=? limit ?,?";
        List<CollectQuestion> query = template.query(sql, new BeanPropertyRowMapper<CollectQuestion>(CollectQuestion.class), user_id,begin,PageSize);
        return query;
    }

//    在这里暂时将QuestionChoice当作QuestionZG的载体
    public List<QuestionChoice> getJsonString(List<CollectQuestion> cqs){
        String sql;
        List<QuestionChoice> qcs=new ArrayList<>();
        for(int i=0;i<cqs.size();i++){
            if(cqs.get(i).getType_id()==1){
                sql="select * from question_choice where q_id=?";
            }
            else{
                sql="select * from question_zhuguan where q_id=?";
            }
            try{
                QuestionChoice qc = template.queryForObject(sql, new BeanPropertyRowMapper<QuestionChoice>(QuestionChoice.class), cqs.get(i).getQ_id());
                qcs.add(qc);
            }catch (Exception e){
                System.out.println(e);
            }

        }
        return qcs;
    }
}
