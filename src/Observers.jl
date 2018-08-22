module Observers

export Observer, notify_observer!, kwargs_get

abstract type Observer end

# Users should override this
notify_observer!(o::Observer, x; kwargs...) = x
notify_observer!(o::Void, x; kwargs...) = x

function kwargs_get(kwargs::Vector, key::Symbol)
    i = findfirst(x->x[1]==key, kwargs)
    i == 0 && error("key $key not found")
    kwargs[i][2]
end

end # module
