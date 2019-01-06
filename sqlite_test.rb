require 'sqlite3'
require 'tails/sqlite_model'

class MyTable < Tails::Model::SQLite; end

STDERR.puts MyTable.schema.inspect

# Initialize and then save
mt1 = MyTable.new
mt1['title'] = 'Testing!'
mt1.save!

mt1 = MyTable.find mt1['id']
puts "Title: #{mt1['title']}"

puts "Count: #{MyTable.count}"

top_id = mt1['id'].to_i
(1..top_id).each do |id|
  mt_id = MyTable.find(id)
  puts "Found title #{mt_id['title']}."
end
