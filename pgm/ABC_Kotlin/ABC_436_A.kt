const val circle: Char = 'o'

fun main() {
    val N: Int = readln().toInt()
    val S: String = readln()
    println(S.padStart(N, circle))
    kotlin.system.exitProcess(0)
}