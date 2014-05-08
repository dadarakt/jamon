function common_prefix(completions)
    ret = ""
    i = nexti = 1
    cc, nexti = next(completions[1], 1)
    while true
        for c in completions
            (i > length(c) || c[i] != cc) && return ret
        end
        ret *= string(cc)
        i >= length(completions[1]) && return ret
        i = nexti
        cc, nexti = next(completions[1], i)
    end
end

# Show available completions
function show_completions(s::PromptState, completions)
    colmax = maximum(map(length, completions))
    num_cols = max(div(width(terminal(s)), colmax+2), 1)
    entries_per_col, r = divrem(length(completions), num_cols)
    entries_per_col += r != 0
    # skip any lines of input after the cursor
    cmove_down(terminal(s), input_string_newlines_aftercursor(s))
    println(terminal(s))
    for row = 1:entries_per_col
        for col = 0:num_cols
            idx = row + col*entries_per_col
            if idx <= length(completions)
                cmove_col(terminal(s), (colmax+2)*col)
                print(terminal(s), completions[idx])
            end
        end
        println(terminal(s))
    end
    # make space for the prompt
    for i = 1:input_string_newlines(s)
        println(terminal(s))
    end
end