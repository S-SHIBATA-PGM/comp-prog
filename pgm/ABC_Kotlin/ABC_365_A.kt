// import java.time.*

import kotlin.math.*

const val four: Int = 4
const val hundred: Int = 100
const val year: Int = 365
const val leapYear: Int = 366
const val fourHundred: Int = 400
const val zero: Int = 0

fun main() {
    val Y: Int = readln().toInt()
    val isLeapYear: Boolean =
            when {
                Y % four != zero -> false
                Y % four == zero && Y % hundred != 0 -> true
                Y % hundred == zero && Y % fourHundred != 0 -> false
                else -> true
            }
    if (isLeapYear) {
        println(leapYear)
    } else {
        println(year)
    }
    kotlin.system.exitProcess(0)
}