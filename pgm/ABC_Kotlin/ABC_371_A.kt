const val GT: String = ">"
const val A: String = "A"
const val B: String = "B"
const val C: String = "C"
const val space: String = " "
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun rankABC(s: String, a: String, b: String, abc: MutableList<String>) {
    val indexA: Int = abc.indexOf(a)
    val indexB: Int = abc.indexOf(b)
    if (s == GT) {
        if (indexA < indexB) {
            abc.removeAt(indexB)
            abc.add(indexA, b)
        }
    } else {
        if (indexA > indexB) {
            abc.removeAt(indexA)
            abc.add(indexB, a)
        }
    }
}

fun main() {
    val S: List<String> = readln().split(space)
    val abc: MutableList<String> = mutableListOf(A, B, C)
    rankABC(S[zero], A, B, abc)
    rankABC(S[one], A, C, abc)
    rankABC(S[two], B, C, abc)
    println(abc[one])
    kotlin.system.exitProcess(0)
}