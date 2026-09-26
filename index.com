<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Meta Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '28019449611066940');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=28019449611066940&ev=PageView&noscript=1"
/></noscript>
<!-- End Meta Pixel Code -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="theme-color" content="#07030d">
  <title>JACK HACK</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&amp;display=swap" rel="stylesheet">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html,
    body {
      width: 100%;
      min-height: 100%;
      background: #07030d;
      font-family: "Poppins", sans-serif;
    }

    body {
      overflow-x: hidden;
    }

    .jack-page {
      position: relative;
      isolation: isolate;
      width: 100%;
      min-height: 100vh;
      min-height: 100svh;
      padding: 30px 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      color: #ffffff;
      background:
        radial-gradient(circle at 12% 18%, rgba(255, 0, 119, .3), transparent 32%),
        radial-gradient(circle at 88% 82%, rgba(0, 174, 255, .25), transparent 34%),
        linear-gradient(145deg, #050208, #12051d 52%, #020812);
    }

    .live-grid {
      position: absolute;
      inset: -60%;
      z-index: -5;
      width: 220%;
      height: 220%;
      opacity: .15;
      pointer-events: none;
      background-image:
        linear-gradient(rgba(255,255,255,.12) 1px, transparent 1px),
        linear-gradient(90deg, rgba(255,255,255,.12) 1px, transparent 1px);
      background-size: 50px 50px;
      transform: perspective(600px) rotateX(62deg);
      animation: gridMove 14s linear infinite;
    }

    .glow {
      position: absolute;
      z-index: -4;
      width: 430px;
      height: 430px;
      border-radius: 50%;
      filter: blur(90px);
      opacity: .3;
      pointer-events: none;
    }

    .glow-pink {
      top: -190px;
      left: -140px;
      background: #ff0077;
      animation: pinkMove 9s ease-in-out infinite alternate;
    }

    .glow-blue {
      right: -170px;
      bottom: -200px;
      background: #00aeff;
      animation: blueMove 11s ease-in-out infinite alternate;
    }

    .particle {
      position: absolute;
      bottom: -20px;
      z-index: -2;
      width: 5px;
      height: 5px;
      border-radius: 50%;
      background: #ffffff;
      box-shadow: 0 0 14px #ff2d8d;
      opacity: 0;
      animation: floatParticle 8s linear infinite;
    }

    .p1 { left: 10%; }
    .p2 { left: 28%; animation-delay: 2s; }
    .p3 { left: 53%; animation-delay: 4s; }
    .p4 { left: 75%; animation-delay: 1s; }
    .p5 { left: 91%; animation-delay: 5s; }

    .jack-card {
      position: relative;
      width: 100%;
      max-width: 1050px;
      min-height: 650px;
      padding: clamp(40px, 7vw, 80px);
      display: grid;
      grid-template-columns: 1.05fr .95fr;
      align-items: center;
      gap: clamp(35px, 6vw, 75px);
      overflow: hidden;
      border: 1px solid rgba(255,255,255,.16);
      border-radius: 34px;
      background: rgba(15, 8, 25, .78);
      box-shadow:
        0 35px 100px rgba(0,0,0,.65),
        inset 0 1px rgba(255,255,255,.08);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      animation: cardEntry .8s ease both;
    }

    .jack-card::before {
      content: "";
      position: absolute;
      top: 0;
      left: 8%;
      right: 8%;
      height: 1px;
      background: linear-gradient(
        90deg,
        transparent,
        #ff2d8d,
        #18c8ff,
        transparent
      );
      box-shadow: 0 0 20px rgba(255,45,141,.75);
    }

    .content {
      position: relative;
      z-index: 3;
    }

    .badge {
      width: fit-content;
      margin-bottom: 24px;
      padding: 8px 15px;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      border: 1px solid rgba(255,45,141,.42);
      border-radius: 999px;
      color: #ffd8eb;
      background: rgba(255,45,141,.08);
      font-size: 12px;
      font-weight: 700;
      letter-spacing: 1.2px;
      text-transform: uppercase;
    }

    .badge-dot {
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: #ff2d8d;
      box-shadow: 0 0 12px #ff2d8d;
      animation: blink 1.3s ease-in-out infinite;
    }

    .main-heading {
      margin: 0;
      font-size: clamp(58px, 9vw, 112px);
      line-height: .9;
      font-weight: 900;
      letter-spacing: -6px;
      text-transform: uppercase;
      text-shadow: 0 12px 35px rgba(0,0,0,.5);
    }

    .main-heading span {
      display: block;
      color: transparent;
      background: linear-gradient(
        100deg,
        #ff2d8d,
        #ff8bc3 34%,
        #ffffff 53%,
        #18c8ff
      );
      background-clip: text;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .description {
      max-width: 540px;
      margin: 25px 0 0;
      color: #b9afc8;
      font-size: 16px;
      line-height: 1.75;
    }

    .telegram-button {
      position: relative;
      width: fit-content;
      margin-top: 32px;
      padding: 16px 27px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 11px;
      overflow: hidden;
      border: 1px solid rgba(255,255,255,.7);
      border-radius: 999px;
      color: #ffffff;
      background: linear-gradient(
        95deg,
        #f00073,
        #8c52ff,
        #008fc7
      );
      box-shadow:
        0 16px 38px rgba(255,45,141,.3),
        inset 0 1px rgba(255,255,255,.3);
      font-size: 14px;
      font-weight: 800;
      letter-spacing: .8px;
      text-decoration: none;
      text-transform: uppercase;
      transition: transform .3s ease, box-shadow .3s ease;
      -webkit-tap-highlight-color: transparent;
    }

    .telegram-button::before {
      content: "";
      position: absolute;
      top: 0;
      left: -120%;
      width: 55%;
      height: 100%;
      transform: skewX(-24deg);
      background: linear-gradient(
        90deg,
        transparent,
        rgba(255,255,255,.55),
        transparent
      );
      animation: buttonShine 3s ease-in-out infinite;
    }

    .telegram-button:hover {
      transform: translateY(-4px) scale(1.03);
      box-shadow:
        0 21px 48px rgba(255,45,141,.45),
        0 0 28px rgba(24,200,255,.2);
    }

    .telegram-button:active {
      transform: scale(.97);
    }

    .telegram-button svg,
    .telegram-button span {
      position: relative;
      z-index: 2;
    }

    .telegram-button svg {
      width: 22px;
      height: 22px;
    }

    .notice {
      margin-top: 24px;
      display: flex;
      align-items: center;
      gap: 10px;
      color: rgba(255,255,255,.5);
      font-size: 12px;
      font-weight: 600;
      letter-spacing: 1px;
      text-transform: uppercase;
    }

    .notice-dot {
      width: 6px;
      height: 6px;
      border-radius: 50%;
      background: #ff2d8d;
      box-shadow: 0 0 9px #ff2d8d;
    }

    .visual {
      position: relative;
      min-height: 430px;
      display: grid;
      place-items: center;
    }

    .logo-ring {
      position: absolute;
      width: 360px;
      height: 360px;
      border: 1px solid rgba(255,255,255,.15);
      border-radius: 50%;
      animation: ringRotate 16s linear infinite;
    }

    .logo-ring::before,
    .logo-ring::after {
      content: "";
      position: absolute;
      border-radius: 50%;
    }

    .logo-ring::before {
      inset: 22px;
      border: 2px dashed rgba(255,45,141,.35);
    }

    .logo-ring::after {
      inset: -7px;
      border-top: 3px solid #ff2d8d;
      border-right: 3px solid transparent;
      border-bottom: 3px solid #18c8ff;
      border-left: 3px solid transparent;
      filter: drop-shadow(0 0 8px rgba(255,45,141,.7));
    }

    .profile-logo {
      position: relative;
      z-index: 3;
      width: 270px;
      height: 270px;
      padding: 6px;
      border: 2px solid rgba(255,255,255,.85);
      border-radius: 50%;
      background: linear-gradient(
        135deg,
        #ff2d8d,
        #8c52ff,
        #18c8ff
      );
      box-shadow:
        0 0 0 10px rgba(255,255,255,.035),
        0 0 65px rgba(255,45,141,.35),
        0 0 95px rgba(24,200,255,.15);
      animation: logoFloat 4s ease-in-out infinite;
    }

    .profile-logo img {
      width: 100%;
      height: 100%;
      display: block;
      object-fit: cover;
      object-position: center;
      border-radius: 50%;
      background: #09050e;
    }

    .live-status {
      position: absolute;
      z-index: 5;
      right: 35px;
      bottom: 60px;
      padding: 8px 12px;
      display: flex;
      align-items: center;
      gap: 7px;
      border: 1px solid rgba(255,255,255,.18);
      border-radius: 999px;
      background: rgba(7,3,11,.85);
      box-shadow: 0 8px 22px rgba(0,0,0,.45);
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 1px;
      text-transform: uppercase;
    }

    .live-status::before {
      content: "";
      width: 7px;
      height: 7px;
      border-radius: 50%;
      background: #50f29a;
      box-shadow: 0 0 10px #50f29a;
      animation: blink 1.3s ease-in-out infinite;
    }

    .footer {
      position: absolute;
      right: 28px;
      bottom: 20px;
      color: rgba(255,255,255,.35);
      font-size: 11px;
      font-weight: 600;
      letter-spacing: 2px;
      text-transform: uppercase;
    }

    .footer strong {
      color: #ff76b6;
    }

    @keyframes gridMove {
      to {
        background-position: 0 100px;
      }
    }

    @keyframes pinkMove {
      to {
        transform: translate(80px, 55px) scale(1.15);
      }
    }

    @keyframes blueMove {
      to {
        transform: translate(-75px, -50px) scale(.9);
      }
    }

    @keyframes floatParticle {
      0% {
        transform: translateY(0) scale(.4);
        opacity: 0;
      }

      18% {
        opacity: .7;
      }

      100% {
        transform: translateY(-110vh) scale(1.3);
        opacity: 0;
      }
    }

    @keyframes cardEntry {
      from {
        opacity: 0;
        transform: translateY(26px) scale(.985);
      }

      to {
        opacity: 1;
        transform: translateY(0) scale(1);
      }
    }

    @keyframes blink {
      50% {
        opacity: .35;
      }
    }

    @keyframes buttonShine {
      0%,
      35% {
        left: -120%;
      }

      70%,
      100% {
        left: 150%;
      }
    }

    @keyframes ringRotate {
      to {
        transform: rotate(360deg);
      }
    }

    @keyframes logoFloat {
      0%,
      100% {
        transform: translateY(0);
      }

      50% {
        transform: translateY(-11px);
      }
    }

    @media (max-width: 850px) {
      .jack-page {
        display: block;
        min-height: 100svh;
        padding: 16px;
        overflow-y: auto;
      }

      .jack-card {
        min-height: 0;
        padding: 48px 25px 65px;
        grid-template-columns: 1fr;
        gap: 40px;
        border-radius: 26px;
      }

      .content {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
      }

      .main-heading {
        font-size: clamp(55px, 16vw, 92px);
        letter-spacing: -4px;
      }

      .description {
        margin-top: 21px;
      }

      .telegram-button {
        width: 100%;
        max-width: 350px;
      }

      .notice {
        justify-content: center;
      }

      .visual {
        min-height: 340px;
      }

      .logo-ring {
        width: 285px;
        height: 285px;
      }

      .profile-logo {
        width: 215px;
        height: 215px;
      }

      .live-status {
        right: calc(50% - 130px);
        bottom: 35px;
      }

      .footer {
        right: 0;
        left: 0;
        bottom: 20px;
        text-align: center;
      }
    }

    @media (max-width: 420px) {
      .jack-page {
        padding: 10px;
      }

      .jack-card {
        padding: 40px 18px 62px;
        gap: 30px;
      }

      .badge {
        margin-bottom: 20px;
        font-size: 10px;
      }

      .main-heading {
        font-size: clamp(49px, 17vw, 70px);
      }

      .description {
        font-size: 14px;
        line-height: 1.7;
      }

      .telegram-button {
        padding: 15px 18px;
        font-size: 13px;
      }

      .notice {
        font-size: 10px;
      }

      .visual {
        min-height: 285px;
      }

      .logo-ring {
        width: 235px;
        height: 235px;
      }

      .profile-logo {
        width: 178px;
        height: 178px;
      }

      .live-status {
        right: calc(50% - 111px);
        bottom: 23px;
      }
    }

    @media (prefers-reduced-motion: reduce) {
      .jack-page *,
      .jack-page *::before,
      .jack-page *::after {
        animation-duration: .01ms !important;
        animation-iteration-count: 1 !important;
      }
    }
  </style>
</head>

<body>
  <main class="jack-page">
    <div class="live-grid"></div>
    <div class="glow glow-pink"></div>
    <div class="glow glow-blue"></div>

    <span class="particle p1"></span>
    <span class="particle p2"></span>
    <span class="particle p3"></span>
    <span class="particle p4"></span>
    <span class="particle p5"></span>

    <section class="jack-card">
      <div class="content">
        <div class="badge">
          <span class="badge-dot"></span>
          Official Private Community
        </div>

        <h1 class="main-heading">
          Jack
          <span>Hack</span>
        </h1>

        <p class="description">
          Join the official community for fresh updates, exclusive content
          and important announcements directly on Telegram.
        </p>

        <a
          class="telegram-button"
          href="https://t.me/+_EwejIWCt8diYmI9"
          target="_blank"
          rel="noopener noreferrer">

          <svg viewBox="0 0 24 24" fill="currentColor">
            <path d="M21.8 2.2c-.3-.2-.7-.3-1.1-.1L2.1 9.3c-.7.3-.8 1.2-.1 1.6l4.7 2.3 1.8 5.6c.2.7 1.1.9 1.6.4l2.6-2.5 4.8 3.5c.6.4 1.4.1 1.5-.6l3.1-16.4c.1-.4 0-.8-.3-1ZM9.3 13.5l8.4-7.4-6.5 8.3-.5 2.5-1.4-3.4Z"/>
          </svg>

          <span>Join Telegram Channel</span>
        </a>

        <div class="notice">
          <span>18+ Audience Only</span>
          <span class="notice-dot"></span>
          <span>Join Responsibly</span>
        </div>
      </div>

      <div class="visual">
        <div class="logo-ring"></div>

        <div class="profile-logo">
          <img
            src="https://jack-hack-channel.floxads-co.chatgpt.site/jack-hack-logo.png"
            alt="Jack Hack Logo">
        </div>

        <div class="live-status">
          Live Community
        </div>
      </div>

      <div class="footer">
        Ads by <strong>FLOX ADS</strong>
      </div>
    </section>
  </main>
</body>
</html>
