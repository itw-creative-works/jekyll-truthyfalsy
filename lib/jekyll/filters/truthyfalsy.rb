module Jekyll
  module IstruthyFalsyFilter
    def istruthy(input)
      !(input.nil? || input == '' || input == false)
    end

    def isfalsy(input)
      input.nil? || input == '' || input == false
    end
  end
end

Liquid::Template.register_filter(Jekyll::IstruthyFalsyFilter)
