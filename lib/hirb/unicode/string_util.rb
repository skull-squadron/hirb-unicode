module Hirb
  module Unicode
    module StringUtil
      def size(string)
        string.display_width
      end

      def slice(string, offset, width)
        chars = string.chars.to_a[offset..-1].to_a

        current_length = 0
        split_index = 0
        chars.each_with_index do |c, i|
          char_width = self.size(c)
          break if current_length + char_width > width
          split_index = i+1
          current_length += char_width
        end

        chars[0, split_index || chars.count].join
      end

      def pad(string, desired_width)
        n = desired_width - size(string)
        ' ' * n.clamp(0..)
      end

      def ljust(string, desired_width)
        string + pad(string, desired_width)
      end

      def rjust(string, desired_width)
        pad(string, desired_width) + string
      end
    end
  end
end

Hirb::String.extend(Hirb::Unicode::StringUtil)
