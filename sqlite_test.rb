require 'sqlite3'
require 'tails/sqlite_model'

class MyTable < Tails::Model::SQLite; end

STDERR.puts MyTable.schema.inspect

# Create Row
mt = MyTable.create('title' => 'I saw it again!')

puts "Count: #{MyTable.count}"
