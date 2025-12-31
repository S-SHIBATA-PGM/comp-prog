// import kotlin.math.*

const val OK: String = "OK"
const val Too: String = "Too Many Requests"
const val zero: Int = 0
const val space: String = " "

fun main() {
    val (N: Int, M: Int) = readln().split(space).map { it.toInt() }
    for (i in zero until N) {
        if (i < M) {
            println(OK)
        } else {
            println(Too)
        }
    }
    kotlin.system.exitProcess(0)
}
