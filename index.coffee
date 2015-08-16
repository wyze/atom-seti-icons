module.exports =
  config:
    iconsPlus:
      type: 'boolean'
      default: false
      description: 'Use additional and enhanced icons.'
    noColor:
      type: 'boolean'
      default: false
      description: 'Display icons without color.'

  activate: ( state ) ->
    atom.config.onDidChange 'seti-icons.iconsPlus', ({ newValue }) =>
      @iconsPlus newValue

    atom.config.onDidChange 'seti-icons.noColor', ({ newValue }) =>
      @noColor newValue

    @iconsPlus atom.config.get 'seti-icons.iconsPlus'
    @noColor atom.config.get 'seti-icons.noColor'

  update: ( enable, text ) ->
    body = document.querySelector 'body'

    if enable
      body.className = "#{body.className} #{text}"
    else
      body.className = body.className.replace " #{text}", ''

  iconsPlus: ( enable ) ->
    @update enable, 'seti-icons-plus'

  noColor: ( enable ) ->
    @update enable, 'seti-icons-no-color'
