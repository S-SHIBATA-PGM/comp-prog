// import java.time.*

// import kotlin.math.*

const val A: String = "A"
const val B: String = "B"
const val C: String = "C"
const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val S: String = readln()
    if (listOf(A, B, C).all { it in S }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}