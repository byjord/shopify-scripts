# Conditionally Remove Vendors from the Cart with Buyer City
For reasons that are not discussed in this document some vendors demand that products not be shipped to certain cities. How can you make that happen on Shopify Plus? You can use Scripts, and with this script you can remove products from the cart when they're matching a campaign defined.

### What is a Campaign
A campaign in the context of this script is a list of countries (`NOOP_${GROUP_NAME}`) of which a list of vendors (`VENDOR_NOOP_${GROUP_NAME}`) cannot be shipped to.

### Getting Started
Remove the example settings (lines 20-35) from `script.rb`.
