# For each payment system that uses redirection before completion
class PaymentSystemRedirect
  def initialize(url, should_redirect, &block)
    @url = url
    @should_redirect = should_redirect
    @block = block
  end

  def url(order)
    order.send(@url) if should_redirect?(order) || @block.try(:call, order)
  end

  def should_redirect?(order)
    order.send(@should_redirect) if @should_redirect.present?
  end
end
