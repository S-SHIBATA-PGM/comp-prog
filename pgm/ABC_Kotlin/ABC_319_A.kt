// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.StringTokenizer

// import kotlin.math.*

fun main() {
    val S: String = readln()
    val m: Map<String, Int> = mapOf(
        "tourist" to 3858,
        "ksun48" to 3679,
        "Benq" to 3658,
        "Um_nik" to 3648,
        "apiad" to 3638,
        "Stonefeang" to 3630,
        "ecnerwala" to 3613,
        "mnbvmar" to 3555,
        "newbiedmy" to 3516,
        "semiexp" to 3481
    )
    println(m[S])
    kotlin.system.exitProcess(0)
}