module AngularRailsXSS
  # A helper for escaping angular.js {{}}.
  module Escaper
    L_INTERPOLATION_INJECTION = '{{'.freeze
    R_INTERPOLATION_INJECTION = '}}'.freeze

    L_INTERPOLATION_INJECTION_REP = '{{ $root.DOUBLE_L_CURLY_BRACE }}'.freeze
    R_INTERPOLATION_INJECTION_REP = '{{ $root.DOUBLE_R_CURLY_BRACE }}'.freeze

    INTERPOLATION_INJECTION_SEQUENCE = /#{L_INTERPOLATION_INJECTION}|#{R_INTERPOLATION_INJECTION}/

    private_constant :L_INTERPOLATION_INJECTION
    private_constant :R_INTERPOLATION_INJECTION
    private_constant :INTERPOLATION_INJECTION_SEQUENCE

    def self.escape(value)
      value.gsub(INTERPOLATION_INJECTION_SEQUENCE) do |match|
        case match
        when L_INTERPOLATION_INJECTION then L_INTERPOLATION_INJECTION_REP
        when R_INTERPOLATION_INJECTION then R_INTERPOLATION_INJECTION_REP
        end
      end
    end
  end
end
