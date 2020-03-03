require "open-uri"

module Nx
  class RealIp
    def get(args = { timeout: 5, proxy: nil })
      real_ip = open(
        "http://icanhazip.com/",
        read_timeout: args[:timeout],
        open_timeout: args[:timeout],
        proxy: args[:proxy],
      ).read

      real_ip.strip
    end
  end
end
