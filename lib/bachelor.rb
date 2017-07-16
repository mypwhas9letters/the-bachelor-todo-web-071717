require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |x|
    if x["status"] == "Winner"
    return x["name"].split(" ")[0]
end
end
end

def get_contestant_name(data, occupation)
  data.map do |season,cont|
    cont.map do |x|
      if x["occupation"] == occupation
        return x["name"]
  end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.map do |season, cont|
    cont.map do |x|
      if x["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.map do |season, cont|
    cont.map do |x|
      if x["hometown"] == hometown
        return x["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)
  totalage = 0.0
  numofcont = 0.0
  data[season].map do |x|
      totalage += x["age"].to_i
      numofcont += 1
end
(totalage/numofcont).round
end
