class CreateGameService
  def self.call(params)
    game = Game.new(name: params[:name])

    names = params[:participant_names].split(",").map(&:strip).shuffle

    participants = names.map { Participant.build(name: _1, game:) }
    participants.each_with_index { |participant, i| participant.receiver = participants[(i + 1) % participants.length] }

    game.participants = participants.shuffle

    game.save!
    game
  end
end
