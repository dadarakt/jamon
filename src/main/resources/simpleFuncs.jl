function length(s::String)
    i = start(s)
    if done(s,i)
        return 0
    end
    n = 1
    while true
        c, j = next(s,i)
        if done(s,j)
            return n
        end
        n += 1
        i = j
    end
end

function isvalid(s::String, i::Integer)
    try
        next(s,i)
        true
    catch
        false
    end
end
