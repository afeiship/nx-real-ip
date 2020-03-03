require "open-uri"

RE_IP_ADDRESS = /\b\d+\.\d+\.\d+\.\d+\b/

module Nx
  class RealIp
    def self.get(args = { timeout: 5, proxy: nil })
      begin
        real_ip = open(
          "http://icanhazip.com/",
          read_timeout: args[:timeout],
          open_timeout: args[:timeout],
          proxy: args[:proxy],
        ).read

        if RE_IP_ADDRESS.match? real_ip
          return real_ip.strip
        else
          nil
        end
      rescue Exception => e
      end
      nil
    end
  end
end
