# SHYVON — PREMIUM SRI LANKAN NATURAL FOODS
> Pure • Healthy • Delicious | Full-Stack Luxury E-Commerce Platform

---

## 🌿 Welcome to SHYVON

**SHYVON** is an elite, full-stack, production-ready e-commerce platform built for a luxury Sri Lankan organic natural foods brand, specializing in authentic dried botanicals, blue lotus petals, and wellness infusions.

### 🌟 Brand Identity & Aesthetic
* **Color Palette**: 
  * Primary Luxury Background: `#080D19`
  * Card Surface: `#101827`
  * Imperial Gold: `#D9AD45`
  * Light Shimmer Gold: `#F6D989`
  * Muted Text: `#B9B9B9`
* **Typography**: Elegant Classical Serif (`Cinzel` & `Playfair Display`) paired with clean modern `Inter`.
* **Experience**: Three.js floating golden particles and botanical petals, subtle glassmorphism, responsive mobile drawers, dynamic database catalog, printable tax invoices, WhatsApp integration, and QR code generation.

---

## 🚀 Quick Start (Local Windows PC)

The entire application runs locally on your Windows PC without needing external online dependencies.

### Option 1: One-Click Automation Scripts

In the root folder (`c:\Users\Deshan\Desktop\webshove\SHYVON-WEBSITE`), you will find 3 automation scripts:

1. **`INSTALL-SHYVON.bat`**  
   Checks Node.js, installs all dependencies, configures `.env`, initializes the SQLite database (`prisma/dev.db`), and seeds the initial **Organic Dried Blue Lotus Petals (50g)** product.
   
2. **`START-SHYVON.bat`**  
   Starts the local server and displays the storefront and admin dashboard URLs.
   
3. **`STOP-SHYVON.bat`**  
   Safely shuts down the local server on port 3000 while preserving all database records, orders, and uploaded images.

---

### Option 2: Command Line Execution

```bash
# 1. Navigate to the project directory
cd c:\Users\Deshan\Desktop\webshove\SHYVON-WEBSITE

# 2. Install dependencies
npm install

# 3. Initialize and seed the local database
npx prisma generate
npx prisma db push
node prisma/seed.js

# 4. Start the local server
npm run dev
```

---

## 🌐 Local Website URLs & Credentials

* **Customer Storefront**: [http://localhost:3000](http://localhost:3000)
* **Admin Dashboard**: [http://localhost:3000/admin](http://localhost:3000/admin)
* **Default Admin Email**: `admin@shyvon.com`
* **Development Passkey**: `shyvon2026`

---

## 🛠️ Complete Feature Walkthrough

### 1. Customer Experience
* **Homepage**: Interactive 3D Hero canvas with floating blue lotus petals and golden particles, Signature Blue Lotus Showcase, "Nature's Healing Touch" botanical wellness breakdown, "Why Choose SHYVON" values, and customer reviews.
* **Shop & Filtering**: Real-time category filtering (Herbal Teas, Dried Flowers, Wellness), price sorting, availability checks, and search.
* **Product Details**: Multi-image zoom gallery, stock availability, quantity picker, detailed tabs for Ingredients, Ayurvedic Benefits, Brewing & Usage instructions, Storage instructions, Manufacturing info, and Customer Reviews.
* **Direct WhatsApp Order**: Pre-formatted Click-to-Chat message containing product name, weight, quantity, and total.
* **Animated Shopping Cart**: Persistent across page refreshes via LocalStorage, slide-over drawer, free shipping progress bar, and instant quantity controls.
* **Checkout**: Full Name, Mobile, WhatsApp, Delivery Address, City, Order Notes, and choice of **Cash on Delivery (COD)** or **Bank Transfer** (with bank deposit details and payment receipt upload).
* **Tax Invoices**: Printable black and gold invoice with instant high-resolution PDF download and WhatsApp order sharing.
* **Customer Portal**: Customer registration, login, profile management, and lifetime order history.

---

### 2. Admin Management Dashboard
Accessible at `http://localhost:3000/admin`:
1. **Overview**: Real-time database metrics for Total Revenue, Total Orders, Pending Orders, Delivered Orders, Active Products, and Low Stock Alerts.
2. **Products**: Create, edit, delete products, upload multiple product images, set primary image, manage stock, ingredients, usage instructions, and benefits.
3. **Categories**: Unlimited category creation with custom slugs, display orders, and descriptions.
4. **Orders**: Full order processing pipeline (Pending → Confirmed → Processing → Shipped → Delivered → Cancelled). Click-to-chat with customer on WhatsApp and invoice printing.
5. **Inventory Control**: Real-time stock counts, low stock alerts (<10 units), manual stock adjustments (Restock, Return, Shrinkage), and permanent audit trail history.
6. **Customer CRM**: Directory of registered customers with phone, email, and order counts.
7. **Reviews Moderation**: Approve or hide customer feedback before public display.
8. **QR Code Generator**: Generates print-ready high-resolution black & gold QR codes for packaging in both PNG and SVG formats.
9. **Website Settings**: Modify brand description, contact telephone, WhatsApp number, business email, bank transfer details, delivery charges, and announcements in real-time.
10. **Admin Users**: Manage authorized administrator Gmail / email accounts.
11. **Reports**: Revenue analytics, payment method breakdown (COD vs Bank Transfer), and top performing products.

---

## 🔒 Security & Admin Authentication

### Local Development Authentication
For immediate local testing, you can sign in to the Admin Dashboard using:
* Email: `admin@shyvon.com` (or any email listed in `ADMIN_EMAILS` in `.env`)
* Passkey: `shyvon2026` (configured via `DEV_ADMIN_PIN` in `.env`)

### Configuring Google OAuth (for Production)
1. Go to the [Google Cloud Console](https://console.cloud.google.com/).
2. Create a new project named **SHYVON E-Commerce**.
3. Navigate to **APIs & Services > Credentials**.
4. Configure the **OAuth Consent Screen** (User Type: External, Application Name: SHYVON).
5. Create an **OAuth 2.0 Client ID** (Application type: Web application).
6. Under **Authorized Redirect URIs**, add:
   * Local: `http://localhost:3000/api/auth/callback/google`
   * Production: `https://your-domain.com/api/auth/callback/google`
7. Copy the **Client ID** and **Client Secret** into your `.env` file:
   ```env
   GOOGLE_CLIENT_ID="your-client-id.apps.googleusercontent.com"
   GOOGLE_CLIENT_SECRET="your-client-secret"
   ADMIN_EMAILS="your-personal-email@gmail.com,admin@shyvon.com"
   ```
8. Only email addresses explicitly listed in `ADMIN_EMAILS` will be permitted to access the admin portal.

---

## 📱 How to Replace Placeholder Contact Information

All business details can be updated directly from the **Admin Dashboard > Website Settings** ([http://localhost:3000/admin/settings](http://localhost:3000/admin/settings)):

1. **WhatsApp Number**: Enter your real Sri Lankan WhatsApp business number (e.g. `+94 77 123 4567` or `94771234567`). All customer click-to-chat links will immediately route to your number.
2. **Bank Account Details**: Enter your Bank Name (e.g., Commercial Bank, Sampath Bank, HNB), Account Name, Account Number, and Branch. Customers choosing Bank Transfer during checkout will see these details.
3. **Delivery Charges**: Update standard island-wide shipping fees and complimentary free shipping order thresholds.
4. **Corporate Email & Address**: Update your contact email and facility address.

---

## 📦 How to Add New Products & Categories

### Adding a Category:
1. Navigate to **Admin Dashboard > Categories** ([http://localhost:3000/admin/categories](http://localhost:3000/admin/categories)).
2. Click **+ Add Category**.
3. Enter Name (e.g., *Organic Spices & Infusions*), Slug, Description, and Display Order.

### Adding a Product:
1. Navigate to **Admin Dashboard > Products** ([http://localhost:3000/admin/products](http://localhost:3000/admin/products)).
2. Click **+ Add New Product**.
3. Upload images (PNG, JPG, WEBP). The first image will be set as the Primary card image.
4. Fill in Product Name, Net Weight (e.g., 50g, 100g), Regular Price (Rs.), Discount Price, and Initial Stock.
5. Add Ayurvedic Benefits and Brewing Steps using the interactive dynamic list builders.
6. Select appropriate categories and click **Save & Publish**.

---

## 🖨️ Generating Packaging QR Codes

1. Navigate to **Admin Dashboard > QR Code** ([http://localhost:3000/admin/qr](http://localhost:3000/admin/qr)).
2. When testing locally, the placeholder is set to `https://shyvon.com`.
3. Once your website is hosted on your real domain, enter your live URL (e.g., `https://www.shyvonfoods.lk`).
4. Click **Regenerate QR Code**.
5. Click **Download PNG** or **Download SVG** (vector format for commercial printing on packaging tins and boxes).

---

## 🚀 Future Hosting & Online Deployment Guide

When you are ready to launch SHYVON online:

### 1. Database (PostgreSQL / Supabase)
* Create a managed PostgreSQL database on **Supabase**, **Neon**, **Render**, or **AWS RDS**.
* In `prisma/schema.prisma`, update `provider = "sqlite"` to `provider = "postgresql"`.
* Update `DATABASE_URL` in your production environment variables to your PostgreSQL connection string:
  ```env
  DATABASE_URL="postgresql://user:password@host:5432/shyvon?sslmode=require"
  ```
* Run `npx prisma db push` and `node prisma/seed.js` to migrate schema and seed.

### 2. File Storage (Images & Payment Slips)
* The application currently stores files in `public/uploads/`.
* For scalable cloud hosting on Vercel or AWS, connect Supabase Storage or AWS S3 by updating the upload endpoint abstraction.

### 3. Web Hosting Platform
* **Vercel** (Recommended for Next.js):
  1. Push this repository to GitHub.
  2. Import repository on [Vercel](https://vercel.com).
  3. Add the environment variables from `.env.example`.
  4. Deploy!
* **Docker / VPS (Ubuntu / Windows Server)**:
  Use the included `docker-compose.yml` to launch PostgreSQL and build the Next.js container via `npm run build && npm start`.

---

## 📄 License & Corporate Heritage

**SHYVON Natural Foods**  
Manufactured & Packed by: **Shylie Global Pvt Ltd.**  
Gampaha, Sri Lanka.  
*Pure • Healthy • Delicious*
