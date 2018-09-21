require 'json'

class ReportGenerator
  def self.generate(data, type)
    return "" if (data.empty? || !%w(csv, json).include?(type))

    if type == 'csv'
      result = data.keys.join(",") + "\n"
      result += data.values.join(",") + "\n"
    elsif type == 'json'
      result = data.to_json
    end

    result
  end
end
