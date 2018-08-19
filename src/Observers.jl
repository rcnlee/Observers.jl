module Observers

export Observer, notify_observer!

abstract type Observer end

# Users should override this
notify_observer!(o::Observer, x; kwargs...) = x
notify_observer!(o::Void, x; kwargs...) = x

end # module
