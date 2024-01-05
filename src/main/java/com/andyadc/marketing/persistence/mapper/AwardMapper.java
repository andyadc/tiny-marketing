package com.andyadc.marketing.persistence.mapper;

import com.andyadc.marketing.persistence.entity.Award;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AwardMapper {

    int deleteByPrimaryKey(Long id);

    int insert(Award row);

    int insertSelective(Award row);

    Award selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Award row);

    int updateByPrimaryKey(Award row);
}
