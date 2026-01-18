import java.time.*

// import kotlin.math.*

const val space: String = " "

fun main() {
    val (A: Int, B: Int, C: Int, D: Int) = readln().split(space).map { it.toInt() }
    val Yes: String = "Yes"
    val No: String = "No"
    if (!LocalTime.of(C, D).isAfter(LocalTime.of(A, B))) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
