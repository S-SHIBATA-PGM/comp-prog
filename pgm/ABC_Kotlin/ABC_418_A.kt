// import java.time.*

// import kotlin.math.*

const val tea: String = "tea"
const val Yes: String = "Yes"
const val No: String = "No"

fun main() {
    readln()
    val S: String = readln()
    if (S.endsWith(tea)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}