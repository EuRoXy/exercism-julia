"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    a = c = g = t = 0
    
    for n in strand
        
        if n == 'A'
            a += 1
        elseif n == 'C'
            c += 1
        elseif n == 'G'
            g += 1
        elseif n == 'T'
            t += 1
        else
            throw(DomainError("Only A, C, G or T allowed."))
        end
       
    end
    
    return Dict('A' => a, 'C' => c, 'G' => g, 'T' => t)
end
