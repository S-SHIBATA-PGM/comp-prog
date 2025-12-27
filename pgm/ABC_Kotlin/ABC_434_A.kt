const val one: Int = 1
const val thousand: Int = 1000
const val zero: Int = 0

fun main() {
    val list: List<String> = readln().split(" ")
    val W: Int = list[zero].toInt()
    val B: Int = list[one].toInt()
    println(W * thousand / B + one)
    kotlin.system.exitProcess(0)
}