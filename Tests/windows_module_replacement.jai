// The goal of this test is to check if we can replace Windows
// by remapping the #import "Windows" occurences with importing
// our own module.

#import "Basic";
#import "Compiler";

#run
{
    set_build_options_dc (.{do_output = false, write_added_strings = false});

    arguments := get_build_options ().compile_time_command_line;

    if arguments.count == 0
    {
        log_error ("Error: you need to provide modules to compile");
        return;
    }

    ws := compiler_create_workspace ("Windows module replacement test");

    options := get_build_options (ws);
    options.output_type = .NO_OUTPUT;
    options.dead_code_elimination = .NONE;
    options.import_path = get_build_options ().import_path;
    set_build_options (options, ws);

    compiler_begin_intercept (ws);
    remap_import (ws, "*", "Windows", "Win32");

    for arguments
        add_build_string (sprint ("#import \"%\";", it), ws);

    while true
    {
        msg := compiler_wait_for_message ();
        if msg.kind == .COMPLETE
            break;
    }

    compiler_end_intercept (ws);
}
