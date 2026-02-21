// import java.time.*

// import kotlin.math.*

const val two: Int = 2
const val space: String = " "

fun main() {
    println(readln().split(space).groupBy { it }.values.sumOf { it.size / two })
    kotlin.system.exitProcess(0)
}
