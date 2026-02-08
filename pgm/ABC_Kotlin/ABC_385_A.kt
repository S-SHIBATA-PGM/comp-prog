// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0
const val space: String = " "

fun main() {
    val ABC: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    ABC.sort()
    if (ABC[zero] == ABC[one] && ABC[one] == ABC[two]) {
        println(Yes)
    } else if (ABC[zero] + ABC[one] == ABC[two]) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}