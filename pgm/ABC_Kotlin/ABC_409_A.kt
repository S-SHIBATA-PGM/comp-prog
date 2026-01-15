// import java.time.*

// import kotlin.math.*

const val circle: String = "o"
const val Yes: String = "Yes"
const val No: String = "No"
const val blank: String = ""
const val zero: Int = 0

fun main() {
    readln()
    val T: List<String> = readln().map { it.toString() }
    val A: List<String> = readln().map { it.toString() }
    if (T.zip(A).count { (t, a) -> circle.equals(t) && t.equals(a) } > zero) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
