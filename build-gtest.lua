project "GTest"
	kind "StaticLib"
    language "C++"
	cppdialect "C++20"
    staticruntime "off"
    
	targetdir ("bin/%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}")
   	objdir ("obj/%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}")

    files
    {
        "include/gtest/*.h",
        "src/*.cc"
    }

	includedirs
    {
        "include",
		"."
    }
    
    filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "On"
		defines "GTEST_OS_WINDOWS"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		defines "DEBUG"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		defines "RELEASE"