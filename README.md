# BasicPremakeProject
A simple premake5 C++ project to clone for future projects

Documentation for premake can be found here: https://premake.github.io

---

To create a makefile:
- Download premake5, build and add to path
- Ensure you're in the directory containing the premake5.lua file
- Run ``$ premake5 gmake``

Once created, ``$ make help`` will show the available options:

```
Usage: make [config=name] [target]

CONFIGURATIONS:
  debug
  release

TARGETS:
   all (default)
   clean
   HelloWorld
```
