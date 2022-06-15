package com.JDBC;

import com.POJO.ArticleBean;
import com.POJO.GoodBean;
import com.mapper.CommentMapper;
import com.mapper.GoodMapper;
import com.mapper.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.List;

public class GoodDAO extends BaseDAO{
    private final GoodMapper mapper;
    private final SqlSession sqlSession;

    public GoodDAO() throws IOException {
        sqlSession=getSqlSession();
        mapper= sqlSession.getMapper(GoodMapper.class);
    }
    public List<GoodBean> getAllGoods(){
        return mapper.selectAll();
    }
    public GoodBean getGoodsById(int id){
        return mapper.selectById(id);
    }
    public List<GoodBean> getGoodsByName(String goodName){
        return mapper.selectByName(goodName);
    }
    public boolean addGoods(GoodBean gb){
        return mapper.addGood(gb.getGoodName(), gb.getPrice(), gb.getIntroduction(), gb.getImage(), gb.getMonthlySales()) == 1;
    }

    public List<GoodBean> getGoodByTag(String tag){
        return mapper.goodSelectByTag(tag);
    }

}
