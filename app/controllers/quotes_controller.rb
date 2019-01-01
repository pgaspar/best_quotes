class QuotesController < Tails::Controller
  def a_quote
    render :a_quote, noun: :winking
  end

  def quote_1
    quote = FileModel.find(1)
    render :quote, obj: quote
  end

  def test
    'Hello from my controller!' + "\n<pre>\n#{env}\n</pre>"
  end
end
