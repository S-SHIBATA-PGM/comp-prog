// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val blank: String = ""
const val one: Int = 1
const val two: Int = 2
const val three: Int = 3

fun main() {
    val N: List<Int> = readln().map { it.digitToInt() }
    val map: Map<Int, Int> = N.groupBy { it }.mapValues { it.value.size }
    if (map[one] == one && map[two] == two && map[three] == three && map.size == three) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}