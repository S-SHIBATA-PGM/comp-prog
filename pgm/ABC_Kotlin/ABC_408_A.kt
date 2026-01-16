// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val zero: Int = 0

fun main() {
    val (_: Int, S: Int) = readln().split(space).map { it.toInt() }
    val T: List<Int> = readln().split(space).map { it.toInt() }
    var pre: Int = zero
    var awake: String = Yes
    for (i: Int in zero until T.size) {
        if (S < T[i] - pre) {
            awake = No
            break
        }
        pre = T[i]
    }
    println(awake)
    kotlin.system.exitProcess(0)
}