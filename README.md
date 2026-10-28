# truesource-demo-notifications

Demo notification service for [TrueSource Viewer](https://github.com/nkuhn-vmw/truesource-viewer-hub-edition).

**Intentionally vulnerable demo. Do not deploy it, do not install from it.** It contains only
manifests and lock files, written by hand: the lock files have no integrity hashes, and the
versions named below are pinned on purpose so that the viewer has something to find.

Sends e-mail and push notifications; versions locked with npm.

| File | Pins | What the viewer should report |
|---|---|---|
| `package-lock.json` | `@ctrl/tinycolor` 4.1.1 (OSV `MAL-2025-47141`) | Shai-Hulud worm, September 2025: malicious |
| `package-lock.json` | `nx` 21.5.0 (OSV `MAL-2025-41443`, dev dependency) | s1ngularity, August 2025: malicious |
| `package-lock.json` | `nodemailer` 6.4.15, `socket.io` 2.3.0, `engine.io` 3.4.2, `ws` 7.4.2, `handlebars` 4.5.3 | Known vulnerabilities |
| `Dockerfile` | `node:18.12.0-alpine` | Node.js 18 is past its end of life |
| `compose.yaml` | `rabbitmq:3.9-management`, `redis:6.0` | Both release lines are past their end of life |

The malicious versions were removed from the npm registry; this repository only names them.
