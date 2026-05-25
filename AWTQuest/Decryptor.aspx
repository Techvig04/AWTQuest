<%@ Page Title="Decryptor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Decryptor.aspx.cs" Inherits="AWTQuest.Decryptor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .letter-box { display: inline-block; width: 40px; height: 50px; margin: 5px; font-size: 24px; font-weight: bold; text-align: center; line-height: 50px; border-bottom: 4px solid #343a40; text-transform: uppercase; }
        .key-btn { margin: 4px; width: 45px; font-weight: bold; }
    </style>

    <div class="container mt-5 text-center mb-5">
        <h1 class="fw-bold text-dark">🔐 The Framework Decryptor</h1>
        <p class="text-muted">Guess the ASP.NET keyword before the system locks you out. <strong class="text-success">+50 XP</strong></p>

        <div class="card shadow-lg mt-4 mx-auto" style="max-width: 700px;">
            <div class="card-body p-5">
                <h4 class="text-danger fw-bold mb-3">Attempts Remaining: <span id="lives">6</span></h4>
                
                <div class="alert alert-info border-info border-2 shadow-sm mb-4">
                    <h5 class="fw-bold text-info text-dark mb-0" id="hintText">💡 Loading encrypted hint...</h5>
                </div>
                
                <div id="wordDisplay" class="mb-5"></div>

                <div id="keyboard" class="mb-4"></div>

                <asp:HiddenField ID="hfDecryptScore" runat="server" Value="0" />
                <div id="winDiv" style="display: none;">
                    <h3 class="text-success fw-bold">✅ Access Granted!</h3>
                    <asp:Button ID="btnClaim" runat="server" Text="Claim 50 XP & Return to Hub" CssClass="btn btn-success fw-bold px-5 py-3 mt-3 shadow rounded-pill" OnClick="btnClaim_Click" />
                </div>
                <div id="loseDiv" style="display: none;">
                    <h3 class="text-danger fw-bold">❌ System Locked.</h3>
                    <a href="Decryptor.aspx" class="btn btn-danger fw-bold px-5 py-3 mt-3 shadow rounded-pill">Reboot Terminal & Try Again</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        // NEW: Upgraded Dictionary with Words AND Hints
        const wordsDictionary = [
            { word: "POSTBACK", hint: "Sending webpage data back to the server for processing." },
            { word: "SESSION", hint: "Stores data on the server for a specific user across multiple requests." },
            { word: "VIEWSTATE", hint: "Maintains state across postbacks using a hidden HTML field." },
            { word: "GRIDVIEW", hint: "A powerful data-bound control used to display tabular data." },
            { word: "ROUTING", hint: "Pattern matching system that maps URLs to controllers and actions." },
            { word: "CONTROLLER", hint: "The brain in MVC that handles input and interacts with the Model." },
            { word: "MIDDLEWARE", hint: "Software assembled into the ASP.NET Core pipeline to handle requests." },
            { word: "INJECTION", hint: "Dependency _______ : A design pattern heavily used in ASP.NET Core." }
        ];

        // Pick a random object from the dictionary
        let chosenData = wordsDictionary[Math.floor(Math.random() * wordsDictionary.length)];
        let chosenWord = chosenData.word;
        let chosenHint = chosenData.hint;

        let guessedLetters = [];
        let lives = 6;

        // Initialize the Hint text on the screen
        document.getElementById("hintText").innerText = "💡 Hint: " + chosenHint;

        function renderWord() {
            let display = "";
            let win = true;
            for (let i = 0; i < chosenWord.length; i++) {
                if (guessedLetters.includes(chosenWord[i])) {
                    display += `<span class="letter-box text-success">${chosenWord[i]}</span>`;
                } else {
                    display += `<span class="letter-box text-muted">_</span>`;
                    win = false;
                }
            }
            document.getElementById("wordDisplay").innerHTML = display;

            if (win) {
                document.getElementById("keyboard").style.display = "none";
                document.getElementById("winDiv").style.display = "block";
                document.getElementById("MainContent_hfDecryptScore").value = "50";
            }
        }

        function renderKeyboard() {
            const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");
            let kbHtml = "";
            alphabet.forEach(letter => {
                kbHtml += `<button class="btn btn-outline-dark key-btn shadow-sm" onclick="guess('${letter}', this)">${letter}</button>`;
            });
            document.getElementById("keyboard").innerHTML = kbHtml;
        }

        function guess(letter, btnElement) {
            btnElement.disabled = true;
            guessedLetters.push(letter);

            if (chosenWord.includes(letter)) {
                btnElement.classList.replace("btn-outline-dark", "btn-success");
            } else {
                btnElement.classList.replace("btn-outline-dark", "btn-danger");
                lives--;
                document.getElementById("lives").innerText = lives;
                if (lives === 0) {
                    document.getElementById("keyboard").style.display = "none";
                    document.getElementById("loseDiv").style.display = "block";
                    document.getElementById("wordDisplay").innerHTML = `<h3 class="text-danger fw-bold mb-3">The word was: ${chosenWord}</h3>`;
                }
            }
            renderWord();
        }

        renderWord();
        renderKeyboard();
    </script>
</asp:Content>