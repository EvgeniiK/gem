module SolidusKlarnaGem
  class CompletionRoute
    require_relative 'payment_system_redirect'
    class << self

      @@payments ||= []

      def config(url, should_redirect=nil, &block)
        @@payments << PaymentSystemRedirect.new(url, should_redirect, &block)
      end

      def path(order)
        @@payments.each do |psr|
          url = psr.url(order)
          return url if url
        end
      end
    end
  end
end
