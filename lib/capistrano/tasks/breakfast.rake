desc "Ask about breakfast"
task :breakfast do
  ask(:breakfast,"pancake")
  on roles(:all) do |h|
    execute "echo \"$(whoami) paopao on machine #{h} wants #{fetch(:breakfast)} for breakfast\""
  end
end
