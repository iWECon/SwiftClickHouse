//
// Created by Alexandr Palchikov on 08.06.17.
//

import Foundation

enum ClientCodes : UInt64 {
    case Hello       = 0;    /// Имя, версия, ревизия, БД по-умолчанию.
    case Query       = 1;    /** Идентификатор запроса, настройки на отдельный запрос,
                                      * информация, до какой стадии исполнять запрос,
                                      * использовать ли сжатие, текст запроса (без данных для INSERT-а).
                                      */
    case Data        = 2;    /// Блок данных со сжатием или без.
    case Cancel      = 3;    /// Отменить выполнение запроса.
    case Ping        = 4;    /// Проверка живости соединения с сервером.
}