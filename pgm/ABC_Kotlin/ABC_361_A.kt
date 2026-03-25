// import java.time.*
import java.io.BufferedOutputStream
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.PrintWriter
import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val zero: Int = 0

fun main() {
    val reader: BufferedReader = BufferedReader(InputStreamReader(System.`in`))
    val out: PrintWriter = PrintWriter(BufferedOutputStream(System.`out`))
    val NKX: StringTokenizer = StringTokenizer(reader.readLine())
    val N: Int = NKX.nextToken().toInt()
    val K: Int = NKX.nextToken().toInt()
    val X: Int = NKX.nextToken().toInt()
    val st: StringTokenizer = StringTokenizer(reader.readLine())
    for (i in zero..N) {
        if (i > zero) {
            out.print(space)
        }
        if (i == K) {
            out.print(X)
        } else {
            out.print(st.nextToken())
        }
    }
    out.println()
    out.flush()
    out.close()
    kotlin.system.exitProcess(0)
}
