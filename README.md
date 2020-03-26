# ActiveMerchant Views

**Features:**

 - Load payment processing views directly from payment gateway service provider to remain PCI compliant. 
 - I18n support

**Installation:**

Make sure ActiveMerchant gem is added to your Gemfile.

    gem 'activemerchant'

Add this line to your application's Gemfile:

    gem  'active-merchant-views', git: 'https://github.com/abhi4nfp/active_merchant_views'

And then execute:
```
$ bundle install
```

**Customizing Views:**

    rails g active_merchant:views:active_merchant_templates 

**Example usage in Rails views:**

 - ERB: `<%= render_am_views  payment_gateway:  :stripe, meta: {} %>`
 - HAML: `= render_am_views  payment_gateway:  :stripe, meta: {}`

**Contributing;**
1.  Fork the repo.
2.  Create your feature branch (`git checkout -b my-new-feature`)
3.  Commit your changes (`git commit -am 'Add some feature'`)
4.  Push to the branch (`git push origin my-new-feature`)
5.  Create a new Pull Request

