levels = %w( beginner intermediate advanced )

levels.each do |level|
  Level.create!(title: level)
end
