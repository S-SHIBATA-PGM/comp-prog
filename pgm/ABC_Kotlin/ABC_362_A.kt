// import java.time.*

// import kotlin.math.*

const val Red: String = "Red"
const val Green: String = "Green"
const val Blue: String = "Blue"
const val space: String = " "

data class RGB(val key: String, val value: Int)

fun main() {
    val (R: Int, G: Int, B: Int) = readln().split(space).map { it.toInt() }
    val C: String = readln()
    val rgb = listOf(RGB(Red, R), RGB(Green, G), RGB(Blue, B))
    println(rgb.filter { it.key != C }.minBy { it.value }.value)
    kotlin.system.exitProcess(0)
}