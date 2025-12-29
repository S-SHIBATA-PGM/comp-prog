const val blank: String = ""
const val space: String = " "

fun main() {
    val ABC: MutableList<Int> = readln().split(space).map { it.toInt() }
        .toMutableList()
    ABC.sortDescending()
    println(ABC.joinToString(separator = blank))
    kotlin.system.exitProcess(0)
}