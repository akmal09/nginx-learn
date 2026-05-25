# Nginx Visualizations

Four PlantUML diagrams covering how nginx works, from the outside in.

| # | File | What it shows |
|---|------|----------------|
| 1 | [01-reverse-proxy.puml](01-reverse-proxy.puml) | Nginx sitting between many clients and a few backends |
| 2 | [02-master-workers.puml](02-master-workers.puml) | Master process + worker processes (one per CPU core) |
| 3 | [03-event-loop.puml](03-event-loop.puml) | What a single worker does on each `epoll_wait()` tick |
| 4 | [04-config-matching.puml](04-config-matching.puml) | How a request flows through `server` → `location` → handler |

## How to render

- **VS Code**: install the *PlantUML* extension (jebbs.plantuml), open a `.puml` file, then `Alt+D` to preview.
- **CLI**: `plantuml diagrams/*.puml` produces PNGs next to each file.
- **Online**: paste contents into <https://www.plantuml.com/plantuml>.