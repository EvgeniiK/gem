module SolidusKlarnaGem
  module CheckoutController
    private def completion_route
      path = CompletionRoute.path(@order)
      path.present? ? path : super
    end
  end
end
