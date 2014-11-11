require 'bh/core_ext/padrino/button_to_helper'
require 'bh/core_ext/padrino/link_to_helper'

module Bh
  module Extensions
    # Make Bootstrap helpers available in Padrino applications.
    #
    # To use Bh in a Padrino app you need 2 steps:
    #
    #   - include bh in the Gemfile
    #   - add `register Bh` in the `app.rb` file
    #
    # The following method adds `Bh` as one of the modules that can be registered
    # in a Padrino app, but you still need to register it manually in order to
    # make helpers available.
    module Padrino
      # Register Bh as a Padrino app.
      def registered(app)
        app.include Bh::Helpers
        app.include Bh::Padrino::Helpers
      end
    end
  end

  # Allow to register Bh in a Padrino app simply with `register Bh`.
  extend Extensions::Padrino
end