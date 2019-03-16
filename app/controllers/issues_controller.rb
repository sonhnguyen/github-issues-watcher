class IssuesController < ApplicationController

  before_action :prepare_issue, only: [:show]

  def index
    @form = IssuesFilterForm.new(issues_filter_form_params)
    @form.submit
  end

  def show
  end

  private

  def issues_filter_form_params
    params.fetch(:issues_filter_form, {}).permit(:status)
  end

  def prepare_issue
    @issue = Issue.find(params[:id])
  end

end
