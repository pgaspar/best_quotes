class QuotesController < Tails::Controller
  def test
    'Hello from my controller!' + "\n<pre>\n#{env}\n</pre>"
  end
end
