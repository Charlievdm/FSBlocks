<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Healthy Rides - Your Car's Personal Health Tracker</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700;800&family=Space+Mono:wght@400;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary: #1a4d4d;
            --primary-dark: #0f3535;
            --accent: #4A90E2;
            --cream: #f5f1e8;
            --text-dark: #1a1a1a;
            --text-light: #ffffff;
        }

        body {
            font-family: 'Outfit', sans-serif;
            background: var(--cream);
            color: var(--text-dark);
            overflow-x: hidden;
        }

        /* Hero Section */
        .hero {
            min-height: 100vh;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            position: relative;
            overflow: hidden;
            display: flex;
            align-items: center;
            padding: 2rem;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 80%;
            height: 150%;
            background: radial-gradient(circle, rgba(74, 144, 226, 0.15) 0%, transparent 70%);
            border-radius: 50%;
            animation: pulse 8s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1) translateY(0); }
            50% { transform: scale(1.1) translateY(-20px); }
        }

        .hero-content {
            max-width: 1400px;
            margin: 0 auto;
            width: 100%;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
            position: relative;
            z-index: 2;
        }

        .hero-text h1 {
            font-size: clamp(3rem, 8vw, 6rem);
            font-weight: 800;
            color: var(--text-light);
            line-height: 1;
            margin-bottom: 1.5rem;
            animation: slideInLeft 0.8s ease-out;
        }

        .hero-text .subtitle {
            font-size: clamp(1.2rem, 2vw, 1.5rem);
            color: rgba(255, 255, 255, 0.9);
            margin-bottom: 2rem;
            font-weight: 300;
            animation: slideInLeft 0.8s ease-out 0.2s backwards;
        }

        .app-icon {
            width: 120px;
            height: 120px;
            border-radius: 28px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
            margin-bottom: 2rem;
            animation: slideInLeft 0.8s ease-out 0.1s backwards;
        }

        .cta-button {
            display: inline-flex;
            align-items: center;
            gap: 1rem;
            background: var(--text-light);
            color: var(--primary);
            padding: 1.2rem 2.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 700;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            animation: slideInLeft 0.8s ease-out 0.3s backwards;
        }

        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
        }

        .apple-icon {
            width: 24px;
            height: 24px;
        }

        @keyframes slideInLeft {
            from {
                opacity: 0;
                transform: translateX(-50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .hero-phones {
            display: flex;
            gap: 1.5rem;
            justify-content: center;
            animation: slideInRight 1s ease-out 0.4s backwards;
            perspective: 1000px;
        }

        @keyframes slideInRight {
            from {
                opacity: 0;
                transform: translateX(50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .phone-mockup {
            flex: 1;
            max-width: 280px;
            border-radius: 40px;
            overflow: hidden;
            box-shadow: 0 40px 80px rgba(0, 0, 0, 0.5);
            transition: transform 0.5s ease;
            animation: float 6s ease-in-out infinite;
        }

        .phone-mockup:nth-child(1) {
            transform: translateY(20px) rotate(-3deg);
            animation-delay: 0s;
        }

        .phone-mockup:nth-child(2) {
            transform: translateY(-20px) rotate(3deg);
            animation-delay: 1s;
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0) rotate(0deg);
            }
            50% {
                transform: translateY(-20px) rotate(2deg);
            }
        }

        .phone-mockup:hover {
            transform: translateY(-10px) rotate(0deg) scale(1.05);
            z-index: 10;
        }

        .phone-mockup img {
            width: 100%;
            display: block;
        }

        /* Features Section */
        .features {
            padding: 6rem 2rem;
            background: var(--cream);
            position: relative;
        }

        .features::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 100px;
            background: linear-gradient(to bottom, var(--primary-dark), transparent);
            opacity: 0.1;
        }

        .features-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-title {
            font-size: clamp(2.5rem, 5vw, 4rem);
            font-weight: 800;
            text-align: center;
            margin-bottom: 1rem;
            color: var(--primary);
        }

        .section-subtitle {
            text-align: center;
            font-size: 1.3rem;
            color: #666;
            margin-bottom: 4rem;
            font-weight: 300;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2.5rem;
            margin-bottom: 4rem;
        }

        .feature-card {
            background: white;
            padding: 2.5rem;
            border-radius: 24px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
            transition: all 0.4s ease;
            border: 2px solid transparent;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.15);
            border-color: var(--accent);
        }

        .feature-icon {
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            font-size: 2rem;
        }

        .feature-card h3 {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
            color: var(--primary);
        }

        .feature-card p {
            color: #666;
            line-height: 1.7;
            font-size: 1.05rem;
        }

        /* Screenshot Showcase */
        .showcase {
            padding: 6rem 2rem;
            background: var(--primary);
            color: white;
        }

        .showcase-container {
            max-width: 1400px;
            margin: 0 auto;
        }

        .showcase-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .showcase-item {
            position: relative;
            overflow: hidden;
            border-radius: 30px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
            transition: transform 0.4s ease;
        }

        .showcase-item:hover {
            transform: scale(1.05) rotate(2deg);
        }

        .showcase-item img {
            width: 100%;
            display: block;
        }

        .showcase-caption {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 2rem;
            background: linear-gradient(to top, rgba(0, 0, 0, 0.8), transparent);
            font-size: 1.3rem;
            font-weight: 700;
            transform: translateY(100%);
            transition: transform 0.3s ease;
        }

        .showcase-item:hover .showcase-caption {
            transform: translateY(0);
        }

        /* CTA Section */
        .cta-section {
            padding: 8rem 2rem;
            background: var(--cream);
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .cta-section::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(74, 144, 226, 0.1), transparent 70%);
            border-radius: 50%;
        }

        .cta-content {
            position: relative;
            z-index: 2;
        }

        .cta-section h2 {
            font-size: clamp(2.5rem, 5vw, 4rem);
            font-weight: 800;
            margin-bottom: 1.5rem;
            color: var(--primary);
        }

        .cta-section p {
            font-size: 1.3rem;
            color: #666;
            margin-bottom: 2.5rem;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        /* Footer */
        footer {
            background: var(--primary-dark);
            color: rgba(255, 255, 255, 0.7);
            padding: 3rem 2rem;
            text-align: center;
        }

        footer p {
            margin-bottom: 0.5rem;
        }

        /* Responsive */
        @media (max-width: 968px) {
            .hero-content {
                grid-template-columns: 1fr;
                text-align: center;
                gap: 3rem;
            }

            .hero-phones {
                max-width: 500px;
                margin: 0 auto;
            }

            .phone-mockup:nth-child(1),
            .phone-mockup:nth-child(2) {
                transform: none;
            }
        }

        @media (max-width: 640px) {
            .phone-mockup:nth-child(2) {
                display: none;
            }

            .features-grid,
            .showcase-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <div class="hero-text">
                <img class="app-icon" id="app-icon" alt="Healthy Rides App Icon">
                <h1>Healthy Rides</h1>
                <p class="subtitle">Never miss a maintenance task. Track your car's health like a pro.</p>
                <a href="https://apps.apple.com/us/app/healthy-rides/id6737777016" class="cta-button">
                    <svg class="apple-icon" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M17.05 20.28c-.98.95-2.05.8-3.08.35-1.09-.46-2.09-.48-3.24 0-1.44.62-2.2.44-3.06-.35C2.79 15.25 3.51 7.59 9.05 7.31c1.35.07 2.29.74 3.08.8 1.18-.24 2.31-.93 3.57-.84 1.51.12 2.65.72 3.4 1.8-3.12 1.87-2.38 5.98.48 7.13-.57 1.5-1.31 2.99-2.54 4.09l.01-.01zM12.03 7.25c-.15-2.23 1.66-4.07 3.74-4.25.29 2.58-2.34 4.5-3.74 4.25z"/>
                    </svg>
                    Download on App Store
                </a>
            </div>

            <div class="hero-phones">
                <div class="phone-mockup">
                    <img id="screenshot-1" alt="Healthy Rides App Screenshot">
                </div>
                <div class="phone-mockup">
                    <img id="screenshot-2" alt="Healthy Rides App Screenshot">
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="features-container">
            <h2 class="section-title">Everything You Need</h2>
            <p class="section-subtitle">Powerful features to keep your car running smoothly</p>
            
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">🚗</div>
                    <h3>Multi-Vehicle Garage</h3>
                    <p>Manage all your vehicles in one place. Track maintenance for your entire fleet with ease.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">📋</div>
                    <h3>Smart Task Tracking</h3>
                    <p>Stay on top of oil changes, tire rotations, and more with intelligent reminders based on miles or time.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">📊</div>
                    <h3>Mileage History</h3>
                    <p>Log your mileage over time and visualize your driving patterns with beautiful charts.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">⚙️</div>
                    <h3>Custom Tasks</h3>
                    <p>Create personalized maintenance schedules for any task your vehicle needs.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">🔔</div>
                    <h3>Never Miss a Task</h3>
                    <p>Get notified when maintenance is overdue or approaching, so you're always prepared.</p>
                </div>

                <div class="feature-card">
                    <div class="feature-icon">📈</div>
                    <h3>Progress Tracking</h3>
                    <p>Visual progress bars show exactly how close you are to your next service appointment.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Screenshot Showcase -->
    <section class="showcase">
        <div class="showcase-container">
            <h2 class="section-title">See It In Action</h2>
            <p class="section-subtitle">A glimpse into the app</p>
            
            <div class="showcase-grid">
                <div class="showcase-item">
                    <img id="showcase-1" alt="Track all your vehicles">
                    <div class="showcase-caption">Track All Cars</div>
                </div>
                <div class="showcase-item">
                    <img id="showcase-2" alt="View all maintenance tasks">
                    <div class="showcase-caption">View All Tasks</div>
                </div>
                <div class="showcase-item">
                    <img id="showcase-3" alt="Log miles over time">
                    <div class="showcase-caption">Log Your Miles</div>
                </div>
                <div class="showcase-item">
                    <img id="showcase-4" alt="Customize task details">
                    <div class="showcase-caption">Customize Tasks</div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="cta-content">
            <h2>Ready to Keep Your Car Healthy?</h2>
            <p>Download Healthy Rides today and take control of your vehicle maintenance.</p>
            <a href="https://apps.apple.com/us/app/healthy-rides/id6737777016" class="cta-button">
                <svg class="apple-icon" viewBox="0 0 24 24" fill="currentColor">
                    <path d="M17.05 20.28c-.98.95-2.05.8-3.08.35-1.09-.46-2.09-.48-3.24 0-1.44.62-2.2.44-3.06-.35C2.79 15.25 3.51 7.59 9.05 7.31c1.35.07 2.29.74 3.08.8 1.18-.24 2.31-.93 3.57-.84 1.51.12 2.65.72 3.4 1.8-3.12 1.87-2.38 5.98.48 7.13-.57 1.5-1.31 2.99-2.54 4.09l.01-.01zM12.03 7.25c-.15-2.23 1.66-4.07 3.74-4.25.29 2.58-2.34 4.5-3.74 4.25z"/>
                </svg>
                Get Started Free
            </a>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p><strong>Healthy Rides</strong></p>
        <p>Your car's personal health tracker</p>
        <p style="margin-top: 1rem; opacity: 0.5;">© 2026 Healthy Rides. All rights reserved.</p>
    </footer>

    <script>
        // Use local assets in this folder.
        const icon = "Icon.png";
        const img1 = "image1.png";
        const img2 = "image2.png";
        const img3 = "image3.png";
        const img4 = "image4.png";

        document.getElementById("app-icon").src = icon;
        document.getElementById("screenshot-1").src = img1;
        document.getElementById("screenshot-2").src = img2;
        document.getElementById("showcase-1").src = img2;
        document.getElementById("showcase-2").src = img3;
        document.getElementById("showcase-3").src = img1;
        document.getElementById("showcase-4").src = img4;
    </script>
</body>
</html>
