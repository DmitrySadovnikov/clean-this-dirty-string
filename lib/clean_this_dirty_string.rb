module CleanThisDirtyString
  module_function

  def clean!(string)
    chars  = string.split('')

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
        else ''
        end
      end

    result.join('')
  end
end
