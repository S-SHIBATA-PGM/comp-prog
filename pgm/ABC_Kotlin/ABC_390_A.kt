// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val A: List<Int> = readln().split(space).map { it.toInt() }
    val indice: List<Int> = A.indices.toList().dropLast(one).filter { A[it] > A[it + one] }
    if (indice.size == one) {
        val i = indice[zero]
        val list = A.toMutableList()
        val keep = list[i]
        list[i] = list[i + one]
        list[i + one] = keep
        if (list.zipWithNext().all { it.first <= it.second }) {
            println(Yes)
        } else {
            println(No)
        }
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}