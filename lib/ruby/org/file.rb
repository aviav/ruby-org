module Org
  class File
    def self.to_json(filename)
      result = ''

      ::File.open('/org/' + filename + '.org', 'r').each do |line|
        result += ', ' unless result.blank?
        result += heading_to_json(line) if line.start_with?('* ')
      end

      '[ ' + result + ' ]'
    end

    def self.insert_heading(filename, item)
      ::File.open('/org/' + filename + '.org', 'a') do |file|
        file << item_to_heading(item)
      end
    end

    private

    def self.heading_to_json(heading)
      '{ "item": "' + heading[2..-2] + '" }'
    end

    def self.item_to_heading(item)
      '* ' + item + "\n"
    end
  end
end
