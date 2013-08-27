class Insert
  include Sidekiq::Worker
  sidekiq_options({
    queue: :insert,
    retry: false,
  })

  def perform(name, email, phone)
    Contact.create!(name: name, email: email, phone: phone)
  end
end
