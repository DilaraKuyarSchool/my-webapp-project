<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Hello</title>
  <style>
    :root{
      --bg1:#0f172a;   /* slate-900 */
      --bg2:#1e293b;   /* slate-800 */
      --card:#0b1220cc; /* glass */
      --text:#e2e8f0;  /* slate-200 */
      --muted:#94a3b8; /* slate-400 */
      --accent:#60a5fa; /* blue-400 */
      --ring: rgba(96,165,250,.35);
    }

    *{ box-sizing:border-box; }
    body{
      margin:0;
      min-height:100vh;
      display:grid;
      place-items:center;
      font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Arial, "Apple Color Emoji","Segoe UI Emoji";
      color: var(--text);
      background:
        radial-gradient(900px 500px at 20% 10%, rgba(96,165,250,.22), transparent 60%),
        radial-gradient(700px 450px at 85% 80%, rgba(34,197,94,.14), transparent 60%),
        linear-gradient(135deg, var(--bg1), var(--bg2));
      padding: 24px;
    }

    .card{
      width:min(640px, 100%);
      background: var(--card);
      border: 1px solid rgba(148,163,184,.18);
      border-radius: 18px;
      padding: 28px 26px;
      backdrop-filter: blur(12px);
      box-shadow:
        0 20px 60px rgba(0,0,0,.35),
        0 0 0 6px rgba(255,255,255,.02) inset;
    }

    .badge{
      display:inline-flex;
      align-items:center;
      gap:10px;
      padding: 8px 12px;
      border-radius: 999px;
      border: 1px solid rgba(148,163,184,.18);
      background: rgba(15,23,42,.55);
      color: var(--muted);
      font-size: 13px;
      letter-spacing: .2px;
    }
    .dot{
      width:10px; height:10px;
      border-radius:999px;
      background: var(--accent);
      box-shadow: 0 0 0 6px var(--ring);
    }

    h2{
      margin: 16px 0 10px;
      font-size: clamp(28px, 4vw, 40px);
      line-height: 1.12;
      letter-spacing: -0.02em;
    }
    p{
      margin: 0 0 18px;
      color: var(--muted);
      font-size: 15.5px;
      line-height: 1.6;
    }

    .actions{
      display:flex;
      flex-wrap:wrap;
      gap: 10px;
      margin-top: 18px;
    }
    .btn{
      appearance:none;
      border: 1px solid rgba(148,163,184,.18);
      background: rgba(2,6,23,.35);
      color: var(--text);
      padding: 10px 14px;
      border-radius: 12px;
      font-weight: 600;
      cursor: pointer;
      transition: transform .12s ease, background .12s ease, border-color .12s ease;
    }
    .btn:hover{
      transform: translateY(-1px);
      border-color: rgba(96,165,250,.35);
      background: rgba(2,6,23,.55);
    }
    .btn.primary{
      border-color: rgba(96,165,250,.45);
      background: linear-gradient(135deg, rgba(96,165,250,.22), rgba(96,165,250,.08));
    }

    .footer{
      margin-top: 18px;
      font-size: 12.5px;
      color: rgba(148,163,184,.9);
    }
  </style>
</head>
<body>
  <main class="card">
    <span class="badge"><span class="dot"></span> Starter Page</span>
    <h2>Hello World!</h2>
    <p>
      A simple, modern UI: centered layout, glassy card, smooth gradients, and responsive typography.
    </p>

    <div class="actions">
      <button class="btn primary" type="button">Get Started</button>
      <button class="btn" type="button">Learn More</button>
    </div>

    <div class="footer">Tip: Replace the text/buttons with your real content.</div>
  </main>
</body>
</html>
