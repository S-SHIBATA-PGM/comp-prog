// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"

fun main() {
    val P: String = readln()
    val L: Int = readln().toInt()
    if (P.length >= L) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
