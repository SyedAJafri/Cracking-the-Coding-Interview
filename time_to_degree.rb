TIME_RE = /(?<hours>\d+)\:(?<mins>\d+)/
HOURS_DEG = 30 # Number of degrees in a minute
MINS_DEG = 6 # Number of degrees in a minute

# Calculates the number of degrees in the angle between the minute hand
# and hour hand
# @param time [String]
# @return     [Num] Number of degreen
def time_to_degree(time)
  # Extract hours and mins from time string
  match_results = time.match TIME_RE

  hours = match_results[:hours].to_i
  mins = match_results[:mins].to_i

  hour_deg = hours * HOURS_DEG
  min_deg = mins * MINS_DEG

  (hour_deg - min_deg).abs
end
