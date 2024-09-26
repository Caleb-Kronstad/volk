project "VOLK"
  kind "StaticLib"
  language "C"

	targetdir ("../../../bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("../../../bin-int/" .. OutputDir .. "/%{prj.name}")

	files {
		"volk.c",
    "volk.h"
	}

	defines {
		"_CRT_SECURE_NO_WARNINGS",
    "VOLK_IMPLEMENTATION"
	}
    
	filter "system:windows"
		systemversion "latest"
    defines {
      "VK_USE_PLATFORM_WIN32_KHR"
    }
