const val Yes: String = "Yes"
const val No: String = "No"
const val zero: Int = 0
const val space: String = " "

fun main() {
    val (X: Int, Y: Int, Z: Int) = readln().split(space).map { it.toInt() }
    println(if ((X - Y * Z) >= zero && (X - Y * Z) % (Z - 1) == zero) Yes
        else No)
    kotlin.system.exitProcess(0)
}