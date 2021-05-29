# Mac - VS Code Setup

# Mac Setup

1. Mouse Setup (Uncheck Scroll Direction: Natural)
2. Set mission Control to Mouse button 3
3. Change CTRL to CMD in Keyboard -> Modifier Keys...

### Admins only

1. Change hostname in Sharing if required
2. Allow Guest user login (Sharing read/write permission for public folder)

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

## Install important software

[Typora to view Markdown Files](https://typora.io/)

[Open with VS Code](https://www.jimbobbennett.io/open-anything-in-vs-code-using-a-macos-quick-action/)

<br>

# VS Code setup

### Fire Code

Install the Fira Code font attached here with

#### VS Code settings

```javascript
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
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

[Reload](https://marketplace.visualstudio.com/items?itemName=natqe.reload)

[File Utils](https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils)

[File Size](https://marketplace.visualstudio.com/items?itemName=mkxml.vscode-filesize)

### Vue

[Volar](https://marketplace.visualstudio.com/items?itemName=johnsoncodehk.volar)

NOTE: disable [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur) if already installed

[VueDX](https://marketplace.visualstudio.com/items?itemName=znck.vue-language-features)

### TailwindCSS

[Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)

### React Extensions

### PHP Extensions

### PHP Extensions

#### Install Jekyll

[Install Instructions](https://jekyllrb.com/docs/installation/macos/)
