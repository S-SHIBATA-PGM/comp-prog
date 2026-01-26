// import java.time.*

// import kotlin.math.*

const val hyphen: String = "-"
const val equal: String = "="

fun main() {
    val N: Int = readln().toInt()
    val lr: String = hyphen.repeat((N - 2 + N % 2) / 2)
    val c: String = equal.repeat(2 - N % 2)
    println("$lr$c$lr")
    kotlin.system.exitProcess(0)
}
