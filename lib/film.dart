class Film {
  String label;
  String imageUrl;
  String categorys;

  List<Description> descriptions;

 Film(this.label, this.imageUrl, this.descriptions, this.categorys);

  static List<Film> samples = [
    Film(
      'Третий лишний',
      '5294.jpg',
      [
        Description(
          // 0,
          'Джон влюблен в красавицу Лори. Он работает в прокате автомобилей и имеет большие планы на будущее. Но в их отношения вмешивается третий, давний друг Джона  Тед\n'
              '. Он отрывается сутки напролет, предпочитает случайные связи и не желает терять друга. Но никто на самом деле не знает на что он способен, ведь Тед  большой плюшевый медведь.',
        ),
      ],
      'Комедия',
    ),
    Film(
      'Зачётный препод',
      '8095.jpg',
      [
        Description(
              'Незадачливый грабитель банков Зеки Мюллер после тринадцати месяцев отсидки выходит из тюрьмы. Он отправляется на поиски награбленной добычи, которая была спрятана на стройке. \n'
                  'Вместе с подружкой они думали, что там идёт всего-навсего прокладка труб. Каково же удивление горе-грабителя, когда он обнаруживает на нужном месте новенький школьный спортзал!'
              'Чтобы добраться до награбленного, Зеки пытается устроиться на место школьного сторожа. Но в результате лёгкого недопонимания вместо этого его берут в качестве учителя на замену. \n'
                  'Ему достаётся самый буйный и ненормальный класс во всей школе — 10 «Б». Используя несколько необычные методы, бывший грабитель неожиданно находит общий язык с учениками. \n'
                  'Одновременно с этим по ночам он пытается добраться до спрятанной добычи и влюбляется в коллегу-учительницу Лиси.',
        ),
      ],
      'Комедия',
    ),
    Film(
      'Гонка',
      '6797.jpg',
      [
        Description(
              '70-е годы XX века. Золотое время «Формулы-1»: обтекаемые формы гоночных машин, брутальные на треке и ранимые в обычной жизни гонщики, сексуальные поклонницы, \n'
                  'литры шампанского на финише для победителя Два непримиримых соперника в истории гонок  обаятельный плейбой-англичанин Джеймс Хант и дисциплинированный перфекционист-австриец Ники Лауда\n'
                  '  доводят себя до предела физической и психологической выносливости ради триумфа на трассе. Для них нет легких путей к победе и права на ошибку. Единственный промах гонщикам может стоить карьеры и даже жизни.',
          ),
          ],
          'Спорт',
    ),
    Film(
      'Вечные',
      '76996.jpg',
      [
        Description(
              'Вечные — представители расы генетически улучшенных суперлюдей, тайно живущих на Земле. Наделённые невероятными суперспособностями,\n'
                  ' на протяжении тысячелетий они скрывались от человеческой цивилизации, втайне защищая людей от монструозных девиантов.\n'
                  'Однако, последние события и действия Таноса заставили их выйти на свет.',
        ),
      ],
      'Фэнтези',
    ),
    Film(
      'Отряд самоубийц',
      '15810.jpg',
      [
        Description(
              'Правительство решает дать команде суперзлодеев шанс на искупление. Подвох в том, что их отправляют на миссию, где они, вероятнее всего, погибнут.',
        ),
      ],
      'Фэнтези',
    ),
    Film(
      'Стражи Галактики',
      '8145.jpg',
      [
        Description(
              'Отважному путешественнику Питеру Квиллу попадает в руки таинственный артефакт, принадлежащий могущественному и безжалостному злодею Ронану, строящему коварные планы по захвату Вселенной.\n'
                  'Питер оказывается в центре межгалактической охоты, где жертва — он сам.Единственный способ спасти свою жизнь — объединиться с четверкой нелюдимых изгоев: воинственным енотом по кличке Ракета,\n'
                  'человекоподобным деревом Грутом, смертельно опасной Гаморой и одержимым жаждой мести Драксом, также известным как Разрушитель.\n'
                  'Когда Квилл понимает, какой силой обладает украденный артефакт и какую опасность он представляет для вселенной, одиночка пойдет на все,\n'
                  'чтобы сплотить случайных союзников для решающей битвы за судьбу галактики.',
        ),
      ],
      'Фэнтези',
    ),
  ];
}

class Description {
  String measure;

  Description(
    this.measure,
  );
}

class Category1 {
  String category1;
  String url;

  Category1(
    this.category1,
    this.url,
  );
  static List<Category1> samples = [
    Category1('Комедия', '5294.jpg'),
    Category1('Фэнтези', '76996.jpg'),
    Category1('Спорт', '6797.jpg')
  ];
}
