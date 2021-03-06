package = "ann"
version = "scm-1"

source = {
   url = "git://github.com/Aysegul/sandbox.git",
}

description = {
   summary = "Some extras for Torch nn",
   detailed = [[
   ]],
   homepage = "https://github.com/Aysegul/sandbox",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
   cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
