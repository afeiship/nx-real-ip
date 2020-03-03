require "open-uri"

RE_IP_ADDRESS = /\b\d+\.\d+\.\d+\.\d+\b/

module Nx
  class RealIp
    def self.get(args = { timeout: 5, proxy: nil })
      real_ip = open(
        "http://icanhazip.com/",
        read_timeout: args[:timeout],
        open_timeout: args[:timeout],
        proxy: args[:proxy],
      ).read

      if RE_IP_ADDRESS.match? real_ip
        real_ip.strip
      else
        nil
      end
    end
  end
end
