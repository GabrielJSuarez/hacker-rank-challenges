# frozen_string_literal: true

def breaking_records(scores)
  # Get the lowest and highest score from the Scores Array
  lowest_season_score = scores[0]
  highest_season_score = scores[0]

  # Set the counter for times the records are beaten
  highest_score_counter = 0
  lowest_score_counter = 0

  # loop through the array
  scores.each do |score|
    # Check if the score broke the highest record
    if score > highest_season_score
      highest_score_counter += 1
      # re-assign highest record variable
      highest_season_score = score
    # Check if the score broke the lowest record
    elsif score < lowest_season_score
      lowest_score_counter += 1
      # re-assign lowest record variable
      lowest_season_score = score
    end
  end

  # return results
  [highest_score_counter, lowest_score_counter]
end
