class IssuesFilterForm

  include ActiveModel::Model

  OPTIONS_FOR_STATUS = {
    'open' => :open,
    'closed' => :closed
  }.freeze

  attr_accessor :status
  attr_reader :results

  def initialize(params = nil)
    super(params)
    @results ||= Issue.none
  end

  def submit
    return @results unless valid?

    @results = Issue.all.order(issue_id: :desc)
    case OPTIONS_FOR_STATUS[status]
    when :open
      @results = @results.open
    when :closed
      @results = @results.closed
    end
    @results
  end

  def options_for_status
    @options_for_status ||= OPTIONS_FOR_STATUS.map { |k, v| [k.to_s.titleize, v] }
  end

end
