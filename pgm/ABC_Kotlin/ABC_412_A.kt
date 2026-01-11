// import java.time.*

// import kotlin.math.*

const val space: String = " "

fun main() {
    val N: Int = readln().toInt()
    val A: MutableList<Int> = mutableListOf<Int>()
    val B: MutableList<Int> = mutableListOf<Int>()
    repeat(N) {
        val (a: Int, b: Int) = readln().split(space).map { it.toInt() }
        A.add(a)
        B.add(b)
    }
    println(A.zip(B).count { (a, b) -> b > a})
    kotlin.system.exitProcess(0)
}