// import java.time.*

import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val sweet: String = "sweet"
const val blank: String = ""
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    val S: Array<String> = Array(N) { blank }
    for (i in zero until N) {
        S[i] = readln()
    }
    var cnt: Int = zero
    for (i in zero until S.size) {
        if (i != N - 1 && cnt == one && S[i] == sweet) {
            println(No)
            kotlin.system.exitProcess(0)
        } else if (S[i] == sweet) {
            cnt++
        } else {
            cnt = zero
        }
    }
    println(Yes)
    kotlin.system.exitProcess(0)
}