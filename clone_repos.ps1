$repos = @(
    "https://github.com/udacity/andfun-kotlin-android-trivia"
    "https://github.com/udacity/andfun-kotlin-guess-it"
    "https://github.com/udacity/andfun-kotlin-dessert-pusher"
    "https://github.com/udacity/andfun-kotlin-sleep-tracker"
    "https://github.com/udacity/andfun-kotlin-dev-bytes"
    "https://github.com/udacity/andfun-kotlin-mars-real-estate"
    "https://github.com/udacity/andfun-kotlin-dice-roller"
    "https://github.com/udacity/andfun-kotlin-sleep-tracker-with-recyclerview"
    "https://github.com/udacity/andfun-kotlin-gdg-finder"
    "https://github.com/udacity/andfun-kotlin-about-me"
    "https://github.com/udacity/andfun-kotlin-color-my-views"
)

$repos | ForEach-Object { git clone $_ }