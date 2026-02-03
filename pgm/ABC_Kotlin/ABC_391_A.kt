// import java.time.*

// import kotlin.math.*

const val N: String = "N"
const val E: String = "E"
const val W: String = "W"
const val S: String = "S"
const val blank: String = ""

fun main() {
    val D = readln()
    val NEWS = mapOf(N to S, E to W, W to E, S to N)
    println(D.map { NEWS.getValue(it.toString()) }.joinToString(""))
}
