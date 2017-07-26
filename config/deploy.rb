# config valid only for current version of Capistrano
lock "3.8.0"

set :application, "item_cart"
set :repo_url, "git@github.com:sakopqiu/item_cart.git"

# Default branch is :master
set :branch, 'master'
set :deploy_to, "/Users/qiucheng/code/ruby/capistrano/item-cart"

