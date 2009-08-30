$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
require 'net/http'
require 'obey_robots_dot_txt/robots_rule'
module ObeyRobotsDotTxt ;  VERSION = '1.0.0' ; end # for hoe spec   



module Net
  

  class DisobeyingRobotsTxt < HTTPBadResponse ; end  
  def HTTP.get_obeying_robots(uri_or_host, path = nil, port = nil)
    raise DisobeyingRobotsTxt if ! robot_check?(uri_or_host)
    get_response(uri_or_host, path, port).body
  end
  
  def HTTP.robot_check?(uri_or_host, path = nil, port = nil)
    @uri = ""
    if path
           host = uri_or_host
           @uri = URI.parse("#{host}:#{port || Net::HTTP.default_port}/#{path}")
    else
           @uri = uri_or_host

    end

    location = "#{@uri.host}:#{@uri.port}"

    robot_url = "http://#{location}/robots.txt"
    res = Net::HTTP.get_response(URI.parse(robot_url))

    return true  if res.is_a? Net::HTTPNotFound
    robot_file = res.body    
    @rules = RobotRules.new("*")
    @rules.parse(robot_url, robot_file)
    @rules.allowed? @uri.to_s
  end
  
  
end





