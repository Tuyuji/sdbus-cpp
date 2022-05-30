project "sdbus"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/*.*"
	}
	
	includedirs{
		"src/",
		"include"
	}

	filter "system:linux"
		pic "On"

		systemversion "latest"
		
		files
		{
		
		}

		defines
		{
		
		}
		
		links{
			"systemd"
		}

	filter "system:macosx"
		files {
		
		}

        systemversion "11.6.5"

		links {
		
		}

		defines
		{
		
		}

	filter "system:windows"
		systemversion "latest"

		files
		{
		
		}

		defines 
		{ 
		
			"_CRT_SECURE_NO_WARNINGS"
		}

		links
		{
		
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
