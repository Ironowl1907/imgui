project("ImGui")
kind("StaticLib")
language("C")
staticruntime("off")
warnings("off")

targetdir("bin/%{prj.name}")
objdir("bin-int/%{prj.name}")

files({
    "./imgui.h",
    "./imconfig.h",
    "./imgui.cpp",
    "./imgui_demo.cpp",
    "./imgui_draw.cpp",
    "./imgui_internal.h",
    "./imgui_tables.cpp",
    "./imgui_widgets.cpp",
    "./imstb_rectpack.h",
    "./imstb_textedit.h",
    "./imstb_truetype.h",
})
includedirs({})

filter("system:linux")
pic("On")
systemversion("latest")

filter("system:macosx")
pic("On")

filter("system:windows")
systemversion("latest")

filter("configurations:Debug")
runtime("Debug")
symbols("on")

filter("configurations:Release")
runtime("Release")
optimize("speed")

filter("configurations:Dist")
runtime("Release")
optimize("speed")
symbols("off")
