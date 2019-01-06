require 'sqlite3'
require 'tails/sqlite_model'

class MyTable < Tails::Model::SQLite; end

STDERR.puts MyTable.schema.inspect

# Create Row
mt = MyTable.create('title' => 'I saw it again!')

puts "Count: #{MyTable.count}"

top_id = mt['id'].to_i
(1..top_id).each do |id|
  mt_id = MyTable.find(id)
  puts "Found title #{mt_id['title']}."
end
