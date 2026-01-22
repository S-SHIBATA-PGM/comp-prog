// import java.time.*

// import kotlin.math.*

const val a: Char = 'a'
const val z: Char = 'z'

fun main() {
    val S: String = readln()
    for (c in a..z) {
        if (c !in S) {
            println(c)
            break
        }
    }
    kotlin.system.exitProcess(0)
}
