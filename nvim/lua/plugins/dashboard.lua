---- To do make it generate qutes in the bottom of the startup
local quotes = {
  {
    "I have not failed. I've just found 10,000 ways that won't work.",
    "Thomas A. Edison",
  },
  {
    "We often miss opportunity because it's dressed in overalls and looks like work.",
    "Thomas A. Edison",
  },
  {
    "Any of life's failures are people who did not realize how close they were to success when they gave up.",
    "Thomas A. Edison",
  },
  {
    "Science does not have a moral dimension. It is like a knife. If you give it to a surgeon or a murderer, each will use it differently.",
    "Wernher Von Braum, a literal nazi",
  },
  {
    "Never let your sense of morals prevent you from doing what is right.",
    "Isaac Asimov",
  },
  {
    "Failure Is Not an Option",
    "Gene Kranz",
  },
  {
    "Object-oriented programming is an exceptionally bad idea which could only have originated in California.",
    "Edsger W. Dijkstra",
  },
  {
    "Science is what we understand well enough to explain to a computer. Art is everything else we do.",
    "Donald Knuth",
  },
  {
    "We either do this or we die!",
    "Elon Musk",
  },
  {
    "I fucking like humanity, dude.",
    "Elon Musk",
  },
}
--
local headers = {
  [[
     ______   ______  ______   __  __                                                 d:'.....;         
    /\  ___\ /\__  _\/\  __ \ /\ \_\ \                                             d'          .        
    \ \___  \\/_/\ \/\ \  __ \\ \____ \                                            l.             ,     
     \/\_____\  \ \_\ \ \_\ \_\\/\_____\                                         x. .......       ,     
      \/_____/   \/_/  \/_/\/_/ \/_____/                                         :.....'..        .     
     ______  ______   ______   __  __   ______   ______   _____                  ,....',,...      .     
    /\  ___\/\  __ \ /\  ___\ /\ \/\ \ /\  ___\ /\  ___\ /\  __-.                o'...'''''..     ;     
    \ \  __\\ \ \/\ \\ \ \____\ \ \_\ \\ \___  \\ \  __\ \ \ \/\ \                :'..'''''....  .      
     \ \_\   \ \_____\\ \_____\\ \_____\\/\_____\\ \_____\\ \____-      ;,;:    :...'''''....   c       
      \/_/    \/_____/ \/_____/ \/_____/ \/_____/ \/_____/ \/____/     ,'''''.',::'...'''''....   .x    
                                                                      :''''.........'..'''''....    :   
                                                                     ;,,,''........''.......''..    ;   
                                   .......      ...               c;;:c::;''...''''''''....''..    ,    
                               ..:,..     .';:;,'......,         l::cc:::c::;'..'''''''..........   .d  
                      ;;;;'..            .',,,,....    .,     lcclllccc::::::;''''''''...'.......   ;   
               ..;:'..                   ..,,,'..        .,:llccllllllccc::::c:;,'''''''''........  .d  
       .;;.;'..                           ..'...        ..';llllllllllccccc::::cc:;,','''.....''..   :  
     .;.                                    ....         ..'':lllcllllllcccccc:::::::;,'.......'''..  ' 
    ..                                                   ..'',:llccllccccccccccc:::;;;,........'''... .o
    ..                                                   .'',',:llcccccccccccccc::;,,,'.......''''.....:
    ..                                                   .',,,,,:ccccccccccccc:::;,'......'cx           
    ..                                                    .,,,,',:ccccc:::cclodxxdolcccllx              
    ..........,,,,,,,,,,,...........,,,,,,,,,,,,........,,.',,,,,:lddxkkk                               
  ]],
  [[
                        ##         .                                                                    
                  ## ## ##        ==                                                                    
               ## ## ## ## ##    ===                                                                    
           /"""""""""""""""""\___/ ===              _            _             ___                      
      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~    __| | ___   ___| | _____ _ __/ _ \                     
           \______ o           __/              / _` |/ _ \ / __| |/ / _ \ '__\// /                     
             \    \         __/                | (_| | (_) | (__|   <  __/ |    \/                      
              \____\_______/                    \__,_|\___/ \___|_|\_\___|_|    ()                      
      _____       _             _                            _                          _               
      \_   \   __| | ___  _ __ | |_    _____   _____ _ __   | | ___ __   _____      __ | |__   ___ _ __ 
       / /\/  / _` |/ _ \| '_ \| __|  / _ \ \ / / _ \ '_ \  | |/ / '_ \ / _ \ \ /\ / / | '_ \ / _ \ '__|
    /\/ /_   | (_| | (_) | | | | |_  |  __/\ V /  __/ | | | |   <| | | | (_) \ V  V /  | | | |  __/ |   
    \____/    \__,_|\___/|_| |_|\__|  \___| \_/ \___|_| |_| |_|\_\_| |_|\___/ \_/\_/   |_| |_|\___|_|   
  ]],
  [[
    ⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⠛⠋⠉⠈⠉⠉⠉⠉⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿                                                          
    ⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿                                                          
    ⣿⣿⣿⣿⡏⣀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿                                                          
    ⣿⣿⣿⢏⣴⣿⣷⠀⠀⠀⠀⠀⢾⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿                                                          
    ⣿⣿⣟⣾⣿⡟⠁⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣷⢢⠀⠀⠀⠀⠀⠀⠀⢸⣿                                                          
    ⣿⣿⣿⣿⣟⠀⡴⠄⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⣿                                                          
    ⣿⣿⣿⠟⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⢴⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⣿                                                          
    ⣿⣁⡀⠀⠀⢰⢠⣦⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡄⠀⣴⣶⣿⡄⣿                                                          
    ⣿⡋⠀⠀⠀⠎⢸⣿⡆⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⠗⢘⣿⣟⠛⠿⣼    ___            __               _                   _ 
    ⣿⣿⠋⢀⡌⢰⣿⡿⢿⡀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⡇⠀⢸⣿⣿⣧⢀⣼   / _ \_ __ ___  / _| ___  ___ ___(_) ___  _ __   __ _| |
    ⣿⣿⣷⢻⠄⠘⠛⠋⠛⠃⠀⠀⠀⠀⠀⢿⣧⠈⠉⠙⠛⠋⠀⠀⠀⣿⣿⣿⣿⣿  / /_)/ '__/ _ \| |_ / _ \/ __/ __| |/ _ \| '_ \ / _` | |
    ⣿⣿⣧⠀⠈⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠟⠀⠀⠀⠀⢀⢃⠀⠀⢸⣿⣿⣿⣿ / ___/| | | (_) |  _|  __/\__ \__ \ | (_) | | | | (_| | |
    ⣿⣿⡿⠀⠴⢗⣠⣤⣴⡶⠶⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡸⠀⣿⣿⣿⣿ \/    |_|  \___/|_|  \___||___/___/_|\___/|_| |_|\__,_|_|
    ⣿⣿⣿⡀⢠⣾⣿⠏⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠉⠀⣿⣿⣿⣿                                                          
    ⣿⣿⣿⣧⠈⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿  __                      _                               
    ⣿⣿⣿⣿⡄⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿ / _\_ __ ___   __ _ _ __| |_ __ _ ___ ___                
    ⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿ \ \| '_ ` _ \ / _` | '__| __/ _` / __/ __|               
    ⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ _\ \ | | | | | (_| | |  | || (_| \__ \__ \               
    ⣿⣿⣿⣿⣿⣦⣄⣀⣀⣀⣀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ \__/_| |_| |_|\__,_|_|   \__\__,_|___/___/               
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿                                                          
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠙⣿⣿⡟⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿                                                          
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠁⠀⠀⠹⣿⠃⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿                                                          
    ⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢐⣿⣿⣿⣿⣿⣿⣿⣿⣿                                                          
    ⣿⣿⣿⣿⠿⠛⠉⠉⠁⠀⢻⣿⡇⠀⠀⠀⠀⠀⠀⢀⠈⣿⣿⡿⠉⠛⠛⠛⠉⠉                                                          
    ⣿⡿⠋⠁⠀⠀⢀⣀⣠⡴⣸⣿⣇⡄⠀⠀⠀⠀⢀⡿⠄⠙⠛⠀⣀⣠⣤⣤⠄⠀                                                          
  ]],
  [[
                                                                                       OkxdoooooooooooddxO                                                
                                                                                  0OxooodxkO0          0Oxdx                                              
                                                                              0Okdloxk0                    kd0                                            
                                                                            OdlloxO                         xd                                            
                                                                          OdlokO                            xd                                            
                                                                        0dlok                              0ok                    doox                    
                                                     O                 kold0         0Okk0                Ood                    0olld                    
               0OkkkOO                              0;o               xllx       0kkkkO0kox              xod0                      00                     
            xdddxkkkxxdddk                          0;o              Oolx     OkkO      0od            koox                                               
         0ook           0dlx            0           0;o               xd0    k0         doO         Oxold0    Okxxxx0           xx0      kx0     0kxxx    
        xck      0000      ol0   klOOoddddoloO      0;o    xc0          xcO xO        0doO      Okdolox0   kdodk00OdoO         xolk     Oolx   OOOkollk   
       xc0     xdkOkxdk     dc   x':d0      d;d     0;o     c:0        O;o  kdkOO0000koldOOkxxollodk0    xoox0     xlO       0dold     OoloO OO   xold0   
       cx     xd0    OoO     cd  x'o         o;O    0;o      cc        :l    0kxdoollllllloodxkO0      OoloO      OoodO     kollx     xoloxOO   Odlld0   0
      OcO    0ooxkkkkdox     ol  x,O         k;k    0;o       cc      lc         0dlok0               kold       xolox    0dllox    Odlllox0   xolox    OO
      0ck    Olllx00dlld     lo  x;O         k;k    0;o        cl    o:0        0dld0                klld       OoloO    kdllok    kdollok   0dlloO   0O  
       ol     xlld 0dlok    k:O  x;O         k;k    0;o         :l  x;k       xoolx                 0olo0      0dld0   OkdoloO   OOxolox    Oolld0   k0   
        ll     0kxkxxk0    kck   x;O         k;k    0;o         0:ox:x      0dllok                  kllx      xold   0OOxold0  OOOxoloO    0olox   OO     
         xlx             Ool0    x:O         O:k     :d          0:'d      Oolook                   0olx    Oxollx0OO0 OollxOOO00dlox      xlloO0kk       
           xodxO0    OkdodO                                      0:l      Oollx0                     0xdxkkO  koodk0   0doodk   kod0       0doodk         
              Oxxxxxdxk0                                    O00Odco       xllo0                                                                           
                                                            ddddx         Oolx                                                                            
                                                                            kk                                                                            
  ]],
  [[

         ╦ ╦┌─┐┌─┐┬─┐  ┌─┐┌─┐  ┌┬┐┬ ┬┌─┐                                       _ 
         ╚╦╝├┤ ├─┤├┬┘  │ │├┤    │ ├─┤├┤                                       (_)
          ╩ └─┘┴ ┴┴└─  └─┘└     ┴ ┴ ┴└─┘                |    .                   
          ╔═╗┌─┐┌─┐┌┐┌╔╗ ╔═╗╔╦╗                     .   |L  /|   .          _    
          ║ ║├─┘├┤ │││╠╩╗╚═╗ ║║                 _ . |\ _| \--+._/| .       (_)   
          ╚═╝┴  └─┘┘└┘╚═╝╚═╝═╩╝                / ||\| Y J  )   / |/| ./          
          ╔╦╗┌─┐┌─┐┬┌─┌┬┐┌─┐┌─┐               J  |)'( |        ` F`.'/        _  
           ║║├┤ └─┐├┴┐ │ │ │├─┘             -<|  F         __     .-<        (_) 
          ═╩╝└─┘└─┘┴ ┴ ┴ └─┘┴                 | /       .-'. `.  /-. L___        
                                               J \\      <    \  | | O\\|.-'  _  
                                            _J \\  .-    \\/ O | | \\  |F    (_) 
                                           '-F  -<_.     \\   .-'  `-' L__       
                                          __J  _   _.     >-'  )._.   |-'        
                                           `-|.'   /_.          \_|   F          
                                            /.-   .                _.<           
                                           /'    /.'             .'  `\\         
                                            /L  /'   |/      _.-'-\\             
                                           /'J       ___.---'\|                  
                                             |\  .--' V  | `. `                  
                                             |/`. `-.     `._)                   
                                                / .-.\\                          
                                                \\ (  `\\                        
                                                 `.\\                            
  ]],
  [[
        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠔⠒⠒⠒⠒⠒⠢⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                              
        ⠀⠀⠀⠀⠀⠀⠀⡰⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⢄⡀⠀⠀⠀⠀⠀⠀⠀                                              
        ⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠙⠄⠀⠀⠀⠀⠀⠀                                              
        ⠀⠀⠀⠀⠀⢀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⢠⠂⠀⠀⠘⡄⠀⠀⠀⠀⠀                                              
        ⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠈⢤⡀⢂⠀⢨⠀⢀⡠⠈⢣⠀⠀⠀⠀⠀"Since I am insecure about my intelligence    
        ⠀⠀⠀⠀⠀⢀⢀⡖⠒⠶⠤⠭⢽⣟⣗⠲⠖⠺⣖⣴⣆⡤⠤⠤⠼⡄⠀⠀⠀ and unable to take the time to understand     
        ⠀⠀⠀⠀⠀⠘⡈⠃⠀⠀⠀⠘⣺⡟⢻⠻⡆⠀⡏⠀⡸⣿⢿⢞⠄⡇⠀⠀⠀⠀new programming concepts. I think Rust is a   
        ⠀⠀⠀⠀⠀⠀⢣⡀⠤⡀⡀⡔⠉⣏⡿⠛⠓⠊⠁⠀⢎⠛⡗⡗⢳⡏⠀⠀⠀⠀horrible language and it will take longer for 
        ⠀⠀⠀⠀⠀⠀⠀⢱⠀⠨⡇⠃⠀⢻⠁⡔⢡⠒⢀⠀⠀⡅⢹⣿⢨⠇⠀⠀⠀⠀our team to program in it. Therefore we should
        ⠀⠀⠀⠀⠀⠀⠀⢸⠀⠠⢼⠀⠀⡎⡜⠒⢀⠭⡖⡤⢭⣱⢸⢙⠆⠀⠀⠀⠀⠀just use go or another language that does not 
        ⠀⠀⠀⠀⠀⠀⠀⡸⠀⠀⠸⢁⡀⠿⠈⠂⣿⣿⣿⣿⣿⡏⡍⡏⠀⠀⠀⠀⠀⠀challenge my intellect for our next project." 
        ⠀⠀⠀⠀⠀⠀⢀⠇⠀⠀⠀⠀⠸⢢⣫⢀⠘⣿⣿⡿⠏⣼⡏⠀⠀⠀⠀⠀⠀⠀                                              
        ⠀⠀⠀⠀⣀⣠⠊⠀⣀⠎⠁⠀⠀⠀⠙⠳⢴⡦⡴⢶⣞⣁⣀⣀⡀⠀⠀⠀⠀⠀                                              
       ⠀⠐⠒⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⢀⠤⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀                                               
  ]],
  [[
    yyyyyy xxxxxx                                                                                       
     yyyyyy xxxxxx                  __ _                                _               _               
      yyyyyy xxxxxx                / _\ |_ ___  _ __     ___ _ __ _   _(_)_ __   __ _  | |__  _ __ ___  
       yyyyyy xxxxxx               \ \| __/ _ \| '_ \   / __| '__| | | | | '_ \ / _` | | '_ \| '__/ _ \ 
        yyyyyy xxxxxx yyyyyyyyyy   _\ \ || (_) | |_) | | (__| |  | |_| | | | | | (_| | | |_) | | | (_) |
         yyyyyy xxxxxx yyyyyyyyy   \__/\__\___/| .__/   \___|_|   \__, |_|_| |_|\__, | |_.__/|_|  \___/ 
          yyyyyy xxxxxx                        |_|                |___/         |___/                   
         yyyyyy xxxxxxxx yyyyyyy    _ _           _           _                     _   _               
        yyyyyy xxxxxxxxxx yyyyyy   (_) |_ ___    (_)_   _ ___| |_   _ __ ___   __ _| |_| |__            
       yyyyyy xxxxxxxxxxxx         | | __/ __|   | | | | / __| __| | '_ ` _ \ / _` | __| '_ \           
      yyyyyy xxxxxx  xxxxxx        | | |_\__ \   | | |_| \__ \ |_  | | | | | | (_| | |_| | | |          
     yyyyyy xxxxxx    xxxxxx       |_|\__|___/  _/ |\__,_|___/\__| |_| |_| |_|\__,_|\__|_| |_|          
    yyyyyy xxxxxx      xxxxxx                  |__/                                                     
  ]],
}

local function generate(type)
  math.randomseed(os.time())
  return (type == "header") and headers[math.random(#headers)] or quotes[math.random(#quotes)]
end

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(generate("header"), "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
          { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
          { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
          { action = "Mason",                                                    desc = " Mason",           icon = "󰢛 ", key = "m" },
          { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
          { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
          { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
          { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
          --local stats = require("lazy").stats()
          --local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return {
            --"⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
            "",
            "1. Question every requirement.        ",
            "2. Delete any part or process you can.",
            "3. Simplify and optimize.             ",
            "4. Accelerate cycle time.             ",
            "5. Automate.                          ",
            "",
            generate("footer")[1],
            "- " .. generate("footer")[2],
          }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
