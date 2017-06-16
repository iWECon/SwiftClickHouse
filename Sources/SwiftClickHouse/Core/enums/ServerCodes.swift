import Foundation

enum ServerCodes : UInt64 {
    case Hello       = 0;    /// Имя, версия, ревизия.
    case Data        = 1;    /// Блок данных со сжатием или без.
    case Exception   = 2;    /// Исключение во время обработки запроса.
    case Progress    = 3;    /// Прогресс выполнения запроса: строк считано, байт считано.
    case Pong        = 4;    /// Ответ на Ping.
    case EndOfStream = 5;    /// Все пакеты были переданы.
    case ProfileInfo = 6;    /// Пакет с профайлинговой информацией.
    case Totals      = 7;    /// Блок данных с тотальными значениями, со сжатием или без.
    case Extremes    = 8;    /// Блок данных с минимумами и максимумами, аналогично.
}
