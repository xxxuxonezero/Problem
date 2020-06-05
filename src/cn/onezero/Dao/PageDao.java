package cn.onezero.Dao;

import cn.onezero.domain.QuestionChoice;
import cn.onezero.domain.QuestionZG;
import cn.onezero.services.QuestionImpl;
import cn.onezero.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.Iterator;
import java.util.List;

public class PageDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    /**
     * 获取总的选择题记录数
     * @param course_id
     * @return
     */
    public int getTotalCount(int course_id){
        String sql="select count(*) from question_choice where course_id=? and visit=1";
        Integer integer = template.queryForObject(sql, Integer.class, course_id);
        return integer;
    }

    /**
     * 获取当前页的选择题列表
     * @param course_id
     * @param begin
     * @param PageSize
     * @return
     */
    public List<QuestionChoice> getQueryPage(int course_id,int user_id, int begin, int PageSize) {
        String sql="select * from question_choice where course_id=? and visit=1 order by q_id desc limit ?,?";
        List<QuestionChoice> query = template.query(sql, new BeanPropertyRowMapper<QuestionChoice>(QuestionChoice.class), course_id, begin, PageSize);
//       获取用户是否收藏
        Integer type_id=query.get(0).getType_id();
        Integer max = query.get(0).getQ_id();
        Integer min = query.get(query.size() - 1).getQ_id();
        String sql1="select count(*) from collect where q_id between ? and ? and type_id=? and user_id=?";
        try{
            Integer i = template.queryForObject(sql1, Integer.class, min, max, type_id, user_id);
            if(i!=0){
                for(int k=0;k<query.size();k++){
                    QuestionChoice qc=query.get(k);
                    sql1="select count(*) from collect where q_id between ? and ? and type_id=? and user_id=? and q_id=?";
                    Integer count = template.queryForObject(sql1, Integer.class, min, max, type_id, user_id, qc.getQ_id());
                    if(count==0){
                        qc.setCollection(false);
                    }
                    else{
                        qc.setCollection(true);
                    }
                    query.set(k,qc);
                }

            }
        }catch (Exception e){
            System.out.println(e);
        }
        return query;
    }

    /**
     * 获取对应课程和题型的主观题个数
     * @param course_id
     * @param type_id
     * @return
     */
    public int getTotalCount(int course_id,int type_id){
        String sql="select count(*) from question_zhuguan where course_id=? and type_id=? and visit=1";
        Integer integer = template.queryForObject(sql, Integer.class, course_id,type_id);
        return integer;
    }

    /**
     * 获取当前页目标课程、目标题型的题目列表
     * @param course_id
     * @param type_id
     * @param begin
     * @param PageSize
     * @return
     */
    public List<QuestionZG> getQueryPage(int course_id, int type_id, int user_id,int begin, int PageSize) {
        String sql="select * from question_zhuguan where course_id=? and type_id=? and visit=1 order by q_id desc limit ?,?";
        List<QuestionZG> query = template.query(sql, new BeanPropertyRowMapper<QuestionZG>(QuestionZG.class), course_id, type_id,begin, PageSize);
        Integer max = query.get(0).getQ_id();
        Integer min = query.get(query.size() - 1).getQ_id();
        String sql1="select count(*) from collect where q_id between ? and ? and type_id=? and user_id=?";
        try{
            Integer i = template.queryForObject(sql1, Integer.class, min, max, type_id, user_id);
            if(i!=0){
                for(int k=0;k<query.size();k++){
                    QuestionZG qc=query.get(k);
                    sql1="select count(*) from collect where q_id between ? and ? and type_id=? and user_id=? and q_id=?";
                    Integer count = template.queryForObject(sql1, Integer.class, min, max, type_id, user_id, qc.getQ_id());
                    if(count==0){
                        qc.setCollection(false);
                    }
                    else{
                        qc.setCollection(true);
                    }
                    query.set(k,qc);
                }

            }
        }catch (Exception e){
            System.out.println(e);
        }
        return query;
    }

}
