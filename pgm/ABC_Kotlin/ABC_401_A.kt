// import java.time.*

// import kotlin.math.*

const val twoHundred: Int = 200
const val twoHundredNinetyNine: Int = 299
const val Success: String = "Success"
const val Failure: String = "Failure"

fun main() {
    val S: Int = readln().toInt()
    if (S in twoHundred..twoHundredNinetyNine) {
        println(Success)
    } else {
        println(Failure)
    }
    kotlin.system.exitProcess(0)
}
