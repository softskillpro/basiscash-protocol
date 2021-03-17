pragma solidity >=0.6.0;

interface ICurveMeta2 {

    /// @notice Calculate the current output dy given input dx on underlying
    /// @dev Index values can be found via the `coins` public getter method
    /// @param i Index value for the coin to send
    /// @param j Index value of the coin to recieve
    /// @param dx Amount of `i` being exchanged
    /// @return Amount of `j` predicted
    function get_dy_underlying(uint128 i, uint128 j, uint256 dx) external returns (uint256);

    /// @notice Perform an exchange between two underlying coins
    /// @dev Index values can be found via the `underlying_coins` public getter method
    /// @param i Index value for the underlying coin to send
    /// @param j Index value of the underlying coin to recieve
    /// @param dx Amount of `i` being exchanged
    /// @param min_dy Minimum amount of `j` to receive
    /// @param _receiver Address that receives `j`
    /// @return Actual amount of `j` received
    function exchange_underlying(uint128 i, uint128 j, uint256 dx, uint256 min_dy, address _receiver) external returns (uint256);
}
