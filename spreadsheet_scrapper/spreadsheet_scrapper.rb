require "google_drive"


class Spreadsheet

  def initialize
  end

  def write(hash)
  session = GoogleDrive::Session.from_config("config.json")
  ws = session.spreadsheet_by_key("1MSf9hQ9RgzZ-6_ioP0w45BH0wdM1exx1TKg8XJcoRAs").worksheets[0]

# Changes content of cells.
# Changes are not sent to the server until you call ws.save().
  b = 1
  hash.each do |k, v|
    ws[b, 1] = k
    ws[b, 2] = v
    ws.save
    b += 1
    end
  end


# Gets content of A2 cell.
  # p ws[2, 1]  #==> "hoge"


# Dumps all cells.
  #(1..ws.num_rows).each do |row|
    #(1..ws.num_cols).each do |col|
      #p ws[row, col]
  #  end
  # end

# Yet another way to do so.
  # p ws.rows  #==> [["fuga", ""], ["foo", "bar]]

# Reloads the worksheet to get changes by other clients.
  # ws.reload

end
