// import java.time.*

// import kotlin.math.*

const val circle: String = "o"
const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val one: Int = 1

fun main() {
    val (_, L: Int, R: Int) = readln().split(space).map { it.toInt() }
    val S: String = readln()
    val reg: String = """^$circle+$"""
    if (reg.toRegex().matches(S.substring(L - one, R))) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}