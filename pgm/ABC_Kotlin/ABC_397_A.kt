// import java.time.*

// import kotlin.math.*

const val dHigh: Double = 38.0
const val dNormal: Double = 37.5
const val high: Int = 1
const val fever: Int = 2
const val normal: Int = 3

fun main() {
    val X: Double = readln().toDouble()
    if (dHigh <= X) {
        println(high)
    } else if (dNormal <= X) {
        println(fever)
    } else {
        println(normal)
    }
    kotlin.system.exitProcess(0)
}
