package com.andyadc.marketing.test;

import com.andyadc.marketing.domain.strategy.model.entity.StrategyAwardEntity;
import com.andyadc.marketing.domain.strategy.repository.StrategyRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class RepositoryTests {

    @Autowired
    private StrategyRepository strategyRepository;

    @Test
    public void test_StrategyRepository_queryStrategyAwardList() {
        List<StrategyAwardEntity> strategyAwardEntityList = strategyRepository.queryStrategyAwardList(1);
        System.out.println(strategyAwardEntityList);
    }
}
