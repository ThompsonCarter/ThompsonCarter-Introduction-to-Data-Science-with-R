library(fairmodels)
explainer <- explain(rf, data=test[,-1], y=test$defect_flag)
fairness_check <- fairness_check(explainer, protected = test$machine_type)
fairness_plot(fairness_check)