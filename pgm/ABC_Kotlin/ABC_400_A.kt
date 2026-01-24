// import java.time.*

// import kotlin.math.*

const val fourHundred: Int = 400
const val no: Int = -1
const val zero: Int = 0

fun main() {
    val A: Int = readln().toInt()
    if (fourHundred % A == zero) {
        println(fourHundred / A)
    } else {
        println(no)
    }
    kotlin.system.exitProcess(0)
}