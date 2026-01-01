// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val (X: String, Y: String) = readln().split(space)
    val OS: List<String> = listOf("Ocelot", "Serval", "Lynx")
    if (OS.indexOf(Y) <= OS.indexOf(X)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
