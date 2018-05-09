pragma solidity ^0.4.23;


contract ArrayContract {

    uint[2 ** 20] m_aLotOfIntegers;

    // 固定サイズ2のboolの動的配列です
    bool[2][] m_pairsOfFlags;

    // newPairsはmemory配列です
    function setAllFlagPairs(bool[2][] newPairs) public {
        // storage配列を固定長配列で上書きします
        m_pairsOfFlags = newPairs;
    }

    function setFlagPair(uint index, bool flagA, bool flagB) public {
        // 存在しないインデックスを参照した場合はexceptionが投げられます
        m_pairsOfFlags[index][0] = flagA;
        m_pairsOfFlags[index][1] = flagB;
    }

    function changeFlagArraySize(uint newSize) public {
        // 新しいサイズが小さければ削除された配列の要素は消去されます
        m_pairsOfFlags.length = newSize;
    }

    function clear() public {
        // 配列を完全に消去します
        delete m_pairsOfFlags;
        delete m_aLotOfIntegers;
        // 配列の要素を0にするので、上記と同様です
        m_pairsOfFlags.length = 0;
    }

    bytes m_byteData;

    function byteArrays(bytes data) public {
        // bytesはuint8[]と同じ扱いです
        m_byteData = data;
        m_byteData.length += 7;
        m_byteData[3] = 8;
        delete m_byteData[2];
    }

    function addFlag(bool[2] flag) public returns (uint) {
        return m_pairsOfFlags.push(flag);
    }

    function createMemoryArray(uint size) public pure returns (bytes) {
        // 動的memory配列はnewキーワードを使って作成します
        uint[2][] memory arrayOfPairs = new uint[2][](size);
        // 動的バイト配列を作成します
        bytes memory b = new bytes(200);
        for (uint i = 0; i < b.length; i++)
        b[i] = byte(i);
        return b;
    }
}