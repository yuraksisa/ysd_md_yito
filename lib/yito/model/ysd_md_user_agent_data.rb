require 'useragent' unless defined?UserAgent
module Yito
  module Model
    module UserAgentData
      def self.included(model)
        model.property :user_agent_browser, String, :field => 'user_agent_browser', :length => 255
        model.property :user_agent_version, String, :field => 'user_agent_version', :length => 255
        model.property :user_agent_platform, String, :field => 'user_agent_platform', :length => 255
        
      end
      def init_user_agent_data(data)
      	if user_agent = UserAgent.parse(data)
          self.user_agent_browser = user_agent.browser 
          self.user_agent_version = user_agent.version
          self.user_agent_platform = user_agent.platform
        end
      end
    end
  end
end