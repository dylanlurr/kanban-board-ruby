puts "Clearing existing data..."
ProductionTask.destroy_all
VideoProject.destroy_all

puts "Creating video project..."
project = VideoProject.create!(
  title: "Wireless Mouse Review",
  status: "Editing",
  category: "Teknis",
  target_date: 7.days.from_now
)

puts "Creating tasks..."
tasks_data = [
  { description: "Sync A-roll and screen capture", completed: true },
  { description: "Isolate voice", completed: false },
  { description: "Reduce background noise", completed: false },
  { description: "Normalize loudness", completed: false },
  { description: "Add text overlays for Kelebihan dan kekurangan", completed: false }
]

tasks_data.each do |task|
  project.production_tasks.create!(task)
end

puts "Database seeded successfully!"
