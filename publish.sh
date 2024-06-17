sudo chown -R "${USER:-$(id -un)}" .

read -p "Message for git commit > " message
bundle exec jekyll build
git add .
git commit -m "$message"
git config --global user.email "tim.lee@qmul.ac.uk"
git config --global user.name "Tim Lee"
git push
