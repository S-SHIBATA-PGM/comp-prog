// import kotlin.math.*

const val one: Int = 1
const val two: Int = 2

fun main() {
    val S: String = readln()
    val idx: Int = (S.length + one) / two - one
    println(S.removeRange(idx, idx + one))
    kotlin.system.exitProcess(0)
}