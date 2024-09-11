---
slug: "/first-contentful-paint"
pubDate: "2024-09-11"
title: "Sustainability in Web Development: The Critical Role of Optimizing First Paint"
tags: ["tech", "green code"]
description: "Learn how optimizing First Contentful Paint (FCP) can improve both website performance and sustainability. Discover practical strategies to speed up page loads, reduce energy consumption, and enhance user experience."
image: "/blog/web-speed-stock.jpg"
---

<b>What is a First Contentful Paint?</b> If you're a developer reading this with no idea about what I'm talking about, I don't blame you. This isn't something we think about often as developers, especially if you're working in an environment with a lot of pressure to deliver features in a short amount of time. The first paint often goes unnoticed. Yet, it plays a critical role in both <b>user experience</b> and <b>sustainability</b>. 

<img src="/blog/fcp-screenshot.png" loading="lazy" alt="Screenshot of a First Contentful Paint analysis" width="100%" />

**<h2>What is the First Paint and Why Does it Matter?</h2>**

The <b>First Contentful Paint (FCP)</b> refers to the moment when the browser first renders something - anything - on the screen. From the user's perspective, it's when the website begins to feel responsive and interactive. For developers reading this, FCP measures how long it takes the browser to render the first piece of content to the DOM when a user navigates to your page. It could be a background colour, a logo, or text. 

From an environmental perspective, first paint is a critical point where energy consumption is at its highest. The longer it takes to load and render content, the more processing power is required on both the server and client side, which translates to more energy usage.

A slower first paint not only results in a poor user experience but also increases the load on data centers and network infrastructure, driving up energy consumption. This makes optimizing first paint an essential part of building a more sustainable website.

**<h2>Impact on Sustainability</h2>**

- **Server resources:** The longer it takes for your site to deliver content, the more server power is required to handle requests.

- **Client-side energy use:** Devices, especiallly mobile phones, consume more battery power when forced to render heavy or inefficently loaded content. Optimizing for first paint reduces strain on the user's device, making your site more energy efficient for everyone.

- **Reduced data transer:** Loading essential content faster means less time spent on unnecessary network requests, which minimizes energy=intensive data transfers between servers and clients.

**<h2>What is a Good FCP Score?</h2>**

According to Google's <a href="https://developer.chrome.com/docs/lighthouse/performance/first-contentful-paint" target="_blank">Chrome for Developers</a> documentation, in order to provide a a good user experience, you should aim to have an FCP of under 1.8 seconds.

<b>To ensure you're hitting this target for most of your users, it's helpful to measure the 75th percentile of page loads.</b> This means that 75% of your users experience FCP times below this threshold, while 25% may have slower load times. Measuring the 75th percentile gives you a more accurate representation of how the majority of your users are experiencing your website, which is critical for optimizing performance across a variety of devices and network conditions, especially mobile users.

There are many tools out there for measuring FCP - I personally use <a href="https://pagespeed.web.dev/" target="_blank">PageSpeed Insights</a>, but you can use DevTools, Lighthouse, or APIs like W3C's <a href="https://w3c.github.io/paint-timing/" target="_blank">Paint Timing</a>.

**<h2>Practical Steps to Optimizing First Paint:</h2>**

1. **Critical CSS: Load what Matters First**

    One of the biggest performance bottlenecks is CSS. Rather than loading an entire stylesheet, focus on rendering only the essential styles for above-the-fold content (part of the web page shown before scrolling) by leveraging critical CSS. This ensures users see something on the screen as quickly as possible, while non-essential styles load later.

    This is part of the reason I like to use Sass in my web app projects. Sass helps you to modularize your CSS effectively, making it easier to identify which styles are critical. For example, you can create a separate `critical.scss` file specifically for above-the-fold content that needs to load immediately, while keeping non-essential styles in other files. By using Sass features like <b>partials</b> and <b>mixins</b>, you can modularize your styles and focus on loading only what's needed for the first paint.

    Prioritizing critical css minimizes render-blocking, and ultimately speeds up the first paint, leading to better performance and a more sustainable web experience.

2. **Defer Non-Critical Resources**

    Not every resource needs to be loaded at the start. By deferring non-essential JavaScript and CSS, you allow the browser to focus on rendering the visible content first. Use the `async` and `defer` attributes on scripts to avoid blocking the page's initial rendering.

3. **Preload Key Assets**

    To improve first paint, preload essential assets like fonts, background images, or even JavaScript libraries that are critical to your site's initial load. By preloading, you ensure these resources are fetched and available as soon as the browser begins rendering the page.

4. **Optimize Images and Fonts**

    Images are often one of the biggest culprits in slowing down first paint. Use responsive images (`srcset`) to load appropriately sized images for different devices. Also, compress your images using modern formats like WebP and optimize your fonts by using `font-display: swap` to load fallback fonts first, avoiding delays in text rendering.

5. **Minify and Compress**

    CSS and JavaScript files can often be bloated with unnecessary characters and comments. Minify your code and use Gzip or Brotli compression to reduce file sizes. Smaller files mean less bandwidth usage, resulting in faster load times and lower energy consumption.

6. **Reduce Render-Blocking Resources**

    Use Google Lighthouse or similar tools to identify resources that block rendering, such as large external JavaScript or CSS files. Minimize these, and where possible, load them asynchronously to prevent them from delaying the first paint.

7. **Lazy Load Below-the-Fold Content**

    Not everything needs to be loaded immediately. Use <b>lazy loading</b> for images, videos, and other media that appear below the fold. This defers loading these assets until the user scrolls to them, reducing the initial page load size and improving first paint speed.

**<h2>Sustainability as a Core Developer Responsibility</h2>**

Sustainability in web development isn't a buzzword - it's a responsibility. As developers, we have the power to reduce the environmental impact of our work, and optimizing the first paint is one of the most effective ways to do so. By building fast, efficient websites that are optimized for performance, we not only provide better user experiences but also contribute to a greener, more sustainable digital world.
