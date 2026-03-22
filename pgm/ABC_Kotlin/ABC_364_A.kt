// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val sweet: String = "sweet"
const val blank: String = ""
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    val S: Array<String> = Array(N) { blank }
    for (i in zero until N) {
        S[i] = readln()
    }
    if ((zero until N - two).any { i -> S[i] == sweet && S[i + one] == sweet }) {
        println(No)
    } else {
        println(Yes)
    }
    kotlin.system.exitProcess(0)
}