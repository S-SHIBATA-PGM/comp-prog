// import java.time.*

// import kotlin.math.*

const val red: String = "red"
const val blue: String = "blue"
const val green: String = "green"
const val SSS: String = "SSS"
const val FFF: String = "FFF"
const val MMM: String = "MMM"
const val Unknown: String = "Unknown"

fun main() {
    val S: String = readln()
    val Language: Map<String, String> = mapOf(red to SSS, blue to FFF, green to MMM)
    if (S in Language) {
        println(Language[S])
    } else {
        println(Unknown)
    }
    kotlin.system.exitProcess(0)
}
