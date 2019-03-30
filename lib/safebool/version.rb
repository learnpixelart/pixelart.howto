# encoding: utf-8


###
# note: do not "pollute" Safe/SafeBool namespace / module
#  use its own module


module SaferBool

  MAJOR = 1
  MINOR = 0
  PATCH = 0
  VERSION = [MAJOR,MINOR,PATCH].join('.')

  def self.version
    VERSION
  end

  def self.banner
    "safebool/#{VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
  end

  def self.root
    "#{File.expand_path( File.dirname(File.dirname(File.dirname(__FILE__))) )}"
  end

end # module SaferBool
