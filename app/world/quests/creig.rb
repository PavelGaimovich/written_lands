class World::Quests::Creig < World::Quests::Base
  def self.start
    dialog('Hello world!', 'What do you mean?', 'Hello to you too!')

    if result == 0
      dialog('I really need to explain?', 'Yes', 'No')

      if result == 0
        dialog('You see, then developer create his first program, his program say "Hello world"', 'Not got it', 'Got it')

        if result == 0
          dialog('Google it!')
        end

      end

    else
      dialog('Nice!')
    end
  end
end
