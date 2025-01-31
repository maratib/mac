# Mac - VS Code Setup

# Mac Setup

1. Mouse Setup (Uncheck Scroll Direction: Natural)
2. Set mission Control to Mouse button 3
3. Change CTRL to CMD in Keyboard -> Modifier Keys...

### Admins only

1. Change hostname in Sharing if required
2. Allow Guest user login (Sharing read/write permission for public folder)
3. on command line : `xcode-select --install`

## Home, End Explorer Keys

1. In finder go `~/Library/`
2. Paste the `KeyBindings` folder there.
3. Link Download/Public folder to some other location with (sudo rm -rf ~/Downloads) and (ln -s "/ExternalDrive/Downloads" ~/Downloads)

## [Home][end] keys in terminal

open terminal and goto Preferences -> Profile -> Keyboard tab

Key : Home, Modifier : None, Action Send Text

add the key \033[H for home and \033[F for End

Esc Key : \033

for CATALINA  
add the key \033OH for home and \033OF for End

## SSH Keys

# Generate new key

ssh-keygen -t rsa

# Copy new key to

```bash
pbcopy < ~/.ssh/id_rsa.pub

git config --global user.name "Name"
git config --global user.email "email"
```

Configure Github, Gitlab and Bitbucket SSH Keys

# To see remote url

```bash
git remote -v
```

## Open with VS Code

Open Automator

Create a new document

Select Quick Action

Set "Service receives selected" to `files or folders` in any application

Add a Run Shell Script action

your default shell should already be selected, otherwise use /bin/zsh for macOS 10.15 (”Catalina”) or later
older versions of macOS use /bin/bash
if you're using something else, you probably know what to do 😉
Set the script action to the following

```bash
for f in "$@"; do
  open -a 'Visual Studio Code' "$@"
done
```

Set “Pass input” to as `arguments`

Save as Open in Visual Studio Code

## New file context menu in macOS

- Open Automator
- Select Application
- Search Run AppleScript and drag it to workflow

```
on run {input, parameters}

	(* Your script goes here *)

	return input
end run
```

Remove above with

```
tell application "Finder" to make new file at (the target of the front window) as alias
```

Save (you must select Application in both `File Format` and `Where`)

Change icon by coping new icon and pasting it in Get info

## Install NodeJS via NVM

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm --version
nvm install --lts
```

## Install important software from apps-store

Chrome, VS Code, copyClip, Slack, MS Teams, ZOOM, MacDown, Figma, draw.io, WhatsApp, Synergy, Skype, FireFox, Warp, The Unarchiver, FileZilla, Miro, Insomnia,Redis Insight, Sequel Ace, Spotify, Sweet Home 3D, MongoDB Compass, XCode, Altair GraphQL Client, Android Studio, Audacity, balenaEtcher, Canva, DBeaver, Discord, DropBox, Docker, Kubernets, miniCube,

# VS Code setup

### Fire Code

Install the Fira Code font attached here with

#### VS Code settings

```javascript
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,

"dateTime.showDayOfWeek": true,
"dateTime.showMonth": true,
"dateTime.showDayOfMonth": true,
"dateTime.showAMPM": true,
"dateTime.use24HourClock": false,

"editor.minimap.enabled": false,
"editor.formatOnSave": true,

"liveServer.settings.root": "src/",

"thunder-client.saveToWorkspace": true,

"editor.wordWrap": "on",
  "jest.runMode": {
    "type": "on-demand"
  },
  // "jest.outputConfig": {
  //   "revealOn": "demand",
  //   "revealWithFocus": "test-results"
  //   // "clearOnRun": "terminal"
  // },
  // "testing.automaticallyOpenTestResults": "openOnTestFailure",
  "testing.automaticallyOpenTestResults": "openOnTestStart",
  //imports
  "typescript.preferences.importModuleSpecifier": "non-relative",
  "javascript.preferences.importModuleSpecifier": "non-relative",
  "explorer.autoReveal": false

```

## Remove node_modules folder

```bash
# Print node_modules folders
find . -name 'node_modules' -type d -prune

# Delete node_modules folders
find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
```

## VS Code important extensions

### General extensions

[Material Theme](https://marketplace.visualstudio.com/items?itemName=Equinusocio.vsc-material-theme)

[Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

[Live Sass Compiler](https://marketplace.visualstudio.com/items?itemName=ritwickdey.live-sass)

[Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)

[Auto Complete Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-complete-tag)

[.env support](https://marketplace.visualstudio.com/items?itemName=IronGeek.vscode-env)

[Advance-new-file](https://marketplace.visualstudio.com/items?itemName=patbenatar.advanced-new-file)

[SCSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss)

[IntelliSense for CSS](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)

[CSS Navigation](https://marketplace.visualstudio.com/items?itemName=pucelle.vscode-css-navigation)

[Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

[JSDoc Generator](https://marketplace.visualstudio.com/items?itemName=crystal-spider.jsdoc-generator)

[Reload](https://marketplace.visualstudio.com/items?itemName=natqe.reload)

[File Utils](https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils)

[File Size](https://marketplace.visualstudio.com/items?itemName=mkxml.vscode-filesize)

[DateTime](https://marketplace.visualstudio.com/items?itemName=rid9.datetime)

[REST Client](https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client)

[Swagger Panel](https://marketplace.visualstudio.com/items?itemName=elsaooo.swagger-panel)

### Vue

[Volar](https://marketplace.visualstudio.com/items?itemName=johnsoncodehk.volar)

NOTE: disable [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur) if already installed

[VueDX](https://marketplace.visualstudio.com/items?itemName=znck.vue-language-features)

### React, Next.js

[ES7 React/Redux/GraphQL/React-Native snippets](https://marketplace.visualstudio.com/items?itemName=rodrigovallades.es7-react-js-snippets)

[Typescript Nightly](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-next)

### TailwindCSS

[Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)

[xPro](https://marketplace.visualstudio.com/items?itemName=maratib.xpro-snippets)

[Codeium](https://marketplace.visualstudio.com/items?itemName=Codeium.codeium)

[ADB QR](https://marketplace.visualstudio.com/items?itemName=AakashP.adb-qr)

[Code Generator for JAVA](https://marketplace.visualstudio.com/items?itemName=sohibe.java-generate-setters-getters)

[Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)

[Extension Pack for JAVA](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)

[Goto definition alias](https://marketplace.visualstudio.com/items?itemName=antfu.goto-alias)

[Karma Test Explorer](https://marketplace.visualstudio.com/items?itemName=lucono.karma-test-explorer)

[Lombok Annotations](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-lombok)

[Mocha Test Explorer](https://marketplace.visualstudio.com/items?itemName=hbenl.vscode-mocha-test-adapter)

[Spring Boot Extension Pack](https://marketplace.visualstudio.com/items?itemName=vmware.vscode-boot-dev-pack)

[Tauri](https://marketplace.visualstudio.com/items?itemName=tauri-apps.tauri-vscode)

[Postman](https://marketplace.visualstudio.com/items?itemName=Postman.postman-for-vscode)
