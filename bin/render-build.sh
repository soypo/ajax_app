#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

# bundle exec rake db:migrate(投稿していたデータは全て削除される→8行目を消す↓を9行目に追加)
#DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake db:migrate:reset