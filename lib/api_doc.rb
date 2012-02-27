require "api_doc/version"
require "api_doc/config"
require "api_doc/engine"
require "api_doc/document"

require "bootstrap-rails"
require "jquery-rails"

module ApiDoc

  class << self

    def document(env, options = {})
      doc = ApiDoc::Document.new(env, options)
      doc.generate!
    end

  end

end