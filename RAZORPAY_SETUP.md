# Razorpay Setup Guide

## ✅ Test Product Added
A ₹1 test product has been added to your store for easy testing.

## 🔑 Setting Up Your Razorpay API Keys

### Option 1: Using the Setup Script (Recommended)
```bash
./setup-razorpay.sh
```

### Option 2: Manual Setup via Vercel CLI

Run these commands and enter your keys when prompted:

```bash
# Production environment
npx vercel env add RAZORPAY_KEY_ID production
npx vercel env add RAZORPAY_KEY_SECRET production

# Preview environment (for pull requests)
npx vercel env add RAZORPAY_KEY_ID preview
npx vercel env add RAZORPAY_KEY_SECRET preview

# Development environment
npx vercel env add RAZORPAY_KEY_ID development
npx vercel env add RAZORPAY_KEY_SECRET development
```

### Option 3: Via Vercel Dashboard
1. Go to: https://vercel.com/krrish-sehgals-projects/sehgal-store/settings/environment-variables
2. Add:
   - `RAZORPAY_KEY_ID` = Your Razorpay Key ID
   - `RAZORPAY_KEY_SECRET` = Your Razorpay Key Secret
3. Select environments: Production, Preview, Development
4. Save

## 📍 Where to Find Your Razorpay Keys

1. Go to: https://dashboard.razorpay.com/app/keys
2. Copy your **Key ID** and **Key Secret**
3. Use these in the setup above

## 🚀 After Adding Keys

1. **Redeploy your site:**
   ```bash
   npx vercel --prod
   ```

2. **Test the payment:**
   - Go to https://sehgal-store.vercel.app
   - Add the "Test Product (₹1)" to cart
   - Complete checkout
   - Use Razorpay test cards or your real payment method

## 🔔 Webhook Configuration

Configure your webhook in Razorpay Dashboard:

1. Go to: https://dashboard.razorpay.com/app/webhooks
2. Add webhook URL: `https://sehgal-store.vercel.app/api/razorpay/webhook`
3. Select events:
   - `payment.captured`
   - `payment.failed`
   - `order.paid`
   - `refund.created` (optional)

## ✅ Verification Checklist

- [ ] Razorpay keys added to Vercel
- [ ] Site redeployed after adding keys
- [ ] Test product (₹1) visible on website
- [ ] Payment flow working
- [ ] Webhook configured in Razorpay dashboard
- [ ] Payment verification working

## 🧪 Test Cards (if using test mode)

- **Success:** 4111 1111 1111 1111
- **Failure:** 4000 0000 0000 0002
- **CVV:** Any 3 digits
- **Expiry:** Any future date

## 📞 Support

If you face any issues:
- Check Vercel deployment logs
- Verify environment variables are set
- Check Razorpay dashboard for payment logs
- Ensure webhook URL is correct

