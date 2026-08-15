# Surveying Tool — Paper 26.2

A harmless Paper plugin that gives players a crossbow-textured surveying tool.

## Controls

- **Left click:** ray-survey along the player's view, up to 160 blocks. The hit point is marked with particles and the measured distance is shown in the action bar.
- **Right click:** toggles scope mode. Scope mode uses a hidden Slowness effect to narrow Minecraft's movement-based FOV without requiring a custom texture.
- **Hold Shift + right click:** calibrates the surveying tool for one second, similar to a vanilla-style charge/reload interaction. No projectile is created and nothing can be damaged.
- **`/scopedcrossbow`:** gives the tool (OP by default).

## Build

Requires **Java 25** for Paper 26.2 and Maven. The project uses the Paper Maven repository and `maven-compiler-plugin` with `release 25`.

```text
mvn clean package
```

The resulting JAR is in `target/surveying-tool-1.0.0.jar`.
