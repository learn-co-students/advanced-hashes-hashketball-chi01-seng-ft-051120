require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player_name)
  points_scored = ""
  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          #binding.pry
          if data_item[:player_name] == player_name
            points_scored = data_item[:points]
          end
        end
      end
    end
  end
  points_scored
end

def shoe_size(player_name)
  s_size = ""
  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          #binding.pry
          if data_item[:player_name] == player_name
            s_size = data_item[:shoe]
          end
        end
      end
    end
  end
  s_size
end

def team_colors(team_name)
  t_colors = []
  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if data == team_name
        t_colors = team_info[:colors]
      end
      #binding.pry
    end
  end
  t_colors
end

def team_names
  t_names = []
  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if attribute == :team_name
        t_names << data
        #binding.pry
      end
    end
  end
  t_names
end

def player_numbers(team_name)
  p_numbers = []
  game_hash.each do |location, team_info|
    if team_info[:team_name] == team_name
      team_info.each do |attribute, data|
        if attribute == :players
          data.each do |data_item|
            #binding.pry
            p_numbers << data_item[:number]
          end
        end
      end
    end
  end
  p_numbers
end

def player_stats(player_name)
  p_stats = {}
  game_hash.each do |location, team_info|

    team_info.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          #binding.pry
          if data_item[:player_name] == player_name
            p_stats = data_item
            #p_stats.delete(:player_name)
          end
        end
      end
    end
  end
  p_stats
end

def big_shoe_rebounds
  num_rebounds = 0
  shoe_sz = 0
  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          if data_item[:shoe] > shoe_sz
            shoe_sz = data_item[:shoe]
            num_rebounds = data_item[:rebounds]
          end
        end
      end
    end
  end
  num_rebounds
end














