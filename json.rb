require_relative "./json_core.rb"
eval Jsoncore.init

if !File.exist?("./main.rb")
  puts "{\"Stage\":{\"isStage\":true}}"
  exit
end
begin
  require "./main.rb"
rescue Exception => e
  if $stdout.tty?
    puts "#{e.class}: #{e.message}"
  else
    puts "{\"Stage\":{\"isStage\":true}}"
    STDERR.puts "#{e.class}: #{e.message}"
  end
  exit
end
a = Project.generate(*ARGV)
if a.class == String
  a = JSON.parse(a)
end
a.each do |k,v|
  v["program"] = (v["program"] || []).map{|b| b.to_j}
end
puts JSON.generate(a)
