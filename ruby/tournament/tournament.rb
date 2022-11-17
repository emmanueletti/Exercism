# Write your code for the 'Tournament' exercise in this file. Make the tests in
# `tournament_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/tournament` directory.

class Tournament
  SCORING = {win: 3, loss: 0, draw: 1}.freeze
  DEFAULT_SPACING = 31

  def self.tally(input)
    return header if input.chomp.empty?
    result = input.lines(chomp: true).map { |score| score.split(";") }
    # p result
    stats = result.each_with_object({}) do |match, hash|
      outcome = match[-1]
      winner = nil
      loser = nil

      if outcome == "win"
        # do something
        winner = match[0]
        loser = match[1]
      end

      if outcome == "loss"
        # do something
        winner = match[1]
        loser = match[0]
      end

      if outcome == "draw"
        winner = match[1]
        loser = match[0]
      end

      hash[winner] = {MP: 0, W: 0, D: 0, L: 0, P: 0} unless hash[winner]
      hash[loser] = {MP: 0, W: 0, D: 0, L: 0, P: 0} unless hash[loser]

      if outcome == "draw"
        hash[winner][:MP] += 1
        hash[winner][:D] += 1
        hash[winner][:P] += SCORING[:draw]

        hash[loser][:MP] += 1
        hash[loser][:D] += 1
        hash[loser][:P] += SCORING[:draw]

        next hash
      end

      hash[winner][:MP] += 1
      hash[winner][:W] += 1
      hash[winner][:P] += SCORING[:win]

      hash[loser][:MP] += 1
      hash[loser][:L] += 1
      hash
    end

    # p stats

    # sort by total points and then alphabetically
    x = stats.sort_by { |k, v| [-v[:P], k] }.to_h.keys.map do |team|
      team.to_s + calculated_spacing(team) + "|#{num_spacing(stats[team][:MP])} |#{num_spacing(stats[team][:W])} |#{num_spacing(stats[team][:D])} |#{num_spacing(stats[team][:L])} |#{num_spacing(stats[team][:P])}"
    end
    # p x
    header + x.join("\n") + "\n"
  end

  def self.header
    <<~TALLY
      Team                           | MP |  W |  D |  L |  P
    TALLY
  end

  def self.calculated_spacing(team_name)
    spacing = DEFAULT_SPACING - team_name.length
    " " * spacing
  end

  def self.num_spacing(num)
    # double digit
    if num.to_s.length > 1
      " #{num}"
    else
      "  #{num}"
    end
  end
end
