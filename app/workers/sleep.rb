class Sleep
  include Sidekiq::Worker
  sidekiq_options({
    queue: :sleep,
    retry: false,
  })

  def perform(duration, *args)
    sleep duration.to_f
  end
end
