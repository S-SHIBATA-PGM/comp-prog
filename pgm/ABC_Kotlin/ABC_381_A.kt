// import java.time.*

// import kotlin.math.*

const val cOne: Char = '1'
const val cTwo: Char = '2'
const val slash: String = "/"
const val Yes: String = "Yes"
const val No: String = "No"
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    readln()
    val S: List<String> = readln().split(slash)
    if (S.size == two &&
                    S[zero].length == S[one].length &&
                    S[zero].all { it == cOne } &&
                    S[one].all { it == cTwo }
    ) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
