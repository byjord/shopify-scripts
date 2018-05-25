# Conditionally Remove Vendors from the Cart with Buyer Province
For reasons that are not discussed in this document some vendors demand that products not be shipped to certain countries. How can you make that happen on Shopify Plus? You can use Scripts, and with this script you can remove products from the cart when they're matching a campaign defined.

### What is a Campaign
A campaign in the context of this script is a list of countries (`NOOP_${GROUP_NAME}`) of which a list of vendors (`VENDOR_NOOP_${GROUP_NAME}`) cannot be shipped to.

### Getting Started
Remove the example settings (lines 20-37) from `script.rb`.
