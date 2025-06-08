# Print the cp table
printcp(tree_mod)

# Pick cp with lowest x-error for pruning
best_cp <- tree_mod$cptable[which.min(tree_mod$cptable[,"xerror"]), "CP"]