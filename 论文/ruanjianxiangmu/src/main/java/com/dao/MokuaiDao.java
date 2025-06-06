package com.dao;

import com.entity.MokuaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.MokuaiView;

/**
 * 模块 Dao 接口
 *
 * @author 
 */
public interface MokuaiDao extends BaseMapper<MokuaiEntity> {

   List<MokuaiView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
