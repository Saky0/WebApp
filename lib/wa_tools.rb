module WaTools

  def self.call(options)
    tool = options.delete('tool').split('::')
    require_relative "../scripts/#{tool.join('/')}.rb"

    execute(options)
  end
end