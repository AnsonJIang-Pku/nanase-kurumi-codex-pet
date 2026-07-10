# Upload spritesheet.webp

The repository expects the actual Codex Pet sprite sheet at:

```text
kurumi-v3/spritesheet.webp
```

The file should be copied from the original packaged asset:

```text
kurumi-v3/spritesheet.webp
```

Expected metadata:

- Format: WebP with alpha transparency
- Size: 1536 × 2288 px
- Referenced by: `kurumi-v3/pet.json`
- `pet.json` path field: `"spritesheetPath": "spritesheet.webp"`

After uploading the file, the repository should contain:

```text
.
├── README.md
├── NOTICE.md
├── install.sh
├── .gitignore
└── kurumi-v3/
    ├── pet.json
    └── spritesheet.webp
```

Then users can install with:

```bash
chmod +x install.sh
./install.sh
```
