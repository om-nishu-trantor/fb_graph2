module FbGraph2
  class Struct
    def self.inherited(klass)
      klass.send :include, AttributeAssigner
    end

    def initialize(attributes = {})
      assign attributes if respond_to? :assign
    end
  end
end

begin
  _files_to_require = Dir[File.join(__dir__, 'struct/*.rb')]
rescue NameError => e
  _files_to_require = Dir[File.join(File.dirname(File.realpath(__FILE__)), 'struct/*.rb')]
end
_files_to_require.each do |file|
  require file
end