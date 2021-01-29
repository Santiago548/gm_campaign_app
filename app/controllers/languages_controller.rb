class LanguagesController < ApplicationController
    include CharactersHelper
    def index
        @languages = character_language
    end
end
