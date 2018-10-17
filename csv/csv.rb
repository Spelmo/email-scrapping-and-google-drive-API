require "google_drive"


class Csv

  def initialize
  end

  def convert()
    session = GoogleDrive::Session.from_config("config.json")
  #  ws = session.spreadsheet_by_key("1MSf9hQ9RgzZ-6_ioP0w45BH0wdM1exx1TKg8XJcoRAs").worksheets[0]
  #  ws.download_to_file("/USers/marie-charlotte/Documents/Code/The_Hacking_Project/Semaine_3/day3_Google_drive_JSon/JSON_Scrapper/db/emails.csv")

  file = session.file_by_title("THP")
  file.export_as_file("/USers/marie-charlotte/Documents/Code/The_Hacking_Project/Semaine_3/day3_Google_drive_JSon/JSON_Scrapper/db/emails.csv")

  end

end
