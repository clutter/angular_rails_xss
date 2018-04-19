require 'spec_helper'

RSpec.describe AngularRailsXSS do
  describe '.prepended' do
    it 'modifies CGI.escapeHTML to work with angular' do
      escaped = CGI.escapeHTML('{{2+3}}')
      expect(escaped).to eql('{{ $root.DOUBLE_L_CURLY_BRACE }}2+3{{ $root.DOUBLE_R_CURLY_BRACE }}')
    end

    it 'also does the normal CGI.escapeHTML to work with other escapes' do
      escaped = CGI.escapeHTML('<script>2+3</script>')
      expect(escaped).to eql('&lt;script&gt;2+3&lt;/script&gt;')
    end
  end
end
