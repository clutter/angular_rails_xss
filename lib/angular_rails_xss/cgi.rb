module AngularRailsXSS
  # A re-definition of the CGI escapeHTML that proxies to the escaper.
  module CGI
    def self.prepended(base)
      class << base
        # rubocop:disable Naming/MethodName
        def escapeHTML(string)
          Escaper.escape(super(string))
        end
        # rubocop:enable Naming/MethodName
      end
    end
  end
end
