<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>VA Driving Clinic - New Legislation in Virginia</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        :root {
            --color-primary: #5f17eb; /* Brand purple */
            --color-primary-soft: #8a5feb;
            --color-secondary: #000000; /* Black */
            --color-accent: #7c3aed;
            --color-success: #10b981;
            --color-danger: #ef4444;
            --color-warning: #f59e0b;
            --color-environment: #059669;
            --color-infrastructure: #3b82f6;
            --color-education: #8b5cf6;
            --color-bg: #ffffff; /* White */
            --color-text: #000000; /* Black */
            --color-muted: #6b7280;
            --color-dark: #000000; /* Black */
            --color-light: #f9fafb;
            --radius-lg: 20px;
            --radius-md: 12px;
            --radius-sm: 8px;
            --shadow-soft: 0 10px 30px rgba(95, 23, 235, 0.1);
            --shadow-hover: 0 15px 35px rgba(95, 23, 235, 0.15);
            --shadow-card: 0 8px 25px rgba(0, 0, 0, 0.08);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            width: 100%;
            overflow-x: hidden;
            scroll-behavior: smooth;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            padding: 24px;
            background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%);
            color: var(--color-text);
            line-height: 1.6;
        }

        @media (max-width: 600px) {
            body { padding: 12px; }
        }

        /* Animations */
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }

        @keyframes glow {
            0%, 100% { box-shadow: 0 0 5px rgba(95, 23, 235, 0.5); }
            50% { box-shadow: 0 0 20px rgba(95, 23, 235, 0.8); }
        }

        @keyframes slideInRight {
            from { transform: translateX(100px); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        @keyframes highlight {
            0%, 100% { background: rgba(95, 23, 235, 0.1); }
            50% { background: rgba(95, 23, 235, 0.2); }
        }

        /* Main Container */
        .page {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            background: var(--color-bg);
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-soft);
            padding: 30px;
            position: relative;
            overflow: hidden;
            animation: fadeInUp 0.8s ease-out;
            border: 1px solid rgba(95, 23, 235, 0.1);
        }

        @media (max-width: 900px) {
            .page { padding: 20px; }
        }

        @media (max-width: 480px) {
            body { padding: 0; }
            .page {
                border-radius: 0;
                box-shadow: none;
                padding: 16px 12px 20px;
            }
        }

        /* Header */
        .brand-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 24px;
            flex-wrap: wrap;
            width: 100%;
            animation: fadeIn 0.6s ease-out 0.2s both;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 16px;
            flex-wrap: wrap;
        }

        .brand-logo {
            height: 50px;
            width: auto;
            max-width: 100%;
            transition: transform 0.3s ease;
            filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.1));
        }

        .brand-logo:hover { 
            transform: scale(1.05); 
            animation: glow 2s infinite;
        }

        .course-meta {
            display: flex;
            flex-direction: column;
            gap: 4px;
            max-width: 100%;
        }

        .course-name {
            font-size: 0.8rem;
            text-transform: uppercase;
            letter-spacing: 0.15em;
            color: var(--color-primary);
            font-weight: 700;
        }

        .week-label {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 12px;
            border-radius: 999px;
            background: rgba(95, 23, 235, 0.1);
            font-size: 0.8rem;
            color: var(--color-primary);
            font-weight: 600;
            border: 1px solid rgba(95, 23, 235, 0.2);
        }

        .week-label-dot {
            width: 8px;
            height: 8px;
            border-radius: 999px;
            background: var(--color-primary);
            flex-shrink: 0;
            animation: pulse 2s infinite;
        }

        .badge-mode {
            padding: 6px 12px;
            border-radius: 999px;
            background: rgba(95, 23, 235, 0.08);
            border: 1px solid rgba(95, 23, 235, 0.15);
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            color: var(--color-primary);
            white-space: nowrap;
            transition: all 0.3s ease;
            font-weight: 600;
        }

        .badge-mode:hover {
            background: rgba(95, 23, 235, 0.15);
            border-color: var(--color-primary);
            transform: translateY(-2px);
        }

        h1 {
            font-size: clamp(1.8rem, 3vw, 2.4rem);
            line-height: 1.1;
            color: var(--color-text);
            margin-bottom: 10px;
            animation: fadeInUp 0.6s ease-out 0.3s both;
        }

        .module-subtitle {
            font-size: 1rem;
            color: var(--color-muted);
            max-width: 800px;
            margin-bottom: 28px;
            animation: fadeInUp 0.6s ease-out 0.4s both;
            line-height: 1.7;
        }

        /* Time Estimate Banner */
        .time-estimate-banner {
            background: linear-gradient(135deg, rgba(95, 23, 235, 0.1) 0%, rgba(124, 58, 237, 0.1) 100%);
            border: 2px solid rgba(95, 23, 235, 0.2);
            border-radius: var(--radius-md);
            padding: 15px 20px;
            margin-bottom: 25px;
            display: flex;
            align-items: center;
            gap: 15px;
            animation: fadeIn 0.5s ease;
        }

        .time-estimate-icon {
            font-size: 1.5rem;
            color: var(--color-primary);
            background: rgba(95, 23, 235, 0.1);
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .time-estimate-content h3 {
            color: var(--color-primary);
            font-size: 1rem;
            margin-bottom: 5px;
            font-weight: 700;
        }

        .time-estimate-content p {
            color: var(--color-text);
            font-size: 0.9rem;
            margin: 0;
        }

        .time-highlight {
            color: var(--color-primary);
            font-weight: 800;
            font-size: 1.1em;
        }

        /* Legislation Timeline */
        .legislation-timeline {
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin-bottom: 30px;
            position: relative;
            padding-left: 40px;
        }

        .legislation-timeline::before {
            content: '';
            position: absolute;
            left: 15px;
            top: 0;
            bottom: 0;
            width: 3px;
            background: linear-gradient(to bottom, var(--color-primary), var(--color-accent));
            z-index: 1;
        }

        .timeline-item {
            background: white;
            border-radius: var(--radius-md);
            padding: 25px;
            border: 2px solid rgba(95, 23, 235, 0.1);
            box-shadow: var(--shadow-card);
            position: relative;
            z-index: 2;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .timeline-item:hover {
            transform: translateX(10px);
            border-color: var(--color-primary);
            box-shadow: var(--shadow-hover);
        }

        .timeline-item.active {
            border-color: var(--color-primary);
            border-left: 6px solid var(--color-primary);
            animation: highlight 2s infinite;
        }

        .timeline-marker {
            position: absolute;
            left: -37px;
            top: 30px;
            width: 24px;
            height: 24px;
            border-radius: 50%;
            background: white;
            border: 3px solid var(--color-primary);
            z-index: 3;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .timeline-item.active .timeline-marker {
            background: var(--color-primary);
            animation: pulse 2s infinite;
        }

        .timeline-marker-icon {
            font-size: 0.8rem;
            color: var(--color-primary);
            font-weight: bold;
        }

        .timeline-item.active .timeline-marker-icon {
            color: white;
        }

        .timeline-category {
            display: inline-block;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 0.75rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 15px;
        }

        .category-safety {
            background: rgba(239, 68, 68, 0.1);
            color: var(--color-danger);
            border: 1px solid rgba(239, 68, 68, 0.2);
        }

        .category-environment {
            background: rgba(5, 150, 105, 0.1);
            color: var(--color-environment);
            border: 1px solid rgba(5, 150, 105, 0.2);
        }

        .category-infrastructure {
            background: rgba(59, 130, 246, 0.1);
            color: var(--color-infrastructure);
            border: 1px solid rgba(59, 130, 246, 0.2);
        }

        .category-education {
            background: rgba(139, 92, 246, 0.1);
            color: var(--color-education);
            border: 1px solid rgba(139, 92, 246, 0.2);
        }

        .timeline-title {
            font-size: 1.2rem;
            font-weight: 800;
            color: var(--color-text);
            margin-bottom: 10px;
        }

        .timeline-effective {
            font-size: 0.9rem;
            color: var(--color-primary);
            font-weight: 600;
            margin-bottom: 15px;
        }

        .timeline-summary {
            font-size: 0.95rem;
            color: var(--color-muted);
            line-height: 1.6;
            margin-bottom: 15px;
        }

        /* Interactive Scenario */
        .scenario-container {
            background: rgba(95, 23, 235, 0.03);
            border-radius: var(--radius-md);
            padding: 30px;
            margin-bottom: 30px;
            border: 2px solid rgba(95, 23, 235, 0.1);
            display: none;
        }

        .scenario-container.active {
            display: block;
            animation: fadeIn 0.5s ease;
        }

        .scenario-header {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 25px;
        }

        .scenario-icon {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background: rgba(95, 23, 235, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.8rem;
            color: var(--color-primary);
            flex-shrink: 0;
        }

        .scenario-title {
            font-size: 1.3rem;
            font-weight: 800;
            color: var(--color-primary);
        }

        .scenario-description {
            font-size: 1rem;
            color: var(--color-text);
            margin-bottom: 25px;
            line-height: 1.7;
        }

        .scenario-question {
            font-size: 1.1rem;
            font-weight: 700;
            color: var(--color-text);
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 2px solid rgba(95, 23, 235, 0.1);
        }

        .scenario-options {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 15px;
            margin-bottom: 25px;
        }

        @media (max-width: 600px) {
            .scenario-options { grid-template-columns: 1fr; }
        }

        .scenario-option {
            background: white;
            border-radius: var(--radius-sm);
            padding: 20px;
            border: 2px solid rgba(95, 23, 235, 0.2);
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .scenario-option:hover {
            border-color: var(--color-primary);
            background: rgba(95, 23, 235, 0.05);
            transform: translateY(-3px);
        }

        .scenario-option.selected {
            border-color: var(--color-primary);
            background: rgba(95, 23, 235, 0.1);
            font-weight: 600;
        }

        .scenario-option.correct {
            border-color: var(--color-success);
            background: rgba(16, 185, 129, 0.1);
        }

        .scenario-option.incorrect {
            border-color: var(--color-danger);
            background: rgba(239, 68, 68, 0.1);
            animation: shake 0.5s ease;
        }

        .option-checkbox {
            width: 24px;
            height: 24px;
            border-radius: 50%;
            border: 2px solid rgba(95, 23, 235, 0.3);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .scenario-option.selected .option-checkbox {
            background: var(--color-primary);
            border-color: var(--color-primary);
            color: white;
        }

        .option-content {
            flex-grow: 1;
        }

        .option-text {
            font-weight: 600;
            color: var(--color-text);
            margin-bottom: 5px;
        }

        .option-consequence {
            font-size: 0.85rem;
            color: var(--color-muted);
        }

        /* Feedback Display */
        .feedback-display {
            background: rgba(95, 23, 235, 0.03);
            border-radius: var(--radius-sm);
            padding: 25px;
            margin-top: 20px;
            border-left: 4px solid var(--color-primary);
            display: none;
        }

        .feedback-display.show {
            display: block;
            animation: slideInRight 0.5s ease;
        }

        .feedback-header {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 15px;
        }

        .feedback-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--color-primary);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
            font-weight: bold;
            flex-shrink: 0;
        }

        .feedback-icon.correct {
            background: var(--color-success);
        }

        .feedback-icon.incorrect {
            background: var(--color-danger);
        }

        .feedback-title {
            font-size: 1.1rem;
            font-weight: 800;
            color: var(--color-text);
        }

        .feedback-content {
            font-size: 0.95rem;
            color: var(--color-text);
            line-height: 1.7;
        }

        .feedback-content strong {
            color: var(--color-primary);
            font-weight: 700;
        }

        .penalty-box {
            background: rgba(239, 68, 68, 0.05);
            border-left: 3px solid var(--color-danger);
            padding: 15px;
            margin: 15px 0;
            border-radius: 0 var(--radius-sm) var(--radius-sm) 0;
        }

        .benefit-box {
            background: rgba(16, 185, 129, 0.05);
            border-left: 3px solid var(--color-success);
            padding: 15px;
            margin: 15px 0;
            border-radius: 0 var(--radius-sm) var(--radius-sm) 0;
        }

        /* Impact Visualization */
        .impact-visualization {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 30px;
        }

        @media (max-width: 900px) {
            .impact-visualization { grid-template-columns: 1fr; }
        }

        .impact-card {
            background: white;
            border-radius: var(--radius-md);
            padding: 25px;
            text-align: center;
            border: 2px solid rgba(95, 23, 235, 0.1);
            transition: all 0.3s ease;
        }

        .impact-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
        }

        .impact-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
            display: block;
        }

        .impact-stat {
            font-size: 2rem;
            font-weight: 900;
            color: var(--color-primary);
            margin-bottom: 10px;
            display: block;
        }

        .impact-label {
            font-size: 0.9rem;
            color: var(--color-muted);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        /* Action Buttons */
        .action-buttons {
            display: flex;
            gap: 12px;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 14px 28px;
            border-radius: var(--radius-md);
            border: none;
            font-size: 0.9rem;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .btn-primary {
            background: var(--color-primary);
            color: white;
            border: 2px solid var(--color-primary);
        }

        .btn-primary:hover {
            background: #4c0fcf;
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(95, 23, 235, 0.4);
            animation: glow 1.5s infinite;
        }

        .btn-secondary {
            background: white;
            color: var(--color-primary);
            border: 2px solid var(--color-primary);
        }

        .btn-secondary:hover {
            background: rgba(95, 23, 235, 0.1);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(95, 23, 235, 0.2);
        }

        .btn-icon { 
            font-size: 1.2em; 
            font-weight: bold;
        }

        /* Compliance Check */
        .compliance-check {
            background: linear-gradient(135deg, #000000 0%, #1a1a1a 100%);
            color: white;
            border-radius: var(--radius-md);
            padding: 40px;
            margin-top: 40px;
            border: 2px solid var(--color-primary);
            display: none;
        }

        .compliance-check.show {
            display: block;
            animation: fadeIn 0.8s ease;
        }

        .compliance-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .compliance-title {
            font-size: 1.8rem;
            font-weight: 800;
            color: white;
            margin-bottom: 10px;
        }

        .compliance-score {
            font-size: 4rem;
            font-weight: 900;
            color: var(--color-primary);
            text-align: center;
            margin: 30px 0;
            text-shadow: 0 0 25px rgba(95, 23, 235, 0.7);
            animation: pulse 2s infinite;
        }

        .compliance-breakdown {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 25px;
            margin-top: 30px;
        }

        @media (max-width: 600px) {
            .compliance-breakdown { grid-template-columns: 1fr; }
        }

        .compliance-area {
            background: rgba(255, 255, 255, 0.05);
            border-radius: var(--radius-sm);
            padding: 20px;
            border-left: 4px solid var(--color-primary);
        }

        .area-title {
            font-size: 1.1rem;
            font-weight: 800;
            color: var(--color-primary);
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .area-status {
            font-size: 0.9rem;
            color: #e5e7eb;
            line-height: 1.6;
        }

        .status-compliant {
            color: var(--color-success);
            font-weight: 700;
        }

        .status-noncompliant {
            color: var(--color-danger);
            font-weight: 700;
        }
    </style>
</head>
<body>
    <main class="page" aria-labelledby="module-heading">
        <!-- Header -->
        <header class="brand-row">
            <div class="brand">
                <img
                    src="https://lwfiles.mycourse.app/vadrivingclinic-public/9f5c6b8121721c8ef241f929fd983b3e.png"
                    alt="VA Driving Clinic logo"
                    class="brand-logo"
                />
                <div class="course-meta">
                    <span class="course-name">VA Driving Clinic • Legislative Update</span>
                    <div class="week-label">
                        <span class="week-label-dot"></span>
                        <span>New Legislation in Virginia</span>
                    </div>
                </div>
            </div>
            <span class="badge-mode">Interactive Simulation</span>
        </header>

        <h1 id="module-heading">New Legislation in Virginia</h1>
        <p class="module-subtitle">
            Stay current with Virginia's latest driving laws and regulations through this interactive simulation.
            Experience real-world scenarios that demonstrate new legislation in action, understand penalties for non-compliance,
            and learn how these changes improve road safety and environmental protection.
        </p>

        <!-- Time Estimate Banner -->
        <div class="time-estimate-banner">
            <div class="time-estimate-icon">
                ⏱️
            </div>
            <div class="time-estimate-content">
                <h3>Simulation Time Estimate</h3>
                <p>Complete this legislative awareness simulation in approximately <span class="time-highlight">5 minutes</span>. Test your knowledge of new laws through interactive scenarios.</p>
            </div>
        </div>

        <!-- Legislation Timeline -->
        <div class="legislation-timeline">
            <div class="timeline-item active" data-legislation="hands-free">
                <div class="timeline-marker">
                    <span class="timeline-marker-icon">1</span>
                </div>
                <div class="timeline-category category-safety">Safety</div>
                <h3 class="timeline-title">Hands-Free Driving Law</h3>
                <div class="timeline-effective">Effective: January 1, 2021</div>
                <p class="timeline-summary">
                    Prohibits holding mobile devices while driving. Drivers may only use hands-free devices for calls.
                    Emergency situations and mounted GPS devices are exempted.
                </p>
            </div>

            <div class="timeline-item" data-legislation="work-zone">
                <div class="timeline-marker">
                    <span class="timeline-marker-icon">2</span>
                </div>
                <div class="timeline-category category-safety">Safety</div>
                <h3 class="timeline-title">Work Zone Speed Penalties</h3>
                <div class="timeline-effective">Enhanced: 2022</div>
                <p class="timeline-summary">
                    Dramatically increased fines for speeding in work zones: $500 minimum without workers present,
                    $2,500+ when workers are present. Doubled fines in construction zones.
                </p>
            </div>

            <div class="timeline-item" data-legislation="clean-cars">
                <div class="timeline-marker">
                    <span class="timeline-marker-icon">3</span>
                </div>
                <div class="timeline-category category-environment">Environment</div>
                <h3 class="timeline-title">Clean Cars Act</h3>
                <div class="timeline-effective">Phase-in: 2025 Model Year</div>
                <p class="timeline-summary">
                    Adopts California's strict vehicle emissions standards. Requires manufacturers to deliver increasing
                    percentages of zero-emission vehicles for sale in Virginia.
                </p>
            </div>

            <div class="timeline-item" data-legislation="ev-infrastructure">
                <div class="timeline-marker">
                    <span class="timeline-marker-icon">4</span>
                </div>
                <div class="timeline-category category-environment">Environment</div>
                <h3 class="timeline-title">EV Charging Infrastructure</h3>
                <div class="timeline-effective">Ongoing Implementation</div>
                <p class="timeline-summary">
                    Grants and incentives for installing EV charging stations statewide. Targets reduction of "range anxiety"
                    and supports transition to electric vehicles.
                </p>
            </div>

            <div class="timeline-item" data-legislation="gdl-updates">
                <div class="timeline-marker">
                    <span class="timeline-marker-icon">5</span>
                </div>
                <div class="timeline-category category-education">Education</div>
                <h3 class="timeline-title">GDL Program Updates</h3>
                <div class="timeline-effective">Updated: 2023</div>
                <p class="timeline-summary">
                    Extended supervised driving hours, mandatory driver education courses, and stricter penalties for
                    teen driver violations during probationary periods.
                </p>
            </div>
        </div>

        <!-- Interactive Scenario Container -->
        <div class="scenario-container active" id="scenario-hands-free">
            <div class="scenario-header">
                <div class="scenario-icon">📱</div>
                <div>
                    <h3 class="scenario-title">Hands-Free Driving Scenario</h3>
                    <div class="timeline-category category-safety" style="display: inline-block;">Active Legislation</div>
                </div>
            </div>
            
            <p class="scenario-description">
                You're driving on I-66 during rush hour. Your phone rings with an important call from your child's school.
                The call could be urgent, but you know Virginia's Hands-Free Law prohibits holding phones while driving.
            </p>

            <div class="scenario-question">What should you do in this situation?</div>
            
            <div class="scenario-options">
                <div class="scenario-option" data-option="A">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Answer the call quickly</div>
                        <div class="option-consequence">Hold phone to ear for just a minute</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="B">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Pull over safely to answer</div>
                        <div class="option-consequence">Find parking lot or rest area</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="C">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Use hands-free device</div>
                        <div class="option-consequence">Bluetooth or speakerphone only</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="D">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Ignore the call completely</div>
                        <div class="option-consequence">Check voicemail at destination</div>
                    </div>
                </div>
            </div>
            
            <div class="feedback-display" id="feedback-hands-free">
                <div class="feedback-header">
                    <div class="feedback-icon correct">✓</div>
                    <div class="feedback-title">Correct Choices</div>
                </div>
                <div class="feedback-content">
                    <strong>Virginia Hands-Free Law Analysis:</strong><br><br>
                    
                    • <strong>Option B & C are both legal:</strong> You may pull over safely OR use hands-free technology.<br>
                    • <strong>Option A is ILLEGAL:</strong> Holding any mobile device while driving violates Virginia law.<br>
                    • <strong>Option D is legal but impractical:</strong> If urgent, use hands-free or pull over.<br><br>
                    
                    <div class="penalty-box">
                        <strong>⚠️ Penalties for Violation:</strong><br>
                        • First offense: $125 fine<br>
                        • Subsequent offenses: $250 fine<br>
                        • In work zones: Fines are DOUBLED<br>
                        • 3+ offenses: Possible license suspension
                    </div>
                    
                    <div class="benefit-box">
                        <strong>✅ Safety Benefits:</strong><br>
                        • 24% reduction in distraction-related crashes in states with hands-free laws<br>
                        • Estimated 15+ lives saved annually in Virginia<br>
                        • Reduced insurance claims for distracted driving incidents
                    </div>
                </div>
            </div>
        </div>

        <!-- Work Zone Scenario -->
        <div class="scenario-container" id="scenario-work-zone">
            <div class="scenario-header">
                <div class="scenario-icon">🚧</div>
                <div>
                    <h3 class="scenario-title">Work Zone Speed Enforcement</h3>
                    <div class="timeline-category category-safety" style="display: inline-block;">Enhanced Penalties</div>
                </div>
            </div>
            
            <p class="scenario-description">
                You're driving through a highway construction zone with reduced speed limits. 
                The signs indicate 45 mph, but traffic is flowing at 60 mph. 
                You notice construction workers actively working just beyond the barrier.
            </p>

            <div class="scenario-question">How should you adjust your driving in this work zone?</div>
            
            <div class="scenario-options">
                <div class="scenario-option" data-option="A">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Match traffic speed (60 mph)</div>
                        <div class="option-consequence">"Go with the flow" of traffic</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="B">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Slow to posted 45 mph limit</div>
                        <div class="option-consequence">Observe all work zone signs</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="C">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Speed up to get through quickly</div>
                        <div class="option-consequence">65+ mph to minimize time in zone</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="D">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Drive 35 mph for extra safety</div>
                        <div class="option-consequence">Well below posted limit</div>
                    </div>
                </div>
            </div>
            
            <div class="feedback-display" id="feedback-work-zone">
                <div class="feedback-header">
                    <div class="feedback-icon correct">✓</div>
                    <div class="feedback-title">Correct Response</div>
                </div>
                <div class="feedback-content">
                    <strong>Virginia Work Zone Law Analysis:</strong><br><br>
                    
                    • <strong>Option B is REQUIRED:</strong> You must obey posted work zone speed limits.<br>
                    • <strong>Options A & C are ILLEGAL:</strong> Both carry enhanced penalties in work zones.<br>
                    • <strong>Option D could be dangerous:</strong> Driving too slowly can cause traffic hazards.<br><br>
                    
                    <div class="penalty-box">
                        <strong>⚠️ Enhanced Work Zone Penalties:</strong><br>
                        • Speeding without workers present: $500 minimum fine<br>
                        • Speeding with workers present: $2,500+ fine<br>
                        • Possible reckless driving charge<br>
                        • Automatic court appearance required<br>
                        • 6 DMV points on license
                    </div>
                    
                    <div class="benefit-box">
                        <strong>✅ Safety Impact:</strong><br>
                        • 40% reduction in work zone fatalities since enhanced penalties<br>
                        • Better protection for 15,000+ Virginia construction workers<br>
                        • Reduced severity of work zone crashes by 35%
                    </div>
                </div>
            </div>
        </div>

        <!-- Clean Cars Scenario -->
        <div class="scenario-container" id="scenario-clean-cars">
            <div class="scenario-header">
                <div class="scenario-icon">🌱</div>
                <div>
                    <h3 class="scenario-title">Clean Cars Act Impact</h3>
                    <div class="timeline-category category-environment" style="display: inline-block;">Environmental Law</div>
                </div>
            </div>
            
            <p class="scenario-description">
                You're shopping for a new vehicle in 2025. The dealer shows you traditional gasoline vehicles,
                hybrids, and fully electric vehicles. Virginia's Clean Cars Act is now in effect for new model years.
            </p>

            <div class="scenario-question">How does this legislation affect your vehicle purchase options?</div>
            
            <div class="scenario-options">
                <div class="scenario-option" data-option="A">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">No effect on purchase options</div>
                        <div class="option-consequence">Buy any vehicle you want</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="B">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">More electric/hybrid choices</div>
                        <div class="option-consequence">Manufacturers must offer cleaner vehicles</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="C">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Gas vehicles will be banned</div>
                        <div class="option-consequence">Only electric vehicles available</div>
                    </div>
                </div>
                
                <div class="scenario-option" data-option="D">
                    <div class="option-checkbox"></div>
                    <div class="option-content">
                        <div class="option-text">Higher prices for all vehicles</div>
                        <div class="option-consequence">New standards increase costs</div>
                    </div>
                </div>
            </div>
            
            <div class="feedback-display" id="feedback-clean-cars">
                <div class="feedback-header">
                    <div class="feedback-icon correct">✓</div>
                    <div class="feedback-title">Legislation Impact</div>
                </div>
                <div class="feedback-content">
                    <strong>Clean Cars Act Analysis:</strong><br><br>
                    
                    • <strong>Option B is correct:</strong> Manufacturers must deliver increasing percentages of zero-emission vehicles.<br>
                    • <strong>Option A is incorrect:</strong> Legislation DOES affect vehicle availability.<br>
                    • <strong>Option C is exaggerated:</strong> Gas vehicles aren't banned, but cleaner options increase.<br>
                    • <strong>Option D may be partially true:</strong> Advanced technology may increase some costs initially.<br><br>
                    
                    <div class="benefit-box">
                        <strong>✅ Environmental Benefits:</strong><br>
                        • 30% reduction in new vehicle emissions by 2030<br>
                        • 50,000+ electric vehicles expected on VA roads by 2025<br>
                        • $250 million in public health savings annually<br>
                        • Reduced dependence on fossil fuels
                    </div>
                    
                    <div class="penalty-box" style="background: rgba(59, 130, 246, 0.05); border-left-color: var(--color-infrastructure);">
                        <strong>⚡ Consumer Incentives:</strong><br>
                        • $2,500 state rebate for EV purchases<br>
                        • Federal tax credits up to $7,500<br>
                        • Reduced registration fees for clean vehicles<br>
                        • HOV lane access for qualifying vehicles
                    </div>
                </div>
            </div>
        </div>

        <!-- Impact Visualization -->
        <div class="impact-visualization">
            <div class="impact-card">
                <span class="impact-icon">📉</span>
                <span class="impact-stat" id="distraction-reduction">24%</span>
                <span class="impact-label">Distraction Crashes Reduced</span>
            </div>
            
            <div class="impact-card">
                <span class="impact-icon">💰</span>
                <span class="impact-stat" id="fines-collected">$8.2M</span>
                <span class="impact-label">Work Zone Fines Collected</span>
            </div>
            
            <div class="impact-card">
                <span class="impact-icon">⚡</span>
                <span class="impact-stat" id="ev-chargers">1,200+</span>
                <span class="impact-label">New EV Chargers Installed</span>
            </div>
        </div>

        <!-- Action Buttons -->
        <div class="action-buttons">
            <button class="btn btn-secondary" id="next-scenario-btn">
                <span class="btn-icon">→</span>
                Next Legislation
            </button>
            <button class="btn btn-secondary" id="check-answers-btn">
                <span class="btn-icon">✓</span>
                Check All Answers
            </button>
            <button class="btn btn-primary" id="compliance-check-btn">
                <span class="btn-icon">📊</span>
                Check Your Compliance
            </button>
        </div>

        <!-- Compliance Check Results -->
        <div class="compliance-check" id="compliance-check">
            <div class="compliance-header">
                <h2 class="compliance-title">Legislative Compliance Assessment</h2>
                <p style="color: #e5e7eb; max-width: 600px; margin: 0 auto;">
                    Based on your responses, here's how well you understand and comply with Virginia's new legislation
                </p>
            </div>
            
            <div class="compliance-score" id="compliance-score">85%</div>
            
            <div class="compliance-breakdown">
                <div class="compliance-area">
                    <h3 class="area-title"><span>📱</span> Hands-Free Compliance</h3>
                    <p class="area-status">
                        Status: <span class="status-compliant" id="hands-free-status">COMPLIANT</span><br>
                        You correctly identified legal hands-free options and understood the $125-$250 fine structure.
                    </p>
                </div>
                
                <div class="compliance-area">
                    <h3 class="area-title"><span>🚧</span> Work Zone Awareness</h3>
                    <p class="area-status">
                        Status: <span class="status-compliant" id="work-zone-status">COMPLIANT</span><br>
                        You recognized the enhanced penalties and importance of obeying posted speed limits.
                    </p>
                </div>
                
                <div class="compliance-area">
                    <h3 class="area-title"><span>🌱</span> Environmental Regulations</h3>
                    <p class="area-status">
                        Status: <span class="status-compliant" id="environment-status">AWARE</span><br>
                        You understand how the Clean Cars Act affects vehicle availability and environmental impact.
                    </p>
                </div>
                
                <div class="compliance-area">
                    <h3 class="area-title"><span>👨‍🏫</span> Education Updates</h3>
                    <p class="area-status">
                        Status: <span class="status-noncompliant" id="education-status">NEEDS REVIEW</span><br>
                        Consider reviewing GDL program updates for teen drivers in your household.
                    </p>
                </div>
            </div>
            
            <div style="text-align: center; margin-top: 30px;">
                <button class="btn btn-primary" id="retake-assessment-btn">
                    <span class="btn-icon">↻</span>
                    Retake Assessment
                </button>
            </div>
        </div>
    </main>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // State Management
            const state = {
                currentLegislation: 'hands-free',
                completedScenarios: [],
                answers: {},
                scores: {
                    'hands-free': 0,
                    'work-zone': 0,
                    'clean-cars': 0
                }
            };

            // Correct answers for each scenario
            const correctAnswers = {
                'hands-free': ['B', 'C'], // Multiple correct options
                'work-zone': ['B'],
                'clean-cars': ['B']
            };

            // Scenario explanations
            const scenarioExplanations = {
                'hands-free': {
                    correct: ['B', 'C'],
                    explanation: 'Virginia law allows either pulling over safely OR using hands-free technology. Holding a phone is prohibited.'
                },
                'work-zone': {
                    correct: ['B'],
                    explanation: 'You must obey posted work zone speed limits regardless of traffic flow. Enhanced penalties apply.'
                },
                'clean-cars': {
                    correct: ['B'],
                    explanation: 'The Clean Cars Act requires manufacturers to offer more electric/hybrid options, not ban gas vehicles.'
                }
            };

            // DOM Elements
            const timelineItems = document.querySelectorAll('.timeline-item');
            const scenarioContainers = document.querySelectorAll('.scenario-container');
            const scenarioOptions = document.querySelectorAll('.scenario-option');
            const feedbackDisplays = document.querySelectorAll('.feedback-display');
            const nextScenarioBtn = document.getElementById('next-scenario-btn');
            const checkAnswersBtn = document.getElementById('check-answers-btn');
            const complianceCheckBtn = document.getElementById('compliance-check-btn');
            const complianceCheck = document.getElementById('compliance-check');
            const complianceScore = document.getElementById('compliance-score');
            const retakeBtn = document.getElementById('retake-assessment-btn');
            const impactStats = {
                'distraction-reduction': document.getElementById('distraction-reduction'),
                'fines-collected': document.getElementById('fines-collected'),
                'ev-chargers': document.getElementById('ev-chargers')
            };

            // Initialize simulation
            function initSimulation() {
                setupEventListeners();
                updateImpactStats();
            }

            // Setup event listeners
            function setupEventListeners() {
                // Timeline item clicks
                timelineItems.forEach(item => {
                    item.addEventListener('click', function() {
                        const legislation = this.dataset.legislation;
                        
                        // Update active states
                        timelineItems.forEach(i => i.classList.remove('active'));
                        this.classList.add('active');
                        
                        // Show corresponding scenario
                        showScenario(legislation);
                    });
                });

                // Scenario option clicks
                scenarioOptions.forEach(option => {
                    option.addEventListener('click', function() {
                        const scenarioContainer = this.closest('.scenario-container');
                        const scenarioId = scenarioContainer.id.replace('scenario-', '');
                        const optionLetter = this.dataset.option;
                        
                        // Clear other selections in this scenario
                        const otherOptions = scenarioContainer.querySelectorAll('.scenario-option');
                        otherOptions.forEach(opt => opt.classList.remove('selected'));
                        
                        // Select this option
                        this.classList.add('selected');
                        
                        // Store answer
                        state.answers[scenarioId] = optionLetter;
                        
                        // Check answer and show feedback
                        checkAnswer(scenarioId, optionLetter);
                        
                        // Mark scenario as attempted
                        if (!state.completedScenarios.includes(scenarioId)) {
                            state.completedScenarios.push(scenarioId);
                        }
                    });
                });

                // Next scenario button
                nextScenarioBtn.addEventListener('click', function() {
                    const scenarios = ['hands-free', 'work-zone', 'clean-cars'];
                    const currentIndex = scenarios.indexOf(state.currentLegislation);
                    
                    if (currentIndex < scenarios.length - 1) {
                        const nextScenario = scenarios[currentIndex + 1];
                        showScenario(nextScenario);
                        
                        // Update timeline
                        timelineItems.forEach(item => {
                            item.classList.remove('active');
                            if (item.dataset.legislation === nextScenario) {
                                item.classList.add('active');
                            }
                        });
                    } else {
                        // Loop back to first scenario
                        showScenario('hands-free');
                        timelineItems.forEach((item, index) => {
                            item.classList.remove('active');
                            if (index === 0) item.classList.add('active');
                        });
                    }
                });

                // Check all answers button
                checkAnswersBtn.addEventListener('click', function() {
                    // Show all feedback displays
                    feedbackDisplays.forEach(feedback => {
                        feedback.classList.add('show');
                    });
                    
                    // Auto-answer any unanswered scenarios
                    const scenarios = ['hands-free', 'work-zone', 'clean-cars'];
                    scenarios.forEach(scenario => {
                        if (!state.answers[scenario]) {
                            // Auto-select correct answer
                            const scenarioContainer = document.getElementById(`scenario-${scenario}`);
                            const correctOption = scenarioContainer.querySelector(`[data-option="${correctAnswers[scenario][0]}"]`);
                            if (correctOption) {
                                correctOption.click();
                            }
                        }
                    });
                    
                    // Update impact stats with animation
                    animateImpactStats();
                });

                // Compliance check button
                complianceCheckBtn.addEventListener('click', function() {
                    calculateComplianceScore();
                    complianceCheck.classList.add('show');
                    complianceCheck.scrollIntoView({ behavior: 'smooth' });
                });

                // Retake assessment button
                retakeBtn.addEventListener('click', function() {
                    resetSimulation();
                });
            }

            // Show specific scenario
            function showScenario(legislation) {
                state.currentLegislation = legislation;
                
                // Hide all scenarios
                scenarioContainers.forEach(container => {
                    container.classList.remove('active');
                });
                
                // Show selected scenario
                const targetScenario = document.getElementById(`scenario-${legislation}`);
                if (targetScenario) {
                    targetScenario.classList.add('active');
                    targetScenario.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
                }
                
                // Hide all feedback initially
                feedbackDisplays.forEach(feedback => {
                    feedback.classList.remove('show');
                });
            }

            // Check answer for a scenario
            function checkAnswer(scenarioId, selectedOption) {
                const feedback = document.getElementById(`feedback-${scenarioId}`);
                const correct = correctAnswers[scenarioId];
                const isCorrect = correct.includes(selectedOption);
                
                // Mark options as correct/incorrect
                const scenarioContainer = document.getElementById(`scenario-${scenarioId}`);
                const options = scenarioContainer.querySelectorAll('.scenario-option');
                
                options.forEach(option => {
                    option.classList.remove('correct', 'incorrect');
                    
                    const optionLetter = option.dataset.option;
                    if (correct.includes(optionLetter)) {
                        option.classList.add('correct');
                    } else if (optionLetter === selectedOption && !isCorrect) {
                        option.classList.add('incorrect');
                    }
                });
                
                // Update score
                state.scores[scenarioId] = isCorrect ? 100 : 0;
                
                // Update feedback icon
                const feedbackIcon = feedback.querySelector('.feedback-icon');
                feedbackIcon.className = `feedback-icon ${isCorrect ? 'correct' : 'incorrect'}`;
                feedbackIcon.textContent = isCorrect ? '✓' : '✗';
                
                // Update feedback title
                const feedbackTitle = feedback.querySelector('.feedback-title');
                feedbackTitle.textContent = isCorrect ? 'Correct!' : 'Incorrect';
                
                // Show feedback
                feedback.classList.add('show');
                feedback.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
            }

            // Calculate compliance score
            function calculateComplianceScore() {
                let totalScore = 0;
                let completedCount = 0;
                
                // Calculate average score
                Object.values(state.scores).forEach(score => {
                    if (score > 0) {
                        totalScore += score;
                        completedCount++;
                    }
                });
                
                const averageScore = completedCount > 0 ? Math.round(totalScore / completedCount) : 0;
                complianceScore.textContent = `${averageScore}%`;
                
                // Update status indicators
                updateStatusIndicators(averageScore);
            }

            // Update status indicators
            function updateStatusIndicators(score) {
                const statusElements = {
                    'hands-free-status': document.getElementById('hands-free-status'),
                    'work-zone-status': document.getElementById('work-zone-status'),
                    'environment-status': document.getElementById('environment-status'),
                    'education-status': document.getElementById('education-status')
                };
                
                // Set status based on scores
                statusElements['hands-free-status'].textContent = state.scores['hands-free'] >= 50 ? 'COMPLIANT' : 'NEEDS REVIEW';
                statusElements['hands-free-status'].className = state.scores['hands-free'] >= 50 ? 'status-compliant' : 'status-noncompliant';
                
                statusElements['work-zone-status'].textContent = state.scores['work-zone'] >= 50 ? 'COMPLIANT' : 'NEEDS REVIEW';
                statusElements['work-zone-status'].className = state.scores['work-zone'] >= 50 ? 'status-compliant' : 'status-noncompliant';
                
                statusElements['environment-status'].textContent = state.scores['clean-cars'] >= 50 ? 'AWARE' : 'NEEDS REVIEW';
                statusElements['environment-status'].className = state.scores['clean-cars'] >= 50 ? 'status-compliant' : 'status-noncompliant';
                
                // Education status (always needs review as it wasn't tested)
                statusElements['education-status'].textContent = 'NEEDS REVIEW';
                statusElements['education-status'].className = 'status-noncompliant';
            }

            // Update impact statistics
            function updateImpactStats() {
                // Set initial values
                impactStats['distraction-reduction'].textContent = '24%';
                impactStats['fines-collected'].textContent = '$8.2M';
                impactStats['ev-chargers'].textContent = '1,200+';
            }

            // Animate impact statistics
            function animateImpactStats() {
                // Animate each stat
                animateCounter(impactStats['distraction-reduction'], 0, 24, 1500, '%');
                animateCounter(impactStats['fines-collected'], 0, 8.2, 1500, 'M', '$');
                animateCounter(impactStats['ev-chargers'], 0, 1200, 1500, '+');
            }

            // Animate counter
            function animateCounter(element, start, end, duration, suffix = '', prefix = '') {
                let startTimestamp = null;
                const step = (timestamp) => {
                    if (!startTimestamp) startTimestamp = timestamp;
                    const progress = Math.min((timestamp - startTimestamp) / duration, 1);
                    const value = progress * (end - start) + start;
                    
                    if (suffix === 'M' || suffix === '%') {
                        element.textContent = `${prefix}${value.toFixed(1)}${suffix}`;
                    } else {
                        element.textContent = `${prefix}${Math.floor(value)}${suffix}`;
                    }
                    
                    if (progress < 1) {
                        window.requestAnimationFrame(step);
                    }
                };
                window.requestAnimationFrame(step);
            }

            // Reset simulation
            function resetSimulation() {
                // Reset state
                state.currentLegislation = 'hands-free';
                state.completedScenarios = [];
                state.answers = {};
                state.scores = {
                    'hands-free': 0,
                    'work-zone': 0,
                    'clean-cars': 0
                };
                
                // Reset UI
                timelineItems.forEach((item, index) => {
                    item.classList.remove('active');
                    if (index === 0) item.classList.add('active');
                });
                
                scenarioContainers.forEach(container => {
                    container.classList.remove('active');
                    if (container.id === 'scenario-hands-free') {
                        container.classList.add('active');
                    }
                    
                    // Reset options
                    const options = container.querySelectorAll('.scenario-option');
                    options.forEach(option => {
                        option.classList.remove('selected', 'correct', 'incorrect');
                    });
                });
                
                feedbackDisplays.forEach(feedback => {
                    feedback.classList.remove('show');
                });
                
                complianceCheck.classList.remove('show');
                
                // Reset impact stats
                updateImpactStats();
                
                // Scroll to top
                window.scrollTo({ top: 0, behavior: 'smooth' });
            }

            // Initialize the simulation
            initSimulation();
            
            // Auto-click first scenario option for demo
            setTimeout(() => {
                const firstOption = document.querySelector('#scenario-hands-free .scenario-option[data-option="C"]');
                if (firstOption) firstOption.click();
            }, 1000);
        });
    </script>
</body>
</html>
