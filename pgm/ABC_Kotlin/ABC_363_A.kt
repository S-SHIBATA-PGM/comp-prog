// import java.time.*

// import kotlin.math.*

const val hundred: Int = 100

fun main() {
    val R: Int = readln().toInt()
    println(hundred - (R % hundred))
    kotlin.system.exitProcess(0)
}