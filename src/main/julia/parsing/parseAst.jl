## AST printing constants ##
const indent_width = 4
const quoted_syms = Set{Symbol}([:(:),:(::),:(:=),:(=),:(==),:(===),:(=>)])
const uni_ops = Set{Symbol}([:(+), :(-), :(!), :(~), :(<:), :(>:)])
const bin_ops_by_prec = [
    "= := += -= *= /= //= .//= .*= ./= \\= .\\= ^= .^= %= .%= |= &= \$= => <<= >>= >>>= ~ .+= .-=",
    "?",
    "||",
    "&&",
    "-- -->",
    "> < >= <= == === != !== .> .< .>= .<= .== .!= .= .! <: >:",
    "|> <|",
    ": ..",
    "+ - .+ .- | \$",
    "<< >> >>> .<< .>> .>>>",
    "* / ./ % .% & .* \\ .\\",
    "// .//",
    "^ .^",
    "::",
    "."
]
const bin_op_precs = Dict{Symbol,Int}(merge([{symbol(op)=>i for op=split(bin_ops_by_prec[i])} for i=1:length(bin_ops_by_prec)]...))
const bin_ops = Set{Symbol}(keys(bin_op_precs))
const expr_infix_wide = Set([:(=), :(+=), :(-=), :(*=), :(/=), :(\=), :(&=),
    :(|=), :($=), :(>>>=), :(>>=), :(<<=), :(&&), :(||)])
const expr_infix = Set([:(:), :(<:), :(->), :(=>), symbol("::")])
const expr_calls  = [:call =>('(',')'), :ref =>('[',']'), :curly =>('{','}')]
const expr_parens = [:tuple=>('(',')'), :vcat=>('[',']'), :cell1d=>('{','}'),
                      :hcat =>('[',']'), :row =>('[',']')]


function parsefile(filename::String)
    str = readall(open(filename))
    #parse file, does not check if the program is correct or not!
    #Just linewise check.
    i = start(str)
    exprs = {}
    while !done(str,i)
        # try
        if str[i] == '#' 
            println("this is a comment, $i")
        end
        ex, i = parse(str,i)
        push!(exprs, ex)
    end
    exprs
end

