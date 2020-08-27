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
            throw(DomainError("Only A,  "))
        end
       
    end
    
    return Dict('A' => num_A, 'C' => num_C, 'G' => num_G, 'T' => num_T)
end