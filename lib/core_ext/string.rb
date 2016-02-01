#
# Extends the String core class to add functionality
#
class ::String
   #
   # Converts an string to a bool value
   # 
   def to_bool
     return true if self == true || self =~ (/(true|t|yes|y|1)$/i)
     return false if self == false || self.empty? || self =~ (/(false|f|no|n|0)$/i)
     return false
   end

UNACCENT_HASH = {
		'A'		=> 'ÀÁÂÃÄÅĀĂǍẠẢẤẦẨẪẬẮẰẲẴẶǺĄ',
		'a'		=> 'àáâãäåāăǎạảấầẩẫậắằẳẵặǻą',
		'C'		=> 'ÇĆĈĊČ',
		'c'		=> 'çćĉċč',
		'D'		=> 'ÐĎĐ',
		'd'		=> 'ďđ',
		'E'		=> 'ÈÉÊËĒĔĖĘĚẸẺẼẾỀỂỄỆ',
		'e'		=> 'èéêëēĕėęěẹẻẽếềểễệ',
		'G'		=> 'ĜĞĠĢ',
		'g'		=> 'ĝğġģ',
		'H'		=> 'ĤĦ',
		'h'		=> 'ĥħ',
		'I'		=> 'ÌÍÎÏĨĪĬĮİǏỈỊ',
		'J'		=> 'Ĵ',
		'j'		=> 'ĵ',
		'K'		=> 'Ķ',
		'k'		=> 'ķ',
		'L'		=> 'ĹĻĽĿŁ',
		'l'		=> 'ĺļľŀł',
		'N'		=> 'ÑŃŅŇ',
		'n'		=> 'ñńņňŉ',
		'O'		=> 'ÒÓÔÕÖØŌŎŐƠǑǾỌỎỐỒỔỖỘỚỜỞỠỢ',
		'o'		=> 'òóôõöøōŏőơǒǿọỏốồổỗộớờởỡợð',
		'R'		=> 'ŔŖŘ',
		'r'		=> 'ŕŗř',
		'S'		=> 'ŚŜŞŠ',
		's'		=> 'śŝşš',
		'T'		=> 'ŢŤŦ',
		't'		=> 'ţťŧ',
		'U'		=> 'ÙÚÛÜŨŪŬŮŰŲƯǓǕǗǙǛỤỦỨỪỬỮỰ',
		'u'		=> 'ùúûüũūŭůűųưǔǖǘǚǜụủứừửữự',
		'W'		=> 'ŴẀẂẄ',
		'w'		=> 'ŵẁẃẅ',
		'Y'		=> 'ÝŶŸỲỸỶỴ',
		'y'		=> 'ýÿŷỹỵỷỳ',
		'Z'		=> 'ŹŻŽ',
		'z'		=> 'źżž',
		# Ligatures
		'AE'		=> 'Æ',
		'ae'		=> 'æ',
		'OE'		=> 'Œ',
		'oe'		=> 'œ'
  }
  def unaccent
    _str = self.clone
    UNACCENT_HASH.each do |k, v|
      _str.gsub!(/[#{v}]/, k)
    end
    _str
  end

end        
