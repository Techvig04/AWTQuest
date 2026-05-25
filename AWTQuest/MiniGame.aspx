<%@ Page Title="Mini Games" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiniGame.aspx.cs" Inherits="AWTQuest.MiniGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .game-btn { width: 100%; padding: 15px; margin-bottom: 12px; border: 2px solid #6f42c1; border-radius: 8px; background: white; cursor: pointer; transition: 0.2s; font-weight: bold; font-size: 0.95rem; }
        .game-btn:hover { background: #e9ecef; }
        .game-btn.selected { background: #ffc107; color: black; border-color: #ffc107; transform: scale(1.05); }
        .game-btn.matched { background: #198754; color: white; border-color: #198754; pointer-events: none; opacity: 0.8; }
        .game-btn.error { background: #dc3545; color: white; border-color: #dc3545; animation: shake 0.4s; }
        .game-board { background-color: #f8f9fa; border-radius: 15px; padding: 30px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); display: none; }
        .level-btn { border-radius: 50px; padding: 10px 20px; margin: 5px; font-weight: bold; }
        
        @keyframes shake {
            0% { transform: translateX(0); }
            25% { transform: translateX(-10px); }
            50% { transform: translateX(10px); }
            75% { transform: translateX(-10px); }
            100% { transform: translateX(0); }
        }
    </style>

    <div class="container mt-4 mb-5 text-center">
        <h1 class="fw-bold text-primary">🧩 The Grand Arcade</h1>
        <p class="text-muted fs-5">Select a vault to unlock. PG Masterclass vaults reward <strong class="text-danger">200 XP!</strong></p>

        <!-- STANDARD LEVEL SELECTOR -->
        <div class="mb-3 mt-4">
            <h5 class="text-muted fw-bold">Undergrad Modules (+50 XP)</h5>
            <button type="button" class="btn btn-outline-primary level-btn" onclick="loadLevel('1')">Mod 1: Intro</button>
            <button type="button" class="btn btn-outline-primary level-btn" onclick="loadLevel('2')">Mod 2: UI</button>
            <button type="button" class="btn btn-outline-primary level-btn" onclick="loadLevel('3')">Mod 3: DB & LINQ</button>
            <button type="button" class="btn btn-outline-primary level-btn" onclick="loadLevel('4')">Mod 4: State</button>
            <button type="button" class="btn btn-outline-primary level-btn" onclick="loadLevel('5')">Mod 5: WCF</button>
            <button type="button" class="btn btn-outline-primary level-btn" onclick="loadLevel('6')">Mod 6: MVC</button>
        </div>

        <!-- PG MASTERCLASS SELECTOR -->
        <div class="mb-4 pt-3 border-top border-2 border-danger">
            <h5 class="text-danger fw-bold">🎓 PG Masterclass (Advanced Concepts)</h5>
            <button type="button" class="btn btn-outline-danger level-btn" onclick="loadLevel('PG1')">Game 1: System Architect</button>
            <button type="button" class="btn btn-outline-dark level-btn" onclick="loadLevel('PG2')">Game 2: Pipeline Hacker</button>
            <button type="button" class="btn btn-outline-danger level-btn" onclick="loadLevel('PG3')">Game 3: Security Enforcer</button>
            <button type="button" class="btn btn-outline-dark level-btn" onclick="loadLevel('PG4')">Game 4: DevOps Engineer</button>
        </div>

        <h3 id="currentLevelTitle" class="fw-bold text-dark mt-3" style="display:none;"></h3>

        <!-- THE GAME BOARD -->
        <div class="row mt-3 game-board align-items-center" id="boardArea">
            <!-- DYNAMIC CONTENT INJECTED HERE VIA JS -->
        </div>

        <!-- HIDDEN ASP.NET CONTROLS to save the score -->
        <asp:HiddenField ID="hfGameScore" runat="server" Value="0" />
        
        <!-- WIN SCREEN -->
        <div class="mt-5" id="claimRewardDiv" style="display: none;">
            <h2 class="text-success fw-bold">🎉 Vault Unlocked! 🎉</h2>
            <p class="text-muted" id="winMessage">You have mastered this concept.</p>
            <asp:Button ID="btnClaimXP" runat="server" Text="Claim XP & Go to Hub" CssClass="btn btn-success btn-lg fw-bold shadow-lg mt-2 px-5 py-3 rounded-pill" OnClick="btnClaimXP_Click" />
        </div>
    </div>

    <!-- The Interactive JavaScript Data & Logic -->
    <script>
        // MASTER DICTIONARY
        const gameData = {
            // STANDARD UNDERGRAD MATCHERS
            '1': {
                type: "matcher", xp: 50, title: "Module 1: Introduction to ASP.NET", pairs: [
                    { t: "Page Life Cycle", d: "Init, Load, PreRender, Unload." }, { t: "Postback", d: "Sending data back to the server." }, { t: "AutoPostBack", d: "Instantly triggers a server trip when changed." }, { t: "ASP.NET Objects", d: "Built-in objects like Request and Response." }, { t: "Cross Page Posting", d: "Submitting a form to a different page." }
                ]
            },
            '2': {
                type: "matcher", xp: 50, title: "Module 2: UI & Controls", pairs: [
                    { t: "Master Page", d: "A template for consistent website layout." }, { t: "ContentPlaceHolder", d: "Region where specific page content is injected." }, { t: "RequiredFieldValidator", d: "Ensures text box is not empty." }, { t: "CompareValidator", d: "Ensures two fields match perfectly." }, { t: "AdRotator", d: "Displays random advertisement banners." }
                ]
            },
            '3': {
                type: "matcher", xp: 50, title: "Module 3: DB & LINQ", pairs: [
                    { t: "ADO.NET", d: "Framework to connect to SQL." }, { t: "SqlDataReader", d: "Connected Architecture for fast, read-only data." }, { t: "GridView", d: "Displays data in a tabular HTML table." }, { t: "LINQ", d: "Language Integrated Query in C#." }, { t: "Entity Framework", d: "ORM mapping tables to C# classes." }
                ]
            },
            '4': {
                type: "matcher", xp: 50, title: "Module 4: State Management", pairs: [
                    { t: "Session State", d: "Server data for one user." }, { t: "ViewState", d: "Client data in hidden HTML fields." }, { t: "Application State", d: "Global data for ALL users." }, { t: "ScriptManager", d: "Required to enable AJAX." }, { t: "UpdatePanel", d: "Refreshes part of a page without flicker." }
                ]
            },
            '5': {
                type: "matcher", xp: 50, title: "Module 5: WCF", pairs: [
                    { t: "Web Service", d: "Apps communicating over web via XML." }, { t: "WCF", d: "Windows Communication Foundation." }, { t: "SOAP", d: "Messaging protocol for web services." }, { t: "WCF ABCs", d: "Address, Binding, Contract." }, { t: "[ServiceContract]", d: "Attribute applied to a WCF interface." }
                ]
            },
            '6': {
                type: "matcher", xp: 50, title: "Module 6: MVC", pairs: [
                    { t: "Model", d: "Handles database logic." }, { t: "View", d: "HTML/CSS layer." }, { t: "Controller", d: "The brain connecting Model and View." }, { t: "Routing", d: "Maps URLs to Controllers." }, { t: "ViewBag", d: "Passes temp data to View." }
                ]
            },

            // ==========================================
            // PG MASTERCLASS GAMES
            // ==========================================
            'PG1': {
                type: "matcher", xp: 200, title: "PG Masterclass 1: Enterprise System Architect",
                desc: "Match the complex enterprise scenario to the correct ASP.NET technical solution.",
                pairs: [
                    { t: "Maintain state across load-balanced web servers.", d: "SQL Server Session State / Redis Cache" },
                    { t: "Pass complex data to a View without magic strings.", d: "ViewModel Pattern" },
                    { t: "Execute a heavy background processing task.", d: "HostedService / BackgroundWorker" },
                    { t: "Store 10MB of global reference data in RAM.", d: "Application Cache (MemoryCache)" },
                    { t: "Separate UI logic from Data Access securely.", d: "Repository Pattern / Dependency Injection" }
                ]
            },
            'PG2': {
                type: "sequence", xp: 200, title: "PG Masterclass 2: The MVC Pipeline Hacker",
                desc: "Click the stages of the ASP.NET MVC Request Pipeline in the EXACT chronological order. One wrong move resets the sequence!",
                sequence: [
                    "1. Routing Middleware (Matches URL)",
                    "2. Controller Initialization",
                    "3. Authorization Filters (Security Check)",
                    "4. Model Binding (Maps HTTP data to C#)",
                    "5. Action Method Execution",
                    "6. Result Execution (Renders View to HTML)"
                ]
            },
            'PG3': {
                type: "matcher", xp: 200, title: "PG Masterclass 3: The Security Enforcer",
                desc: "Cyberattack detected! Match the severe web vulnerability to its correct ASP.NET Core mitigation strategy.",
                pairs: [
                    { t: "SQL Injection", d: "Use Entity Framework Core or Parameterized SQL Queries." },
                    { t: "Cross-Site Scripting (XSS)", d: "Use @Razor syntax which auto-HTML encodes outputs." },
                    { t: "Cross-Site Request Forgery (CSRF)", d: "Apply the [ValidateAntiForgeryToken] attribute to POST actions." },
                    { t: "Over-posting / Mass Assignment", d: "Use the [Bind] attribute or strictly typed ViewModels." },
                    { t: "Session Hijacking via JavaScript", d: "Set Session Cookies to HttpOnly = true." }
                ]
            },
            'PG4': {
                type: "sequence", xp: 200, title: "PG Masterclass 4: CI/CD DevOps Engineer",
                desc: "Establish the automated deployment pipeline! Order the steps chronologically from Code Commit to Production.",
                sequence: [
                    "1. Developer pushes Code to Git Repository",
                    "2. CI Server triggers Build & Restores NuGet Packages",
                    "3. Run Automated Unit & Integration Tests",
                    "4. Publish Output & Build Release Artifact (DLLs)",
                    "5. Execute Entity Framework Database Migrations",
                    "6. Deploy Artifact to Azure App Service / IIS"
                ]
            }
        };

        // Global Game State Variables
        let currentGame = null;
        let selectedTerm = null;
        let selectedDef = null;
        let matches = 0;
        let currentSequenceStep = 0;

        // LOAD LEVEL ROUTER
        function loadLevel(id) {
            currentGame = gameData[id];

            // UI Resets
            document.getElementById('boardArea').style.display = "flex";
            document.getElementById('claimRewardDiv').style.display = "none";
            document.getElementById('currentLevelTitle').style.display = "block";

            let descHtml = currentGame.desc ? `<br><small class="text-muted fw-normal">${currentGame.desc}</small>` : '';
            document.getElementById('currentLevelTitle').innerHTML = currentGame.title + descHtml;

            document.getElementById('boardArea').innerHTML = ''; // Clear Board

            if (currentGame.type === "matcher") {
                renderMatcherGame();
            } else if (currentGame.type === "sequence") {
                renderSequenceGame();
            }
        }

        // ==========================================
        // GAME ENGINE 1: MATCHER
        // ==========================================
        function renderMatcherGame() {
            matches = 0;
            let levelData = currentGame.pairs;
            let totalPairs = levelData.length;

            let html = `
                <div class="col-md-5" id="termsBox"></div>
                <div class="col-md-2 d-flex flex-column align-items-center justify-content-center py-4">
                    <h5 class="text-muted fw-bold mb-1">Matches</h5>
                    <h2 id="gameStatus" class="fw-bold text-warning display-4">0 / ${totalPairs}</h2>
                </div>
                <div class="col-md-5" id="defsBox"></div>
            `;
            document.getElementById('boardArea').innerHTML = html;

            const termsDiv = document.getElementById('termsBox');
            const defsDiv = document.getElementById('defsBox');

            // Render Terms
            levelData.forEach((item, index) => {
                termsDiv.innerHTML += `<button type="button" class="game-btn term shadow-sm" data-match="${index}">${item.t}</button>`;
            });

            // Shuffle & Render Definitions
            let shuffledDefs = [...levelData].map((item, index) => ({ text: item.d, matchId: index }));
            shuffledDefs.sort(() => Math.random() - 0.5);
            shuffledDefs.forEach(item => {
                defsDiv.innerHTML += `<button type="button" class="game-btn def shadow-sm" data-match="${item.matchId}">${item.text}</button>`;
            });

            // Attach Click Logic
            document.querySelectorAll('.term').forEach(btn => {
                btn.addEventListener('click', function () {
                    document.querySelectorAll('.term').forEach(b => b.classList.remove('selected'));
                    this.classList.add('selected'); selectedTerm = this; checkMatch();
                });
            });
            document.querySelectorAll('.def').forEach(btn => {
                btn.addEventListener('click', function () {
                    document.querySelectorAll('.def').forEach(b => b.classList.remove('selected'));
                    this.classList.add('selected'); selectedDef = this; checkMatch();
                });
            });

            function checkMatch() {
                if (selectedTerm && selectedDef) {
                    if (selectedTerm.getAttribute('data-match') === selectedDef.getAttribute('data-match')) {
                        selectedTerm.className = "game-btn term matched shadow-sm";
                        selectedDef.className = "game-btn def matched shadow-sm";
                        matches++;
                        document.getElementById('gameStatus').innerText = `${matches} / ${totalPairs}`;
                        selectedTerm = null; selectedDef = null;

                        if (matches === totalPairs) triggerWin();
                    } else {
                        selectedTerm.classList.add('error'); selectedDef.classList.add('error');
                        setTimeout(() => {
                            selectedTerm.className = "game-btn term shadow-sm";
                            selectedDef.className = "game-btn def shadow-sm";
                            selectedTerm = null; selectedDef = null;
                        }, 500);
                    }
                }
            }
        }

        // ==========================================
        // GAME ENGINE 2: SEQUENCE 
        // ==========================================
        function renderSequenceGame() {
            currentSequenceStep = 0;
            let sequenceData = currentGame.sequence;

            let html = `
                <div class="col-md-12 text-center mb-4">
                    <h2 id="seqStatus" class="text-warning fw-bold">Step 1 of ${sequenceData.length}</h2>
                </div>
                <div class="col-md-8 mx-auto" id="sequenceBox"></div>
            `;
            document.getElementById('boardArea').innerHTML = html;

            const seqBox = document.getElementById('sequenceBox');

            // Shuffle the sequence for the UI
            let scrambled = [...sequenceData].map((text, index) => ({ text: text, realOrder: index }));
            scrambled.sort(() => Math.random() - 0.5);

            scrambled.forEach(item => {
                // We strip the "1. ", "2. " prefix so they have to actually know the order!
                let cleanText = item.text.replace(/^[0-9]\.\s/, '');
                seqBox.innerHTML += `<button type="button" class="game-btn seq-btn shadow-sm" data-order="${item.realOrder}">${cleanText}</button>`;
            });

            document.querySelectorAll('.seq-btn').forEach(btn => {
                btn.addEventListener('click', function () {
                    let clickedOrder = parseInt(this.getAttribute('data-order'));

                    if (clickedOrder === currentSequenceStep) {
                        // Correct click!
                        this.className = "game-btn seq-btn matched shadow-sm";
                        this.innerHTML = `<span class="badge bg-dark fs-6 me-2">${currentSequenceStep + 1}</span>` + this.innerHTML;
                        currentSequenceStep++;

                        if (currentSequenceStep === sequenceData.length) {
                            document.getElementById('seqStatus').innerText = "Sequence Established!";
                            document.getElementById('seqStatus').className = "text-success fw-bold";
                            triggerWin();
                        } else {
                            document.getElementById('seqStatus').innerText = `Step ${currentSequenceStep + 1} of ${sequenceData.length}`;
                        }
                    } else {
                        // Wrong click! Reset everything.
                        this.classList.add('error');
                        document.getElementById('seqStatus').innerText = "SEQUENCE COLLAPSED! Resetting...";
                        document.getElementById('seqStatus').className = "text-danger fw-bold";

                        setTimeout(() => {
                            renderSequenceGame(); // Reload the scrambled board
                        }, 1000);
                    }
                });
            });
        }

        // ==========================================
        // WIN HANDLER
        // ==========================================
        function triggerWin() {
            document.getElementById('MainContent_hfGameScore').value = currentGame.xp;
            document.getElementById('winMessage').innerText = `You earned ${currentGame.xp} XP for completing ${currentGame.title}!`;
            document.getElementById('claimRewardDiv').style.display = "block";
        }
    </script>
</asp:Content>