class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
      all_characters = @shows.flat_map do |show|
        show.characters
      end

      all_characters.find_all do |character|
      character.salary > 500_000 && character.name == character.name.upcase
    end

  end

  def actors_by_show
    # @shows.find_all do |character|
    #   character.actor == actor
    # end

    # all_actors = @shows.flat_map { |show| show.characters}
    #
    # actors_by_show = all_actors.group_by {|character| character.actor}

    @shows.reduce({}) do |actors_by_show, show|
    actors_by_show[show] = show.actors
    actors_by_show
    end
  end
end
