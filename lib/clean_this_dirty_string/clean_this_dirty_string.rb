module CleanThisDirtyString
  module_function

  def clean!(string)
    chars  = replace_bad_chars(string).split('')

    result =
      chars.map do |char|
        case char
        when /[\t\n\r]/ then ' '
        when /[а-ё\d\w\s\!\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\; \< \= \> \? \@\[\\\]\^\_\`\{\|\}]/i then char
        when /[\«\»\˝\“\”\„\《\》]/ then '"'
        when /[\­\–\—\－]/ then '-'
        when /[\´]/ then '`'
        when /[\‘\’]/ then "'"
        when /[\℅]/ then '%'
        when /[\№]/ then '№'
        when /[\！]/ then '!'
        when /[\＃]/ then '#'
        when /[\（]/ then '('
        when /[\）]/ then ')'
        when /[\，]/ then ','
        when /[\；]/ then ';'
        when /[\＜]/ then '<'
        when /[\＞]/ then '>'
        when /[\ ]/ then ' '
        when /[\₽]/ then 'Р'
        else ''
        end
      end

    result.join('')
  end

  def diff(string)
    string.split('') - clean!(string).split('')
  end

  def replace_bad_chars(string)
    string.gsub('й', 'й')
  end
end
