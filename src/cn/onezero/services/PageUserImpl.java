package cn.onezero.services;

import cn.onezero.Dao.PageUserDao;
import cn.onezero.domain.*;

import java.util.List;

public class PageUserImpl {
    private PageUserDao pud=new PageUserDao();

    /**
     *获取用户添加的选择题
     * @param user_id
     * @param currentPage
     * @param pageSize
     * @return
     */
    public Page queryPage(int user_id,int currentPage,int pageSize){
        Page p=new Page();
        p.setCurrentPage(currentPage);
        p.setPageSize(pageSize);
        int totalCount=pud.getTotalCount(user_id);
        p.setTotalCount(totalCount);
        int begin=(currentPage-1)*pageSize;
        int totalPage=totalCount%pageSize==0 ? totalCount/pageSize:(totalCount/pageSize)+1;
        p.setTotalPage(totalPage);
        List<QuestionChoice> queryPage = pud.getQueryPage(user_id,begin, pageSize);
        p.setList(queryPage);
        return p;
    }

    /**
     * 按主观题题型获取用户添加的题目
     * @param user_id
     * @param type_id
     * @param currentPage
     * @param pageSize
     * @return
     */
    public Page queryPage(int user_id,int type_id,int currentPage,int pageSize){
        Page p=new Page();
        p.setCurrentPage(currentPage);
        p.setPageSize(pageSize);
        int totalCount=pud.getTotalCount(user_id,type_id);
        p.setTotalCount(totalCount);
        int begin=(currentPage-1)*pageSize;
        int totalPage=totalCount%pageSize==0 ? totalCount/pageSize:(totalCount/pageSize)+1;
        p.setTotalPage(totalPage);
        List<QuestionZG> queryPage = pud.getQueryPage(user_id,type_id,begin, pageSize);
        p.setList(queryPage);
        return p;
    }
//获取错题
    public Page queryWrongPage(int user_id,int currentPage,int pageSize){
        Page p=new Page();
        p.setCurrentPage(currentPage);
        p.setPageSize(pageSize);
        int totalCount=pud.getTotalWrongCount(user_id);
        p.setTotalCount(totalCount);
        int begin=(currentPage-1)*pageSize;
        int totalPage=totalCount%pageSize==0 ? totalCount/pageSize:(totalCount/pageSize)+1;
        p.setTotalPage(totalPage);
        List<WrongQuestion> queryPage = pud.getQueryWrongPage(user_id,begin, pageSize);
        p.setList(queryPage);
        return p;
    }

    public Page queryCollectPage(int user_id,int currentPage,int pageSize){
        Page p=new Page();
        p.setCurrentPage(currentPage);
        p.setPageSize(pageSize);
        int totalCount=pud.getTotalCollectCount(user_id);
        p.setTotalCount(totalCount);
        int begin=(currentPage-1)*pageSize;
        int totalPage=totalCount%pageSize==0 ? totalCount/pageSize:(totalCount/pageSize)+1;
        p.setTotalPage(totalPage);
        List<CollectQuestion> q = pud.getQueryCollectPage(user_id,begin, pageSize);
        List<QuestionChoice> queryPage = pud.getJsonString(q);
        p.setList(queryPage);
        return p;
    }
}
