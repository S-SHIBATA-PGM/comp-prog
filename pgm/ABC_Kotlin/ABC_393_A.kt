// import java.time.*

// import kotlin.math.*

const val one: Int = 1
const val two: Int = 2
const val three: Int = 3
const val four: Int = 4
const val sick: String = "sick"
const val fine: String = "fine"
const val space: String = " "

fun main() {
    val (S1: String, S2: String) = readln().split(space)
    if (S1 == sick && S2 == sick) {
        println(one)
    } else if (S1 == sick && S2 == fine) {
        println(two)
    } else if (S1 == fine && S2 == sick) {
        println(three)
    } else {
        println(four)
    }
    kotlin.system.exitProcess(0)
}