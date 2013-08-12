class Hello
  include Sidekiq::Worker
  sidekiq_options({
    queue: :hello,
    retry: false,
  })

  def perform(*args)
    puts "Hello, world!"
  end
end
