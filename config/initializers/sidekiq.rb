Sidekiq.configure_server do |config|
  require 'sidekiq/fetch'

  class ExitOnCompleteFetch < Sidekiq::BasicFetch
    def retrieve_work
      work = super
      if work
        work
      else
        Process.kill('TERM', $$)
        nil
      end
    end
  end

  config.redis = { namespace: 'resque' }
  config.options[:fetch] = ExitOnCompleteFetch
end

Sidekiq.configure_client do |config|
  config.redis = { namespace: 'resque' }
end
