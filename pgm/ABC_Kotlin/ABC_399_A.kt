// import java.time.*

// import kotlin.math.*

fun main() {
    readln()
    val S: String = readln()
    val T: String = readln()
    println(S.indices.count { i -> S[i] != T[i] })
    kotlin.system.exitProcess(0)
}
