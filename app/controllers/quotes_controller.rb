class QuotesController < Tails::Controller
  def a_quote
    render :a_quote, noun: :winking
  end

  def test
    'Hello from my controller!' + "\n<pre>\n#{env}\n</pre>"
  end
end
