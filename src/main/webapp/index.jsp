<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Web App - Theme Toggle</title>
    <style>
        /* Renk Değişkenleri - Gündüz Modu (Senin mevcut tasarımın) */
        :root {
            --bg-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            --card-bg: white;
            --text-h2: #333;
            --text-p: #666;
            --btn-bg: #667eea;
        }

        /* Renk Değişkenleri - Gece Modu (Yeni eklenen kısım) */
        body.dark-mode {
            --bg-gradient: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            --card-bg: #0f3460;
            --text-h2: #ffffff;
            --text-p: #e94560;
            --btn-bg: #e94560;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            transition: all 0.4s ease; /* Renk geçişlerini yumuşatır */
        } 
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: var(--bg-gradient);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .container {
            background: var(--card-bg);
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
            padding: 40px;
            text-align: center;
            max-width: 600px;
        }
        
        h2 {
            color: var(--text-h2);
            margin-bottom: 20px;
            font-size: 2.5em;
        }
        
        p {
            color: var(--text-p);
            line-height: 1.6;
            font-size: 1.1em;
        }
        
        button {
            margin-top: 20px;
            padding: 12px 30px;
            background: var(--btn-bg);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            font-weight: bold;
        }
        
        button:hover {
            opacity: 0.8;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Hoş Geldiniz!</h2>
        <p>Bu sayfa geçen haftaki tasarımın üzerine Dark Mode özelliği eklenerek geliştirilmiştir.</p>
        <button id="themeToggle">Gece Moduna Geç</button>
    </div>

    <script>
        const btn = document.getElementById('themeToggle');
        btn.addEventListener('click', () => {
            document.body.classList.toggle('dark-mode');
            
            if(document.body.classList.contains('dark-mode')){
                btn.textContent = 'Gündüz Moduna Geç';
            } else {
                btn.textContent = 'Gece Moduna Geç';
            }
        });
    </script>
</body>
</html>