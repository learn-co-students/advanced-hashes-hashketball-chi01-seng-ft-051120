# Write your code here!
def game_hash
  game_results = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {:player_name => "Alan Anderson",
          :number => 0, 
          :shoe => 16,
          :points => 22, 
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1},
        {:player_name => "Reggie Evans",
          :number => 30, 
          :shoe => 14,
          :points => 12, 
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7},
        {:player_name => "Brook Lopez",
          :number => 11, 
          :shoe => 17,
          :points => 17, 
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15},
        {:player_name => "Mason Plumlee",
          :number => 1, 
          :shoe => 19,
          :points => 26, 
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5},
        {:player_name => "Jason Terry",
          :number => 31, 
          :shoe => 15,
          :points => 19, 
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1}
        ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {:player_name => "Jeff Adrien",
          :number => 4, 
          :shoe => 18,
          :points => 10, 
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2},
        {:player_name => "Bismack Biyombo",
          :number => 0, 
          :shoe => 16,
          :points => 12, 
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10},
        {:player_name => "DeSagna Diop",
          :number => 2, 
          :shoe => 14,
          :points => 24, 
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5},
        {:player_name => "Ben Gordon",
          :number => 8, 
          :shoe => 15,
          :points => 33, 
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0},
        {:player_name => "Kemba Walker",
          :number => 33, 
          :shoe => 15,
          :points => 6, 
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12}
        ]
    }
  }
  game_results
end 

def num_points_scored(players_name)
  results = game_hash
  home_players_list = results[:home][:players]
  away_players_list = results[:away][:players]
  points_player = nil 
  home_players_list.each do |index|
    if index[:player_name] == players_name
      points_player = index[:points]
    end 
  end 
  away_players_list.each do |index|
    if index[:player_name] == players_name 
      points_player = index[:points]
    end 
  end 
  points_player
end 

def shoe_size(players_name)
  results = game_hash
  home_players_list = results[:home][:players]
  away_players_list = results[:away][:players]
  shoe_size_player = nil 
  home_players_list.each do |index|
    if index[:player_name] == players_name
      shoe_size_player = index[:shoe]
    end 
  end 
  away_players_list.each do |index|
    if index[:player_name] == players_name 
      shoe_size_player = index[:shoe]
    end 
  end 
  shoe_size_player 
end

def team_colors(teams_name)
  results = game_hash
  teams_color = nil 
  if results[:home][:team_name] == teams_name
    teams_color = results[:home][:colors]
  elsif results[:away][:team_name] == teams_name
    teams_color = results[:away][:colors]
  end 
  teams_color
end 

def team_names
  results = game_hash
  names = []
  names << results[:home][:team_name]
  names << results[:away][:team_name]
  names
end 

def player_numbers(teams_name)
  results = game_hash 
  team_numbers = []
  if results[:home][:team_name] == teams_name
    home_players_list = results[:home][:players]
    home_players_list.each do |index|
      team_numbers << index[:number]
    end 
    elsif results[:away][:team_name] == teams_name
      away_players_list = results[:away][:players]
      away_players_list.each do |index|
        team_numbers << index[:number]
      end 
    end 
  team_numbers 
end 

def player_stats(players_name)
  results = game_hash
  home_players_list = results[:home][:players]
  away_players_list = results[:away][:players]
  players_stats = {}
  home_players_list.each do |index|
    if index[:player_name] == players_name
      players_stats = index
    end 
  end 
  away_players_list.each do |index|
    if index[:player_name] == players_name 
      players_stats = index
    end 
  end 
  players_stats.delete(:player_name)
  players_stats
end 

def big_shoe_rebounds
  results = game_hash 
  biggest_shoe = 0
  biggest_shoe_rebounds = 0 
  home_players_list = results[:home][:players]
  away_players_list = results[:away][:players]
  home_players_list.each do |index|
    if index[:shoe] > biggest_shoe 
      biggest_shoe = index[:shoe]
      biggest_shoe_rebounds = index[:rebounds]
    end 
  end 
  away_players_list.each do |index|
    if index[:shoe] > biggest_shoe
      biggest_shoe = index[:shoe]
      biggest_shoe_rebounds = index[:rebounds]
    end 
  end 
  biggest_shoe_rebounds
end 

def most_points_scored
  results = game_hash
  most_points = 0 
  biggest_scorer = ""
  home_players_list = results[:home][:players]
  away_players_list = results[:away][:players]
  home_players_list.each do |index|
    if index[:points] > most_points 
      most_points = index[:points]
      biggest_scorer = index[:player_name]
    end 
  end 
  away_players_list.each do |index|
    if index[:points] > most_points
      most_points = index[:points]
      biggest_scorer = index[:player_name]
    end 
  end 
  biggest_scorer
end

def winning_team 
  results = game_hash
  home_points = 0 
  away_points = 0 
  winning_team_name = ""
  home_players_list = results[:home][:players]
  away_players_list = results[:away][:players]
  home_players_list.each do |index|
    home_points += index[:points]
  end 
  away_players_list.each do |index|
    away_points += index[:points]
  end 
  if home_points > away_points 
    winning_team_name = results[:home][:team_name]
    elsif away_points > home_points 
    winning_team_name = results[:away][:team_name]
  else 
    winning_team_name = "tie"
  end 
  winning_team_name
end 

def player_with_longest_name
  results = game_hash 
  name_length = 0
  longest_name = "" 
  home_players_list = results[:home][:players]
  away_players_list = results[:away][:players]
  home_players_list.each do |index|
    if index[:player_name].length > name_length 
      name_length = index[:player_name].length
      longest_name = index[:player_name]
    end 
  end 
  away_players_list.each do |index|
    if index[:player_name].length > name_length 
      name_length = index[:player_name].length
      longest_name = index[:player_name]
    end 
  end 
  longest_name 
end 

def long_name_steals_a_ton?
    longest_name = player_with_longest_name
    results = game_hash
    longest_name_stats = player_stats(longest_name)
    longest_name_steals = longest_name_stats[:steals]
    home_players_list = results[:home][:players]
    away_players_list = results[:away][:players]
    home_players_list.each do |index|
    if index[:steals] > longest_name_steals 
      return false
    end 
  end 
  away_players_list.each do |index|
    if index[:steals] > longest_name_steals
      return false
    end 
  end 
  return true  
end 
    
      
      
    







