# Declare this file as a StarkNet contract and set the required
# builtins.
%lang starknet
%builtins pedersen range_check

from starkware.cairo.common.cairo_builtins import HashBuiltin

struct HexTile:
    member X : felt
end

# A mapping from a HexTile to set X coordinate to 1
@storage_var
func set_hex_coordinate(hexTile : HexTile) -> (res : felt):
end

@external
func vote{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}(hexTile : HexTile):
    set_hex_coordinate.write(hexTile, 1)
    return ()
end