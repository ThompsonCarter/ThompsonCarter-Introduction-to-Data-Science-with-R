git init
git add .
git commit -m "Initial reproducible pipeline"
git checkout -b feature/new-plot
# work...
git commit -am "Add KPI chart"
git checkout main
git merge feature/new-plot