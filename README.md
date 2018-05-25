# Shopify Scripts

Shopify Scripts are customizations written in Ruby that allow you to create personalized customer experiences. Using line item, shipping, and payment scripts you can implement custom logic and tailor the user experience during a customer’s checkout journey. Scripts are enabled on a store’s checkout by using the [Script Editor](https://help.shopify.com/manual/apps/apps-by-shopify/script-editor) app.

_This repository is administered by Shopify for the purposes of collaboration among our community of merchants and partners. However, scripts submitted are not vetted or supported by Shopify or your Merchant Success Manager. Equally, while we do not guarantee support for scripts from the original contributor, please get in touch with them in the first instance with any issues or questions._

Read the [License for more information](https://github.com/Shopify/shopify-scripts/blob/master/LICENSE.md).

## Using this Repo
Within this repo you can:

### 1. Use examples as a template to build your own scripts
Scripts are organized into 3 categories within the repository:
- Line Item
- Shipping
- Payment

When searching for a script to use, first open the relevant folder for the script type you are looking for. The `README.md` file will contain all the information about what the script does. The script file will be <scriptname.rb> - this is the file you will open and add into the [Script Editor App](https://help.shopify.com/manual/apps/apps-by-shopify/script-editor) on your store.

### 2. Submit a script to the community
When submitting a script:
- Ensure you are submitting your script within the relevant folder
- Create a new folder for your script and name it appropriately
- Include a README.md file explaining what the script does and any other appropriate information using [this format](https://github.com/Shopify/shopify-scripts/blob/master/CONTRIBUTING.md).
- Include your script as a <scriptname>.rb file
- Submit a Pull Request to have your script added to the repository

## Script Creation Tools
There are tools out in the wild that aid in the creation of scripts based on plug and play variables. [Jason Godson](https://github.com/jgodson) has created a [Shopify Script Creator](https://jgodson.github.io/shopify-script-creator/) where you can generate scripts and manually paste them into your store. There are also tools like [Disco Labs Playwright](https://playwright.discolabs.com/) that can be integrated into your store as an app.
