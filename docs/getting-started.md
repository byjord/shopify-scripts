## How they work
Shopify Scripts are written in a stripped-down version of Ruby, and work by receiving an “input” of the cart, customer, and shipping methods or payment gateways, run the script code to perform modifications, and then return the result as an “output” which is then applied to the cart or checkout. The [Script Editor app](https://help.shopify.com/manual/apps/apps-by-shopify/script-editor) hosts scripts you’ve created on Shopify’s servers, allowing them to affect the cart and checkout at a fundamental level without the need of third-party apps or externally hosted plugins.

There are three different types of Shopify Scripts:

1. Line item scripts affect line items in the cart and can change prices and grant discounts. Note: Theme modifications may be required to the show the discount amount or messages in the cart and checkout.
2. Shipping scripts interact with shipping, and can rename, show, hide, or reorder shipping methods and grant discounts on shipping rates.
3. Payment scripts interact with payments, and can rename, show, hide, or reorder payment gateways.

_**Note:** payment scripts do not interact with payment gateways shown before the checkout._
