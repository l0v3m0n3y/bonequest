# bonequest
api for bonequest.com site provides access to episode data, allowing users to fetch details about episodes, including dialogue and metadata. It returns structured JSON responses for easy integration and use by developers.
# Example
```nim
import asyncdispatch, bonequest, json, strutils
let data = waitFor get_episode(3)
echo data
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```
