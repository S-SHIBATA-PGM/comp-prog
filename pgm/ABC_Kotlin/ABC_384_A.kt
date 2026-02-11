// import java.time.*

// import kotlin.math.*

const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0
const val space: String = " "

fun main() {
    val arr: List<String> = readln().split(space)
    val (_: Int, c1: String, c2: String) = Triple(arr[zero].toInt(), arr[one], arr[two])
    val S: String = readln()
    println(S.replace(Regex("[^${Regex.escape(c1.toString())}]"), c2))
    kotlin.system.exitProcess(0)
}