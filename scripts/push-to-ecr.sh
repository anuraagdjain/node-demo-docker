npm version patch
pip install --user awscli
export PATH=$PATH:$HOME/.local/bin
eval $(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)
ver=$(node -p "require('./package.json').version")
docker build -t node-demo-ecr -f ./build/Dockerfile .
docker tag node-demo-ecr:latest $ECR_REPOSITORY:latest
docker tag node-demo-ecr:latest $ECR_REPOSITORY:$ver
docker push $ECR_REPOSITORY:latest
docker push $ECR_REPOSITORY:$ver
git add .
git commit --amend -m $ver" release - [skip ci]"
git push origin HEAD:master --force
git push --tags