class QuotesController < Tails::Controller
  def index
    quotes = FileModel.all
    render :index, quotes: quotes
  end

  def new_quote
    attrs = {
      'submitter' => 'web user',
      'quote' => 'A picture is worth one k pixels',
      'attribution' => 'Me'
    }

    quote = FileModel.create(attrs)
    render :quote, obj: quote
  end

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
