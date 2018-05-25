# ======================================= #
# Script code (do not modify) #
# ======================================= #

class RemoveLineItemsCityCampaign
  def initialize(vendors, city)
    @vendors = vendors.map(&:downcase)
    @city = city.map(&:downcase)
  end

  def run(cart)
    return if cart.nil? || !@city.include?(cart.shipping_address.city.downcase)
    cart.line_items.delete_if { |item| @vendors.include?(item.variant.product.vendor.downcase) }
  end
end

# ========================= #
# Settings - Modify #
# ========================= #

# # Set which vendors have restricted shipping cities
# # Products with this vendor will be automatically removed if
# # a restricted shipping address is selected during checkout:

VENDOR_NOOP_1 = ['JordansAwesomeBrand', 'Example2']
NOOP_1 = ['Huntsville', 'Phoenix', 'Los Angeles', 'Beverly Hills', 'Orlando', 'Atlanta']

VENDOR_NOOP_2 = ['Example1']
NOOP_2 = ['Boston', 'Portland']

# Add each
CAMPAIGNS = [
RemoveLineItemsCityCampaign.new(VENDOR_NOOP_1, NOOP_1)
RemoveLineItemsCityCampaign.new(VENDOR_NOOP_2, NOOP_2)
]

# ======================================= #
# Script code (do not modify) #
# ======================================= #

CAMPAIGNS.each do |campaign|
 campaign.run(Input.cart)
end

Output.cart = Input.cart
