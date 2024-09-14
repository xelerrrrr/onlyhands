<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-4DJG6GNVE5"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'G-4DJG6GNVE5');
    </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <style type="text/css">
        p {
            margin: 0;
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        .overlay,
        .scare {
            position: fixed;
            top: 0;
            left: 0;
            height: 100vh;
            width: 100vw;
        }

        p.overlay-title {
            font-size: 24px;
            font-weight: 900;
            color: black;
            line-height: 1;
            margin-bottom: 16px;
        }

        .overlay-button {
            display: inline-flex;
            align-items: center;
            height: 40px;
            padding-right: 24px;
            padding-left: 24px;
            font-size: 16px;
            font-weight: 500;
            line-height: 1;
            border-radius: 4px;
            margin: 4px;
            cursor: pointer;
        }

        .overlay-buttons-wrapper {
            margin: 24px -8px -8px;
        }

        #accept-button {
            background-color: rgb(255, 0, 0);
            color: white;
        }

        #decline-button {
            color: rgb(0, 0, 0);
            border: 2px solid rgb(0, 0, 0);
        }

        p.overlay-description {
            font-size: 16px;
            font-weight: 400;
            color: rgba(0, 0, 0, 0.5);
            line-height: 1.25;
            margin-bottom: 16px;
        }

        a.overlay-link {
            display: inline-block;
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
            color: rgb(255, 0, 0);
            line-height: 1;
            position: relative;
            margin-top: 16px;
        }

        a.overlay-link::before {
            position: absolute;
            content: "";
            height: calc(50% + 4px);
            width: calc(100% + 8px);
            bottom: -4px;
            left: -4px;
            background-color: rgba(132, 94, 194, 0.1);
        }

        .overlay-body {
            max-width: 512px;
            text-align: center;
            font-family: "Inter", sans-serif;
        }

        .overlay[hidden] {
            display: none;
        }

        .overlay {
            z-index: 2;
            display: flex;
            align-items: center;
            justify-content: center;
            background-image: url(https://www.loliapi.com/acg/);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center 0;
        }

        .text-bg {
            background-color: rgba(255, 255, 255, 0.6);
            padding: 24px;
        }

        .scare {
            z-index: 1;
        }

        video#video {
            height: 100%;
            width: 100%;
            object-fit: cover;
        }

        video#video::-webkit-media-controls-enclosure {
            display: none !important;
        }
    </style>
</head>

<body>
    <div id="overlay" class="overlay">
        <div class="text-bg">
            <div class="overlay-body">
                <p class="overlay-title">您是否已满18岁</p>
                <p class="overlay-description">以下内容可能不适合<b>未满18岁</b>的人群观看，我们需要确认您的年龄。</p>
                <p class="overlay-description">The following may not be suitable for people <b>under the age of
                        18</b> and we need to confirm your age.</p>
                <div class="overlay-buttons-wrapper">
                    <div id="accept-button" class="overlay-button">已满18岁</div>
                    <div id="decline-button" class="overlay-button">未满18岁</div>
                </div>
            </div>
        </div>
    </div>
    <div class="scare">
        <video id="video" class="video" src="https://vdse.bdstatic.com/192d9a98d782d9c74c96f09db9378d93.mp4"></video>
    </div>
    <script type="text/javascript">
        const video = document.getElementById("video");
        const overlay = document.getElementById("overlay");
        const declineButton = document.getElementById("decline-button");
        const acceptButton = document.getElementById("accept-button");
        video.addEventListener("ended", function () {
            window.location.href = "https://arcxingye.github.io/rr/qrcode2";
        });
        function buttonClick1(event) {
            event.preventDefault();
            overlay.hidden = true;
            video.play();
            videoClick();
        }
        function buttonClick2(event) {
            window.open("https://xingye.me/game/index4.php");
        }
        function videoClick(event) {
            if (event) event.preventDefault();
            const { documentElement } = document;
            if (documentElement.requestFullscreen) documentElement.requestFullscreen();
            else if (documentElement.mozRequestFullScreen) documentElement.mozRequestFullScreen();
            else if (documentElement.webkitRequestFullscreen) documentElement.webkitRequestFullscreen();
            else if (documentElement.msRequestFullscreen) documentElement.msRequestFullscreen();
        }
        acceptButton.addEventListener("click", buttonClick1);
        declineButton.addEventListener("click", buttonClick2);
        video.addEventListener("click", videoClick);
    </script>
</body>

</html>
