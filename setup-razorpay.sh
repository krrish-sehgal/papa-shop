#!/bin/bash

echo "🔑 Setting up Razorpay API Keys for Vercel"
echo ""
echo "You'll be prompted to enter your Razorpay credentials."
echo "Get them from: https://dashboard.razorpay.com/app/keys"
echo ""

# Add RAZORPAY_KEY_ID
echo "📝 Adding RAZORPAY_KEY_ID..."
npx vercel env add RAZORPAY_KEY_ID production

# Add RAZORPAY_KEY_SECRET
echo ""
echo "📝 Adding RAZORPAY_KEY_SECRET..."
npx vercel env add RAZORPAY_KEY_SECRET production

# Also add to preview and development
echo ""
echo "📝 Adding to Preview environment..."
npx vercel env add RAZORPAY_KEY_ID preview
npx vercel env add RAZORPAY_KEY_SECRET preview

echo ""
echo "📝 Adding to Development environment..."
npx vercel env add RAZORPAY_KEY_ID development
npx vercel env add RAZORPAY_KEY_SECRET development

echo ""
echo "✅ Done! Your Razorpay keys have been added."
echo ""
echo "🚀 Next steps:"
echo "1. Redeploy your site: npx vercel --prod"
echo "2. Test with the ₹1 test product on your website"
echo "3. Configure webhook URL in Razorpay dashboard:"
echo "   https://sehgal-store.vercel.app/api/razorpay/webhook"

