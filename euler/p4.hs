p4 = maximum [three1*three2 | three1 <- [100..999], three2 <- [100..999], (show (three1*three2))==(reverse (show (three1*three2)))]