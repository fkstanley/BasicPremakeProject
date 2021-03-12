-- premake5.lua

-- Workspaces define a common space of build configurations and platforms
-- A container for projects
workspace "HelloWorld"
   -- Can be added if default file name doesn't match workspace
   --filename "Hello" 
   configurations { "Debug", "Release" }

-- A project lists settings and source files needed to make a binary
project "HelloWorld"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++11"
   -- The cppdialect function doesn't support C++20 yet, so that can be included via a command line argument
   --buildoptions "-std=c++20"
   targetdir "bin/%{cfg.buildcfg}"

   -- ** is a recursive wildcard
   -- All paths are relative to the script file
   files { "**.h", "**.cpp" }

   -- Include user defined libs file to inlude path
   includedirs { "libs" }

   -- make config=debug
   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   -- make config=release
   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"