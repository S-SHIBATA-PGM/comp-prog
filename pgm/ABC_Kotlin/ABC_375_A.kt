// import java.time.*

// import kotlin.math.*

const val sharpDot: String = "#.#"

fun main() {
    readln().toInt()
    val S: String = readln()
    val len = sharpDot.length
    println(S.windowed(len).count { it == sharpDot })
    kotlin.system.exitProcess(0)
}