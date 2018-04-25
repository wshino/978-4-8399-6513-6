pragma solidity ^0.4.23;


contract ArrayContract {uint[2 ** 20] m_aLotOfIntegers;

    bool[2][] m_pairsOfFlags;

    function setAllFlagPairs(bool[2][] newPairs) public {
        m_pairsOfFlags = newPairs;}

    function setFlagPair(uint index, bool flagA, bool flagB) public {
        m_pairsOfFlags[index][0] = flagA;
        m_pairsOfFlags[index][1] = flagB;
    }

    function changeFlagArraySize(uint newSize) public {
        m_pairsOfFlags.length = newSize;
    }

    function clear() public {
        delete m_pairsOfFlags;
        delete m_aLotOfIntegers;
        m_pairsOfFlags.length = 0;
    }

    bytes m_byteData;

    function byteArrays(bytes data) public {
        m_byteData = data;
        m_byteData.length += 7;
        m_byteData[3] = 8;
        delete m_byteData[2];
    }

    function addFlag(bool[2] flag) public returns (uint) {
        return m_pairsOfFlags.push(flag);
    }

    function createMemoryArray(uint size) public pure returns (bytes) {
        uint[2][] memory arrayOfPairs = new uint[2][](size);
        bytes memory b = new bytes(200);
        for (uint i = 0; i < b.length; i++)
        b[i] = byte(i);
        return b;
    }
}