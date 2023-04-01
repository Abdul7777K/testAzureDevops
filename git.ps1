$AZUREPAT = "Ptw8Q~dJm7VV4VomdEMfWDCDZR1EPJ5f0-wRyc~f"
$AZUSERNAME = "anything"
$AZUSER_EMAIL = "nageshdevops77@outlook.com"
$AZORG = "Learning-Devops-7777"

# Clone the repository and remove its Git history
git clone https://github.com/Abdul7777K/testAzureDevops.git
cd testAzureDevops
Remove-Item -Recurse -Force .git

cd ..

# Clone the repository again, this time with Azure credentials
$GIT_CMD_REPOSITORY="https://Ptw8Q~dJm7VV4VomdEMfWDCDZR1EPJ5f0-wRyc~f@dev.azure.com/Learning-Devops-7777/Abdul/_git/syncWithgitEshopCommerce"
git clone $GIT_CMD_REPOSITORY

# Copy the contents of the local repository to the cloned Azure repository
Copy-Item -Recurse testAzureDevops/* syncWithgitEshopCommerce/

cd syncWithgitEshopCommerce

# Configure Git with Azure credentials
git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

# Commit and push changes to Azure repository
git add .
git commit -m "sync from git to azure"
git push


