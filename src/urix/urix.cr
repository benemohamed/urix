#  Author: benemohamed
#  Date: 2020-04-24 23:00:14
#  Makes Windows-style paths friendly
module Urix
  class Urix
    #
    # Convert
    #
    # ```
    # urix("a\\b\\c")
    # # a/b/c
    # ```
    def self.urix(path)
      if /\\/.match(path) != nil
        # path.squeeze("\\", "//")
        return path.gsub(/\\/, '/').gsub(/^[a-z-A-Z]:\/?/, '/')
      else
        return path.gsub(/^[a-z-A-Z]:\/?/, '/')
      end
    end
  end
end
