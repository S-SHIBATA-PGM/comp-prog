// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val Invalid: String = "Invalid"
const val space: String = " "
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val (L: Int, R: Int) = readln().split(space).map { it.toInt() }
    if (L == one && R == zero) {
        println(Yes)
    } else if (L == zero && R == one) {
        println(No)
    } else {
        println(Invalid)
    }
    kotlin.system.exitProcess(0)
}