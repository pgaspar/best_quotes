app = proc do
  [200, { 'Content-Type' => 'text/html' }, ['Hello, world!']]
end

run(app)
