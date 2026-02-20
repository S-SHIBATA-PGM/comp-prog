// import java.time.*

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val abc: List<String> = readln().map { it.toString() }
    println("${abc[one]}${abc[two]}${abc[zero]}${space}${abc[two]}${abc[zero]}${abc[one]}")
    kotlin.system.exitProcess(0)
}
