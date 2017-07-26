namespace :rake_test do
  desc "mkdir"
  task :mkdir do
    rm_rf "test_rake"
    mkdir("test_rake")
  end

  task :rake_tmp => "mkdir" do
    begin
      sh "echo 'Hello' >> 'test_rake/rake_tmp.txt'"
    end
  end

  task :rake_tmp do
    puts "appended!"
  end
end

task "put" do
  desc "puts 123"
  puts 123
  puts "original folder", Rake.original_dir
  Rake::Task["rake_test:rake_tmp"].invoke
end

task "second" do
  puts "second"
end

task :default => "rake_test:rake_tmp"
task :default => "put"
