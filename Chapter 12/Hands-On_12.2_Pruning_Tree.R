# Prune the tree
pruned <- prune(tree_mod, cp = best_cp)
rpart.plot(pruned)