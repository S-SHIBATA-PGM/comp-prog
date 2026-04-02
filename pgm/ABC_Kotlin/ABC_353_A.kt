// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
import java.io.DataInputStream
import java.io.FileInputStream
import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val no: Int = -1
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val sc: FastScanner = FastScanner()
    val N: Int = sc.nextInt()
    val H: IntArray = sc.intArray(N)
    val H1: Int = H[zero]
    val idx: Int = H.indexOfFirst { h: Int -> h > H1 }
    if (idx != no) {
        println(idx + one)
    } else {
        println(no)
    }
    kotlin.system.exitProcess(0)
}

// FastScanner start
class FastScanner {
    private val BUFFER_SIZE: Int = 1 shl 16
    private var din: DataInputStream
    private var buffer: ByteArray = ByteArray(BUFFER_SIZE)
    private var bufferPointer: Int = 0
    private var bytesRead: Int = 0

    constructor() {
        din = DataInputStream(System.`in`)
    }

    constructor(fileName: String) {
        din = DataInputStream(FileInputStream(fileName))
    }

    @Throws(IOException::class)
    private fun fillBuffer() {
        bufferPointer = 0
        bytesRead = din.read(buffer, bufferPointer, BUFFER_SIZE)
        if (bytesRead == -1) buffer[0] = -1
    }

    @Throws(IOException::class)
    private fun read(): Byte {
        if (bufferPointer == bytesRead) fillBuffer()
        return buffer[bufferPointer++]
    }

    @Throws(IOException::class)
    fun nextInt(): Int {
        var ret: Int = 0
        var c: Byte = read()
        while (c <= 32) c = read()
        val neg: Boolean = (c == '-'.code.toByte())
        if (neg) c = read()
        do {
            ret = ret * 10 + c - '0'.code.toByte()
        } while (let {
            c = read()
            c
        } >= '0'.code.toByte() && c <= '9'.code.toByte())
        return if (neg) -ret else ret
    }

    @Throws(IOException::class)
    fun intArray(n: Int): IntArray {
        val arr: IntArray = IntArray(n)
        for (i in 0 until n) {
            arr[i] = nextInt()
        }
        return arr
    }

    @Throws(IOException::class)
    fun close() {
        din.close()
    }
}
// FastScanner end