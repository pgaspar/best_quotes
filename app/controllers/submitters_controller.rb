class SubmittersController < Tails::Controller
  def show
    submitter = params['submitter']
    quotes = FileModel.find_all_by_submitter(submitter)
    render :submitter, submitter: submitter, quotes: quotes
  end
end
