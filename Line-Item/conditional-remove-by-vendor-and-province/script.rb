# ======================================= #
# Script code (do not modify) #
# ======================================= #

class RemoveLineItemsProvinceCampaign
  def initialize(vendors, province)
    @vendors = vendors.map(&:downcase)
    @province = province.map(&:downcase)
  end

  def run(cart)
    return if cart.nil? || !@countries.include?(cart.shipping_address.province_code.downcase)
    cart.line_items.delete_if { |item| @vendors.include?(item.variant.product.vendor.downcase) }
  end
end

# ========================= #
# Settings - Modify #
# ========================= #

# # Set which vendors have restricted shipping countries
# # Products with this vendor will be automatically removed if
# # a restricted shipping address is selected during checkout:

# Campaign 1: Exclude from shipping to Alabama, Alaska, Arizona
VENDOR_NOOP_1 = ['JordansAwesomeBrand', 'Example2']
NOOP_1 = ['AB', 'AK', 'AZ']

# Campaign 2: Exclude from shipping to Northwest Territories & Nova Scotia
VENDOR_NOOP_2 = ['Example1']
NOOP_2 = ['NS', 'NT']

# Add each
CAMPAIGNS = [
RemoveLineItemsProvinceCampaign.new(VENDOR_NOOP_1, NOOP_1)
RemoveLineItemsProvinceCampaign.new(VENDOR_NOOP_2, NOOP_2)
]

# ======================================= #
# Script code (do not modify) #
# ======================================= #

CAMPAIGNS.each do |campaign|
 campaign.run(Input.cart)
end

Output.cart = Input.cart
