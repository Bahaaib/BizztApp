class TextUtils {
  static String ceoWord =
      '“חברת bizzt (ביזט) שמה לה מטרה לקדם את העסקים בישראל במגוון דרכים ובשיטות מודרניות וטכנולוגיות. מטרתנו היא לממש את מלוא הפוטנציאל הנמצא בכל עסק ובכל תחום, ולהגיע ולמשוך את קהל היעד של העסק שלכם ובכך להגדיל את ההכנסות בעסק. אצל חברתנו bizzt תמצאו מגוון פתרונות מתקדמים, החל ממערכות וכלי ניהול העסק ועד שיווק ופרסום המוצרים שלכם. אם אתם בעלי עסקים המעוניינים להגדיל את המכירות בעסק שלכם, זה הזמן לפנות אל bizzt ולהתחיל להרוויח”';
  static List<String> promotionServicesDetails = [
    '',
    'כל עסק המכבד את עצמו, כבר הבין מזמן שכדאי לדעת איך להשתמש בפייסבוק ע"מ להגיע לקהלים ולקחות חדשים',
    'קידום ממומן, הינו שם כללי למגוון סוגי פרסום במדיה הדיגיטלית ובראשם גוגל ופייסבוק. הכנו עבורכם מדריך מלא אודות שיטות קידום ממומן',
    'עדיין אין לכם אתר משלכם לעסק? מעוניינים לשדרג את האתר הקיים? בקרו בעמוד בניית אתרים וגלו את כל המידע הרלוונטי עבורכם',
    'קידום אתרים מקצועי באמצעות שיטות שונות ויעילות, אשר יסייעו לכם לדרג את האתר שלכם גבוה בתוצאות מנועי החיפוש השונים',
    'בניית דפי נחיתה אצל bizzt כוללת עיצוב, כתיבת תוכן והפעלת קמפיין מותאם אישית לתקציב שלכם. בעמוד הבא תמצאו מידע מלא אודות בניית דפי נחיתה של חברתנו',
    'כאשר קהל הלקוחות שלכם נמצא גם באינסטגרם, רצוי שתיהיה לכם נוכחות ועמוד פעיל. מעוניינים לדעת כיצד לעשות זאת נכון? בקרו בעמוד שיווק באינסטגרם ממוקד ללקוחות שלכם',
    'בין שירותינו תמצאו גם שירות כתיבת תוכן שיווקי לעסקים, המתאים לקידום, שיווק ופרסום נכון. בקרו במאמר המלא ע"מ לקבל פרטים מלאים אודות השירות והאופן בו הוא נעשה',
    'עיצוב גרפיקה יכול לסייע רבות במיתוג ותדמית העסק שלכם. כאשר תפרסמו מודעות מעוצבות בצורה מקצועית, הלקוחות שלכם יקבלו רושם של עסק רציני שכדאי לפנות אליו',
  ];

  static List<String> promotionServicesTitles = [
    '',
    'פרסום בפייסבוק',
    'קידום ממומן',
    'בניית אתרים',
    'קידום אתרים',
    'בניית דפי נחיתה',
    'שיווק באינסטגרם',
    'כתיבת תוכן',
    'עיצוב גרפיקה'
  ];

  static List<String> promotionServicesImages = [
    '',
    'assets/fb.jpg',
    'assets/funded.jpg',
    'assets/web.jpg',
    'assets/seo.jpeg',
    'assets/landing.jpg',
    'assets/insta.png',
    'assets/content.jpeg',
    'assets/graphic.jpg',
  ];

  static List<String> businessServicesDetails = [
    '',
    'קורה לכם שאתם מוצאים עצמכם מבולבלים בין עשרות ההזמנות? זקוקים לפתרונות יעילים? במערכת שלנו לניהול הזמנות תמצאו מענה ראוי לעסקים הזקוקים לקצת סדר',
    'מערכת ניהול יומן חכמה של חברתנו bizzt, תספק לכם את הסדר הנחוץ לכל העסק. המערכת יעילה לקביעת פגישות, תורים, שירותים מקצועיים ועוד',
    'מחפשים לעשות סדר בפניות מלקוחות חדשים? מעוניינים במערכת בקרה מסודרת? מערכת לניהול לידים של חברתנו, תספק לכם את הפתרונות לכך',
    'מעוניינים לשמור על קשר על הלקוחות הקיימים אך לא יודעים כיצד לעשות זאת? מערכת ניהול לקוחות חכמה ומתקדמת תעשה זאת במקומכם',
    'קטגוריה זו מיועדת לבעלי העסקים המעוניינים לשפר ולמצות את היכולות הטמונות בעסק שלכם. כאן תמצאו חוקים ומידע הקשורים לעולם העסקים - קטנים וגדולים כאחד',
    'אם אתם בתחילת דרככם בעולם העסקי ורוצים ללמוד כיצד להקים את העסק בדרך הנכונה ובכך להימנע מטעויות, בקטגורית פתיחת עסק תמצאו מענה אינפורמטיבי',
    'מחפשים להתמקצע בתחום קידום, בניית ושיווק אתרים ועסקים? בקורסים שלנו תוכלו לעשות זאת בדרך הקלה והמהירה ובזמנים המתאימים לכם, תוך ייעוץ והדרכה אישית לכל תלמיד',
    'הפתרון האולטימטיבי כמעט לכל עסק, הינו מערכת crm שתבצע עבורו כמעט הכל ובאופן אוטומטי. המערכת שלנו הינה חדשנית, חכמה, יעילה הכוללת תמיכה טכנית מסביב לשעון ועוד'
  ];

  static List<String> businessServicesTitles = [
    '',
    'ניהול הזמנות',
    'ניהול יומן',
    'ניהול לידים',
    'ניהול לקוחות',
    'חוקים ומידע',
    'פתיחת עסק',
    'הקורסים שלנו',
    'מערכות crm'
  ];

  static List<String> businessServicesImages = [
    '',
    'assets/order.jpg',
    'assets/log.png',
    'assets/lead.jpg',
    'assets/client.png',
    'assets/laws.png',
    'assets/start.jpg',
    'assets/courses.png',
    'assets/crm.png',
  ];

  static List<String> advantages = [
    'אצלנו תקבלו בנוסף שירותי אחסון, מה שיקל עליכם ויחסוך לכם התעסקויות מיותרות',
    'אתם תוכלו להיות בטוחים כי הנתונים נמצאים במקום מאובטח ומתחוזק, כדי שאלו לא יפלו למקומות הלא נכונים',
    'אצל חברת Bizzt תקבלו תמיכה טכנית וייעוץ בכל זמן בו תצטרכו את שירותינו',
    'אצלנו תקבלו שירות אישי, אדיב ומקצועי לכל מגוון שירותינו הרבים'
  ];

  static List<String> priceTitles = [
    'שירותי קידום',
    'שירותי ניהול',
    'שירותי בנייה ועיצוב'
  ];

  static List<String> priceValues = ['1500', '390', '500'];

  static List<String> priceList1 = [
    'קידום אתרים אורגני',
    'פרסום בפייסבוק',
    'קידום ממומן בגוגל',
    'שיווק באינטרנט',
    'ניהול מוניטין',
    'בניית קישורים',
    'כתבות יח"צ',
    'אבטחת אתרים'
  ];

  static List<String> priceList2 = [
    'ניהול קשרי לקוחות',
    'הנפקת חשבוניות',
    'ניהול לקוחות',
    'ניהול לידים',
    'ניהול עובדים',
    'ניהול יומן',
    'בקרת העסק',
    'הנהלת חשבונות'
  ];

  static List<String> priceList3 = [
    'בניית ועיצוב אתרים',
    'עיצוב גרפיקה',
    'כתיבת מאמרים',
    'אפיון אתרים',
    'בניית ועיצוב לוגו',
    'שם וסלוגן לעסק',
    'דומיינים ואחסון אתרים',
    'בניית דפי נחיתה'
  ];

  static List<List<String>> priceContentLists = [
    priceList1,
    priceList2,
    priceList3
  ];

  static List<String> stats = [
    'לקוחות בעמוד הראשון בגוגל',
    'פרויקטים שהושלמו',
    'פרויקטים חדשים',
    'לקוחות מרוצים'
  ];
}
