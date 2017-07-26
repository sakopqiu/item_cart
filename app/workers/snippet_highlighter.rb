class SnippetHighlighter
  @queue = :snippet_queue

  def self.perform(code)
    File.open("job_result.txt", 'w') { |file| file.write(code.upcase) }
  end
end
