package com.andyadc.marketing.test;

import com.andyadc.marketing.persistence.entity.Award;
import com.andyadc.marketing.persistence.entity.StrategyAward;
import com.andyadc.marketing.persistence.mapper.AwardMapper;
import com.andyadc.marketing.persistence.mapper.StrategyAwardMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class MapperTests {

    @Autowired
    private AwardMapper awardMapper;
    @Autowired
    private StrategyAwardMapper strategyAwardMapper;

    @Test
    public void test_StrategyAwardMapper_queryByStrategyId() {
        List<StrategyAward> strategyAwardList = strategyAwardMapper.queryByStrategyId(1);
        System.out.println(strategyAwardList.size());
    }

    @Test
    public void test_AwardMapper_selectByPrimaryKey() {
        Award award = awardMapper.selectByPrimaryKey(1L);
        System.out.println(award.getAwardKey());
    }

    @Test
    public void test_AwardMapper_selectByAwardId() {
        Award award = awardMapper.selectByAwardId(1);
        System.out.println(award.getAwardKey());
        System.out.println(award.getAwardDesc());
    }

}
