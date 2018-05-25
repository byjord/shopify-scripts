# Noteworthy Limitations

- Only 1 script of each type can be published at a time.
- Script types (line item, shipping, payments) are tightly scoped which means variable availability can be an issue. For example, a customers chosen shipping method isn’t available in a payment script.
- This tight scoping also results in the following common issues:  
   - No access to metafields  
   - No access to the collection(s) a product belongs to  
   - No access to cart/checkout attributes
- Regular expression pattern matching is not available in scripts which makes pattern matching a challenge. Date and time is also not available.
- Shopify Scripts have memory, CPU, and character [limitations](https://help.shopify.com/manual/apps/apps-by-shopify/script-editor/limitations) imposed for security and performance reasons.
- Scripts are limited to the Online Store channel only:  
   - Scripts are not supported and do not fire in the [wholesale channel](https://help.shopify.com/manual/sell-online/wholesale) checkout  
   - Scripts do not fire when used in conjunction with the Buy Button  
   - Scripts do not fire when sending a draft order invoice to a customer  
   - Note: Scripts DO fire if using checkout permalink
- Scripts cannot display messaging in the checkout without modifications to checkout.liquid
- Theme modifications are required to show the discount off of the original price and any messages in the cart
