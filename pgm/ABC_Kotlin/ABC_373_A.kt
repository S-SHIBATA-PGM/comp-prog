// import java.time.*

// import kotlin.math.*

const val one: Int = 1
const val zero: Int = 0

fun main() {
    var line: String? = null
    var i: Int = one
    var cnt: Int = zero
    while (readlnOrNull().also { line = it } != null) {
        var S: String = line!!
        if (S.length == i) {
            cnt++
        }
        i++
    }
    println(cnt)
    kotlin.system.exitProcess(0)
}