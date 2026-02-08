// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val one: Int = 1
const val two: Int = 2
const val three: Int = 3
const val thirteen: Int = 13
const val zero: Int = 0
const val space: String = " "

fun main() {
    val (A: Int, B: Int, C: Int, D: Int) = readln().split(space).map { it.toInt() }
    val cards: IntArray = IntArray(thirteen)
    cards[A - one]++
    cards[B - one]++
    cards[C - one]++
    cards[D - one]++
    var threeCards = zero
    var pairs = zero
    for (count: Int in cards) {
        if (count == three) {
            threeCards++
            break
        } else if (count == two) {
            pairs++
        }
    }
    if (threeCards == one) {
        println(Yes)
    } else if (pairs == two) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}