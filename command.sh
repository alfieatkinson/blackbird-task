#!/bin/bash

# Step 1: Create React app
npx create-react-app blackbird-task
cd blackbird-task

# Step 2: Initialize git and create GitHub repo
git init
git add .
git commit -m "Initial commit"
gh repo create blackbird-task --public --source=. --remote=origin

# Step 3: Switch to update_logo branch
git checkout -b update_logo

# Step 4: Replace the logo with the new one (URL or file)
# This should be done manually in the project, either by replacing the logo file or updating the link in App.js.

# Step 5: Replace the link with the new one
# This should also be done manually in App.js

# Step 6: Commit and push the changes
git add .
git commit -m "Updated logo and link"
git push origin update_logo

# Step 7: Create PR from update_logo to master
gh pr create --base master --head update_logo --title "Update logo and link" --body "Updated the logo and replaced the link."

# Step 8: Merge the PR
gh pr merge --merge

# Add your GitHub repository link here:
echo "REPO_URL https://github.com/alfieatkinson/blackbird-task"