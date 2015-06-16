require "locales_admin/engine"
require "jquery-rails"

module LocalesAdmin
  class << self
    attr_accessor :username
    attr_accessor :password
  end

  def self.setup(&block)
    yield self
  end
end
