# JLine3 OutOfMemory Example
In the current version 3.26.0 of JLine, using a `TailTipWidget` in a detached container can lead to an
`OutOfMemoryError`. This is a minimal example to reproduce the issue.


## How To Run
```bash
git clone https://github.com/VerKWer/jline3-oom && cd "$(basename "$_")"
./gradlew fatJar
docker compose build
docker compose up
```

After a few seconds, the application will crash with an `OutOfMemoryError`. In this example, the heap size is restricted
to 64 MiB for convenience, but the same happens for larger heaps.
