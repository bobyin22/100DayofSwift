//: [Previous](@previous)

import Foundation

//1️⃣ ❌ Lanmark類 已經有final，不能有繼承
final class Landmark { }
//final class Monument: Landmark { }

//2️⃣
class Magazine { }
final class FashionMagazine: Magazine { }

//3️⃣ ❌ GemStone類 已經有final，不能有繼承
final class GemStone { }
//class Diamond: GemStone { }

//4️⃣ ❌ struct 不能繼承
class Movie { }
//final struct Comedy: Movie { }
final class Comedy: Movie { }

//5️⃣ ❌ class 不能繼承 struct
//struct Massage { }
class Massage { }
class HeadMassage: Massage { }

//6️⃣
class Game { }
final class BoardGame: Game { }

//7️⃣
class Furniture { }
class Couch: Furniture { }

//8️⃣ ❌ 子類 沒寫繼承的 父類
class Pen { }
//class Bic { }
class Bic: Pen { }

//9️⃣
class Shoes { }
final class KittenHeels: Shoes { }

//1️⃣0️⃣
class Player { }
class Barbarian: Player { }

//1️⃣1️⃣
class Hat { }
class Fez: Hat { }

//1️⃣2️⃣ ❌ struct 不能繼承
class MusicPlayer { }
//struct RecordPlayer: MusicPlayer { }
class RecordPlayer: MusicPlayer { }

//: [Next](@next)
