# Shopify Scripts

Shopify Scripts are small pieces of code that allow you to create personalized experiences for your online store customers in their cart and at checkout.

Scripts are maintained, edited and published on a store by using the [Script Editor](https://help.shopify.com/manual/apps/apps-by-shopify/script-editor).

---

**Warning**: Shopify Gurus & Plus Success Managers do not support Scripts, they are a Plus only feature that are intended to provide extended functionality, and should only be implemented and/or altered by professional developers. If you are a Plus Merchant please contact your MSM and ask for an introduction to a partner.

---

### Line Item

#### Percentage Off

1. [No condition global discount](/Line-Item/global-discount)
2. [First time buyers](/Line-Item/first-time-buyer)
3. [Accepted marketing, next purchase discount](/Line-Item/accepted-marketing-next-purchase)
4. [Least expensive item](/Line-Item/least-expensive-item)
5. [Remove VAT for buyers outside of the EU](/Line-Item/remove-vat-outside-eu)

#### Free X

1. [Free gift](/Line-Item/free-gift)
2. [BOGO](/Line-Item/bogo)

#### Restricted products

1. [Restrict products by vendor and country](/Line-Item/conditional-remove-by-vendor-and-country)
2. [Restrict products by vendor and province](/Line-Item/conditional-remove-by-vendor-and-province)
3. [Restrict products by vendor and city](/Line-Item/conditional-remove-by-vendor-and-city)

#### Misc

1. [Discount for buyers with tag](/Line-Item/block-code)
2. [Free shipping for buyer with tag](/Line-Item/free-shipping-with-tag)
3. [Block discount code](/Line-Item/block-code)
4. [Tiered by spending threshold](/Line-Item/tiered-by-spending-threshold)
5. [Tiered bulk buy](/Line-Item/tiered-bulk-buy)

### Payment

1. TODO

### Shipping

1. TODO

---

Shopify Scripts were developed with a pattern for structuring code in a reusable way; breaking down the application of script logic into Selectors, Partitioners, Discounts, and Campaigns: 

### 1. Selectors
Objects that identify the line items, shipping rates, or payment gateways that are of interest to your script. For example, a PriceSelector would select line items based on their price, and a TagSelector would select line items based on a product’s tags.

### 2. Partitioners
Objects that can “split up” line items, shipping rates, or payment gateways based on your script’s needs. For example, if you’re writing a “buy 2, get 1 free” line item script, you can have an InterleavedPartitioner — this splits a line item with a product quantity of 3 into 2 separate line items, with quantities of 2 and 1. Your 100% discount could then be applied to that second line item.

### 3. Discounts 
Objects that take the line items or shipping rates identified by your selectors and partitioners to apply a discount. You can have a PercentageDiscount applying a percentage off a particular item or shipping rate, or a MoneyDiscount to reduce the price by a fixed amount.

### 4. Campaigns
The campaign object is the “container” for a specific promotion or discount you want to run. A campaign can be started with one or more selectors, partitioners, and discount objects that work together to implement the overall logic. One Shopify Script can have multiple campaigns running at the same time.
