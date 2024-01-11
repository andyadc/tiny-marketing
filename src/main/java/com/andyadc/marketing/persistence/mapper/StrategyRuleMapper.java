package com.andyadc.marketing.persistence.mapper;

import com.andyadc.marketing.persistence.entity.StrategyRule;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StrategyRuleMapper {

    int deleteByPrimaryKey(Long id);

    int insert(StrategyRule row);

    int insertSelective(StrategyRule row);

    StrategyRule selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(StrategyRule row);

    int updateByPrimaryKey(StrategyRule row);
}