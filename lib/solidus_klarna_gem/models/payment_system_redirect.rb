# For each payment system that uses redirection before completion
class PaymentSystemRedirect
  def initialize(url, should_redirect=nil, &block)
    @url = url
    @should_redirect = should_redirect
    @block = block
  end

  def url(order=nil)
    @url if @should_redirect || @block.try(:call, order)
  end
end
