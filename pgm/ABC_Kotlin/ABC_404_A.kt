// import java.time.*

// import kotlin.math.*

const val a: Int = 'a'.code
const val z: Int = 'z'.code
const val space: String = " "

fun main() {
    val S = readln().toCharArray()
    for (i in a..z) {
        var breakFlg = false
        for (c in S) {
            if (c.code == i) {
                breakFlg = true
                break
            }
        }
        if (!breakFlg) {
            println(i.toChar())
            return
        }
    }
}