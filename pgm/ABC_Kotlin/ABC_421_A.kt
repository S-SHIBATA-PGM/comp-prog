// import kotlin.math.*

const val one: Int = 1
const val zero: Int = 0
const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val N: Int = readln().toInt()
    val S = mutableListOf<String>()
    for (i: Int in zero until N) {
        S.add(readln())
    }
    val (X: Int, Y: String) = { arr: List<String> -> arr[0].toInt() to arr[1] }(readln().split(space))
    if (S[X - one] == Y) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
