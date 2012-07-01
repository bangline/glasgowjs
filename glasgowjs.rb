helpers do
  def next_meeting
    first_this_month = Chronic.parse('first tuesday this month')
    return Chronic.parse('First Tuesday Next Month') if Time.now > first_this_month
    first_this_month
  end
end

get '/' do
  haml :index
end
