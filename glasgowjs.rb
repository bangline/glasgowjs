set :markdown, :layout_engine => :haml

helpers do

  def next_meeting
    month = Chronic.parse('now').strftime('%B')
    first_this_month = Chronic.parse("1st tuesday of this #{month}")
    return Chronic.parse('1st tuesday next month') if Chronic.parse('midnight') > first_this_month
    first_this_month
  end

end

get '/' do
  @next_meeting = next_meeting
  markdown :index
end
