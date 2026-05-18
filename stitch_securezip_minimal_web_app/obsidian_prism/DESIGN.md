---
name: Obsidian Prism
colors:
  surface: '#131313'
  surface-dim: '#131313'
  surface-bright: '#3a3939'
  surface-container-lowest: '#0e0e0e'
  surface-container-low: '#1c1b1b'
  surface-container: '#201f1f'
  surface-container-high: '#2a2a2a'
  surface-container-highest: '#353534'
  on-surface: '#e5e2e1'
  on-surface-variant: '#cbc3d7'
  inverse-surface: '#e5e2e1'
  inverse-on-surface: '#313030'
  outline: '#958ea0'
  outline-variant: '#494454'
  surface-tint: '#d0bcff'
  primary: '#d0bcff'
  on-primary: '#3c0091'
  primary-container: '#a078ff'
  on-primary-container: '#340080'
  inverse-primary: '#6d3bd7'
  secondary: '#c0c1ff'
  on-secondary: '#1000a9'
  secondary-container: '#3131c0'
  on-secondary-container: '#b0b2ff'
  tertiary: '#c3d000'
  on-tertiary: '#2f3300'
  tertiary-container: '#8e9800'
  on-tertiary-container: '#292c00'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#e9ddff'
  primary-fixed-dim: '#d0bcff'
  on-primary-fixed: '#23005c'
  on-primary-fixed-variant: '#5516be'
  secondary-fixed: '#e1e0ff'
  secondary-fixed-dim: '#c0c1ff'
  on-secondary-fixed: '#07006c'
  on-secondary-fixed-variant: '#2f2ebe'
  tertiary-fixed: '#dfed1a'
  tertiary-fixed-dim: '#c3d000'
  on-tertiary-fixed: '#1b1d00'
  on-tertiary-fixed-variant: '#454a00'
  background: '#131313'
  on-background: '#e5e2e1'
  surface-variant: '#353534'
typography:
  headline-xl:
    fontFamily: inter
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: inter
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.2'
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.2'
  body-md:
    fontFamily: inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  body-sm:
    fontFamily: inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: '1.5'
  label-mono:
    fontFamily: jetbrainsMono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.4'
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 8px
  container-max: 1200px
  gutter: 24px
  margin-desktop: 64px
  margin-mobile: 20px
---

## Brand & Style

The design system is engineered for a high-end, utility-focused SaaS experience that resonates with a tech-savvy Korean demographic in their 20s. The brand personality is defined by **precision, transparency, and effortless security.** It avoids the clutter of traditional security software, opting instead for a "Zen-like" technical aesthetic.

The visual direction combines **Minimalism** with sophisticated **Glassmorphism**. By utilizing deep blacks and subtle grain textures, the design system creates a sense of physical depth. The interface feels like a premium piece of hardware—tactile yet digital—emphasizing speed and modern engineering. Micro-interactions should be snappy and purposeful, reflecting the efficiency of the underlying technology.

## Colors

This design system utilizes a "Void and Neon" strategy. The primary canvas is a near-absolute black (`#0a0a0a`), which provides the necessary contrast for the vibrant gradient accents. 

- **Primary & Secondary:** An electric gradient moving from Indigo (`#6366f1`) to Violet (`#8b5cf6`). This is used for primary actions, progress indicators, and brand-heavy elements.
- **Tertiary:** A high-visibility Lemon-Lime (`#E4F222`) reserved for critical alerts or "Success" states to provide a sharp, unexpected break from the cool-toned palette.
- **Neutrals:** Grays are kept to a minimum, using low-opacity whites (e.g., `rgba(255, 255, 255, 0.1)`) for borders to maintain the glassmorphic effect without muddying the dark background.

## Typography

The typography strategy prioritizes legibility and a "developer-tool" chic. 

- **Inter** is the workhorse for the majority of the UI. For the Korean language, ensure that the font weight is slightly heavier than the Latin equivalent to maintain visual hierarchy, and reduce the default line-height slightly to accommodate the denser character blocks of Hangul.
- **JetBrains Mono** (substituted for Berkeley Mono) is utilized for technical metadata, file paths, encryption keys, and labels. It injects a sense of "under-the-hood" transparency.
- **Headings** should be bold and tight, using negative letter spacing to create a high-impact, editorial look against the dark background.

## Layout & Spacing

The layout follows a **fluid 12-column grid** for desktop and a **single-column vertical stack** for mobile. The spacing rhythm is strictly based on an 8px base unit.

- **Generous Margins:** High-end SaaS aesthetics rely on "breathing room." Wide margins (64px+) on desktop focus the user's eye on the central utility.
- **Sectioning:** Use whitespace instead of heavy lines to separate content blocks. 
- **Mobile Adaptivity:** On mobile, margins tighten significantly (20px), and complex multi-column data views should transition into simplified cards with horizontal scrolling for technical details.

## Elevation & Depth

Depth in this design system is achieved through light and transparency rather than traditional shadows.

- **Backdrop Blurs:** All elevated containers (modals, cards, navigation bars) must use a `backdrop-filter: blur(20px)` and a semi-transparent background color (`rgba(10, 10, 10, 0.7)`).
- **Subtle Borders:** Elements are defined by 1px solid borders with low opacity. Use a "light source" metaphor: top borders can be slightly brighter (`white/15%`) than side or bottom borders.
- **Grain Texture:** A global, low-opacity noise overlay (approx 3% opacity) should be applied to the background to eliminate color banding and give the UI a premium, cinematic texture.
- **Outer Glow:** Interactive elements like active buttons can emit a subtle, diffused glow using the primary gradient colors.

## Shapes

The shape language balances modern software aesthetics with industrial precision. 

- **Base Radius:** A standard radius of `0.5rem` (8px) is applied to all standard components (buttons, inputs).
- **Large Components:** Cards and main containers use `1rem` (16px) to appear more distinct and "held."
- **Interactive States:** When hovered, interactive elements may slightly increase their roundedness or scale by 1-2% to provide tactile feedback without breaking the grid.

## Components

- **Buttons:** The primary button features a linear gradient background (`#6366f1` to `#8b5cf6`). Secondary buttons should be "Ghost" style with a 1px white/10% border that brightens on hover.
- **Inputs:** Fields are dark and recessed. The focus state should not just change the border color, but add a 2px outer glow in the primary violet hue.
- **Cards:** Utilize the glassmorphism rules. Cards should not have shadows; instead, use a 1px border that is slightly lighter than the background.
- **Chips/Status:** Use monospaced font (`label-mono`) for status chips. Security status (e.g., "Encrypted") should use a subtle pulse animation.
- **Korean Specifics:** Ensure all buttons and labels have sufficient vertical padding to prevent Hangul characters with complex strokes (like 'ㅎ' or 'ㄹ') from appearing cramped.
- **Micro-interactions:** Implement a "shimmer" effect on the primary gradient buttons upon page load to draw attention to the main call-to-action.