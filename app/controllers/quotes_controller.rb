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

  def update
    id = params['id']
    quote = FileModel.find(id)
    raise "Couldn't find quote with ID: #{id.inspect}" unless quote

    quote['submitter'] = params['submitter'] if params['submitter']
    quote['quote'] = params['quote'] if params['quote']
    quote['attribution'] = params['attribution'] if params['attribution']

    quote.save
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
    'Hello from my controller!' \
      "\n<pre>\n#{env}\n</pre>" \
      "\n<pre>\n#{params}\n</pre>"
  end
end
