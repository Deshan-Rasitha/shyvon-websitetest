import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        shyvon: {
          dark: "#080D19",
          card: "#101827",
          surface: "#141E33",
          border: "#2A364F",
          gold: "#D9AD45",
          goldLight: "#F6D989",
          goldDark: "#9E7B28",
          muted: "#B9B9B9",
          lotus: "#6B5B95",
          lotusBlue: "#4A6FA5",
        },
      },
      fontFamily: {
        serif: ["var(--font-cinzel)", "Cinzel", "Playfair Display", "Georgia", "serif"],
        sans: ["var(--font-inter)", "Inter", "system-ui", "sans-serif"],
      },
      backgroundImage: {
        "gold-gradient": "linear-gradient(135deg, #F6D989 0%, #D9AD45 50%, #9E7B28 100%)",
        "gold-gradient-hover": "linear-gradient(135deg, #FFF3C4 0%, #E5BE58 50%, #B89233 100%)",
        "dark-gradient": "linear-gradient(180deg, #080D19 0%, #101827 100%)",
        "card-gradient": "linear-gradient(145deg, rgba(20, 30, 51, 0.7) 0%, rgba(8, 13, 25, 0.9) 100%)",
      },
      boxShadow: {
        gold: "0 0 20px -3px rgba(217, 173, 69, 0.25)",
        "gold-lg": "0 0 35px -5px rgba(217, 173, 69, 0.4)",
      },
      animation: {
        "float-slow": "float 8s ease-in-out infinite",
        "float-reverse": "floatReverse 9s ease-in-out infinite",
        "pulse-gold": "pulseGold 3s ease-in-out infinite",
        shimmer: "shimmer 2.5s infinite linear",
      },
      keyframes: {
        float: {
          "0%, 100%": { transform: "translateY(0px) rotate(0deg)" },
          "50%": { transform: "translateY(-12px) rotate(3deg)" },
        },
        floatReverse: {
          "0%, 100%": { transform: "translateY(0px) rotate(0deg)" },
          "50%": { transform: "translateY(10px) rotate(-3deg)" },
        },
        pulseGold: {
          "0%, 100%": { opacity: "0.4" },
          "50%": { opacity: "0.8" },
        },
        shimmer: {
          "0%": { backgroundPosition: "-200% 0" },
          "100%": { backgroundPosition: "200% 0" },
        },
      },
    },
  },
  plugins: [],
};
export default config;
