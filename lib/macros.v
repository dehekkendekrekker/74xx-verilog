`ifndef MACROS
`define MACROS

/// Define colors for $display

/// 1 set bold
/// 2 set half-bright (simulated with color on a color display)
/// 4 set underscore (simulated with color on a color display)
/// 5 set blink
/// 7 set reverse video

`define BLACK   "\033[1;30m"
`define RED     "\033[1;31m"
`define GREEN   "\033[1;32m"
`define BROWN   "\033[1;33m"
`define BLUE    "\033[1;34m"
`define PINK    "\033[1;35m"
`define CYAN    "\033[1;36m"
`define WHITE   "\033[1;37m"

`define BG_BLACK   "\033[1;40m"
`define BG_RED     "\033[1;41m"
`define BG_GREEN   "\033[1;42m"
`define BG_BROWN   "\033[1;43m"
`define BG_BLUE    "\033[1;44m"
`define BG_PINK    "\033[1;45m"
`define BG_CYAN    "\033[1;46m"
`define BG_WHITE   "\033[1;47m"

`define NC "\033[0m"

/// Follows a set of ready to use function to print status
/// and information with an appropriate color.

`define MSG(msg) \
    $display("\033[0;37m%s (@ %0t)\033[0m", msg, $realtime)

`define INFO(msg) \
    $display("\033[0;34mINFO: %s (@ %0t)\033[0m", msg, $realtime)

`define SUCCESS(msg) \
    $display("\033[0;32mSUCCESS: %s (@ %0t)\033[0m", msg, $realtime)

`define WARNING(msg) \
    $display("\033[1;33mWARNING: %s (@ %0t)\033[0m", msg, $realtime);\

`define ERROR(msg) \
    $display("\033[1;35mERROR: %s (@ %0t)\033[0m", msg, $realtime);\

`define FAILED(msg)\
    $display("\033[1;31mFAILED %s: %s (@ %0t)\033[0m", module_name, msg, $realtime);\

`define DISPLAY_HEADER \
    $display("\033[0;34m ====[%s]==== \033[0m", module_name);

`define INIT \
    string module_name = ""; 
    
`define SET_MOD(name) \
    module_name = name; \
    `DISPLAY_HEADER;\



`endif