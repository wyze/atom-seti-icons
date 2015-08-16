module.exports =
  config:
    noColor:
      type: 'boolean'
      default: false
      description: 'Display icons without color.'

  activate: ( state ) ->
    atom.config.onDidChange 'seti-icons-dev.noColor', ({ newValue }) =>
      @noColor newValue

    @noColor atom.config.get 'seti-icons-dev.noColor'

  noColor: ( enable ) ->
    body = document.querySelector 'body'

    if enable
      body.className = "#{body.className} seti-icons-no-color"
    else
      body.className = body.className.replace ' seti-icons-no-color', ''
