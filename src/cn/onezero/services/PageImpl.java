package cn.onezero.services;

import cn.onezero.Dao.PageDao;
import cn.onezero.domain.Page;
import cn.onezero.domain.QuestionChoice;
import cn.onezero.domain.QuestionZG;

import java.util.List;

public class PageImpl {
    private PageDao pd=new PageDao();

    /**
     *获取选择题当前页的数据
     * @param course_id
     * @param currentPage
     * @param pageSize
     * @return
     */
    public Page queryPage(int course_id,int user_id,int currentPage,int pageSize){
        Page p=new Page();
        p.setCurrentPage(currentPage);
        p.setPageSize(pageSize);
        int totalCount=pd.getTotalCount(course_id);
        p.setTotalCount(totalCount);
        int begin=(currentPage-1)*pageSize;
        int totalPage=totalCount%pageSize==0 ? totalCount/pageSize:(totalCount/pageSize)+1;
        p.setTotalPage(totalPage);
        List<QuestionChoice> queryPage = pd.getQueryPage(course_id,user_id,begin, pageSize);
        p.setList(queryPage);
        return p;
    }

    /**
     * 获取客观题当前页的数据
     * @param course_id
     * @param type_id
     * @param currentPage
     * @param pageSize
     * @return
     */
    public Page queryPage(int course_id,int type_id,int user_id,int currentPage,int pageSize){
        Page p=new Page();
        p.setCurrentPage(currentPage);
        p.setPageSize(pageSize);
        int totalCount=pd.getTotalCount(course_id,type_id);
        p.setTotalCount(totalCount);
        int begin=(currentPage-1)*pageSize;
        int totalPage=totalCount%pageSize==0 ? totalCount/pageSize:(totalCount/pageSize)+1;
        p.setTotalPage(totalPage);
        List<QuestionZG> queryPage = pd.getQueryPage(course_id, type_id,user_id,begin, pageSize);
        p.setList(queryPage);
        return p;
    }
}
