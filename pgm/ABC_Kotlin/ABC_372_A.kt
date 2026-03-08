// import java.time.*

// import kotlin.math.*

const val reg: String = "\\.+"
const val blank: String = ""

fun main() {
    println(readln().replace(Regex(reg), blank))
    kotlin.system.exitProcess(0)
}