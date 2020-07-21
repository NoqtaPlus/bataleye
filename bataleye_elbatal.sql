-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 03, 2019 at 02:37 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bataleye_elbatal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_positions`
--

CREATE TABLE `ads_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_positions`
--

INSERT INTO `ads_positions` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'main-1', NULL, NULL),
(2, 'main-2', NULL, NULL),
(3, 'sidebar', NULL, NULL),
(4, 'inner-pages-1', NULL, NULL),
(5, 'inner-pages-2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `slider` tinyint(1) DEFAULT '0',
  `breaking` tinyint(1) DEFAULT '0',
  `keywards` text COLLATE utf8mb4_unicode_ci,
  `number_of_readings` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `person_id`, `category_id`, `image`, `active`, `slider`, `breaking`, `keywards`, `number_of_readings`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(20, NULL, 1, '11561732332512_784264125111991_5454245846126166016_n.png', 1, 0, 1, NULL, NULL, 1, 1, '2018-12-22 12:29:38', '2019-03-03 07:23:27'),
(16, NULL, 1, '11563133395458_788627001342370_6274912473170575360_n.jpg', 1, 0, 0, NULL, NULL, 1, 1, '2018-12-22 12:14:41', '2019-03-03 08:21:08'),
(17, NULL, 1, 'mAEVR30eUV1545481319.png', 1, 0, 0, NULL, NULL, 1, 1, '2018-12-22 12:21:59', '2019-03-03 07:23:30'),
(2, NULL, 2, 'TzUaV4dRRU1541585452.png', 1, 1, 1, NULL, NULL, 1, 1, '2018-11-07 08:10:52', '2019-03-03 07:23:44'),
(32, NULL, 1, '13420318.jpg', 1, 0, 0, NULL, NULL, 1, 1, '2019-01-30 13:39:27', '2019-03-03 07:24:51'),
(24, NULL, 1, 'Cx8mfZlutr1545483630.png', 1, 0, 0, NULL, NULL, 1, 1, '2018-12-22 13:00:31', '2019-03-03 07:24:37'),
(3, NULL, 2, 'PNVFQvVm1C1545481955.png', 1, 0, 1, NULL, NULL, 1, 1, '2018-12-22 12:32:35', '2019-03-03 07:23:42'),
(25, NULL, 1, 'NS0rMm6G341545486085.jpg', 1, 0, 0, NULL, NULL, 1, 1, '2018-12-22 13:41:25', '2019-03-03 07:24:47'),
(27, NULL, 1, 'vhoZMuvuIC1545486806.png', 1, 0, 0, NULL, NULL, 1, 1, '2018-12-22 13:53:26', '2019-03-03 07:25:42'),
(1, NULL, 1, 'vVpPYaCkZB1545487316.png', 1, 0, 0, NULL, NULL, 1, 1, '2018-12-22 14:01:56', '2019-03-03 07:23:47'),
(33, NULL, 1, '13540435201889_797818247089912_8444102267409268736_n.png', 1, 0, 0, NULL, NULL, 1, 1, '2019-01-30 13:54:04', '2019-03-03 07:24:53'),
(34, NULL, 1, '14043029186888_759160744288996_5583098092280459009_n.jpg', 1, 0, 0, NULL, NULL, 1, 1, '2019-01-30 13:54:27', '2019-03-03 07:56:34'),
(35, NULL, 1, '13594543749657_887763418095394_2572837379131834368_n.jpg', 1, 0, 0, NULL, NULL, 1, 1, '2019-01-30 13:55:23', '2019-03-03 07:26:04'),
(36, NULL, 1, '14033339090106_854856444719425_56919041205338112_n.jpg', 1, 0, 0, NULL, NULL, 1, 1, '2019-01-30 14:03:33', '2019-03-03 07:26:00'),
(37, NULL, 1, '14045029178923_759165970955140_2933516826114924446_n.jpg', 1, 0, 0, NULL, NULL, 1, 1, '2019-01-30 14:03:47', '2019-03-03 07:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_translation`
--

CREATE TABLE `blogs_translation` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `keywards` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs_translation`
--

INSERT INTO `blogs_translation` (`id`, `blog_id`, `locale`, `title`, `short_description`, `long_description`, `content`, `keywards`, `created_at`, `updated_at`) VALUES
(13, 2, 'en', 'Operation of Batal for himself', 'Exclusive event for the first time in the Batal Specialist Center  in Jeddah', 'Exclusive event for the first time in the Batal Specialist Center in Jeddah\r\nDr. Ahmed Al-Batal will perform a vision correction before his patients using LASIK and presbyond\r\nUnique UK and exclusive brands in Saudi Arabia to get rid of reading glasses for over 40 years.\r\nOur appointment today at 4.30 pm', NULL, NULL, '2018-11-07 08:10:52', '2019-02-14 11:19:08'),
(14, 2, 'ar', 'عملية البطل لنفسه', 'حدث حصري ولأول مرة في مُجمع بطل التخصصي بجدة', '<p>حدث حصري ولأول مرة في مُجمع بطل التخصصي بجدة ، الدكتور احمد البطل سيقوم بإجراء عملية تصحيح النظر لعينيه قبل مرضاه بإستخدام تقنية الليزك و presbyond النقنية الفريدة في بريطانيا و الحصرية في المملكة العربية السعودية للتخلص من نظارة القراءة لمن فوق ال 40 عام . موعدناً اليوم في تمام الساعة 4.30 مساءً</p>', NULL, NULL, '2018-11-07 08:10:52', '2019-02-14 11:19:08'),
(21, 11, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 11:35:50', '2018-12-22 11:35:50'),
(22, 11, 'ar', 'خبير إبصار', 'موجات الجوال ترفع حرارة المنطقة المحيطة بالعين 3 درجات', '<p>أكد أنها كافية للإصابة بـ&quot;الكتاركتا&quot;&nbsp;<br />\r\nالمصدر : جريدة الوطن&nbsp;<br />\r\nحذر خبير في الإبصار من خطورة الهاتف الجوال على النظر مؤكدا خطورة الموجات المنبعثة من الهاتف النقال (الجوال) على العين فالمئات من الدراسات العلمية الأمينة أثبتت تأثيرها (التراكمي) على المدى الطويل على المخ والأذن والعين. وأوضح رئيس قسم تصحيح النظر بمستشفى مغربى بعسير زميل كلية الجراحين الملكية ببريطانيا الدكتور محمد حنتيرة أن الهاتف النقال (الجوال) يصدر عنه موجات بنفس الطول الموجى للميكرو ويف وكما هو معروف فإن أجهزة الميكرو ويف هي تلك التي يصدر عنها درجات حرارة عالية كافية لاستعمالها للطهي. و أشار إلى أن &quot;جيلنا من البشر هو الوحيد على وجه التاريخ الذي جازف بتعريض أجسادنا لتردد موجات الراديو الواسعة المجال (30 kHz-300MHz) وموجات ميكروويف (300-3000 MHz) باستعمال الهواتف النقالة. وضرب مثلا بسيطا بأن تستقبل مكالمة تليفونية بجوار التلفاز أو راديو السيارة فستفاجأ بذبذبات عالية تتداخل مع صورة التلفاز أو صوت الراديو مفسرا ذلك بأن الهاتف النقال عند استقباله للمكالمة يبث موجات بقوه 0.2 إلى 0.6 واط - 40% منها تمتصه أيدينا ورؤوسنا. و أضاف &quot;أن الهاتف النقال (الجوال) يعتبر موصلا قويا لموجات الراديو بل ومركّزا لها في اتجاه رؤوسنا - بقدرة تصل إلى عشرة آلاف ضعف من تلك التي يستقبلها جهاز راديو (عادى) على بعد 30 متر من برج لبث موجات الراديو&quot; وعن مدى ضرر الموجات الصادرة من الهاتف النقال على العين أكد أن موجات الميكروويف الصادرة عن الهاتف النقال ترفع درجه حرارة المنطقة المحيطة بالعين إلى ثلاث دراجات مئوية وهذا ما يكفي لعمل عتامة بعدسة العين (الكتاركتا)&quot;. و لفت إلى أن إحدى الدراسات الألمانية أثبتت الارتباط الوثيق بين سرطان الأغشية الداخلية للعين واستعمال هؤلاء المرضى للهواتف النقالة. و فيما اعتبر حنتيرة الحديث عن أضرار الهاتف النقال في أيامنا هذه مثل الحديث عن أضرار التدخين منذ خمسين عاما أورد عشر نصائح تساعد في تجنب مضارها على النحو التالي:</p>\r\n\r\n<ol>\r\n	<li>قلل من استعمالك للهاتف الجوال أثناء اليوم واجعله في الضرورة القصوى مثل السفر أو حالات الطوارئ.</li>\r\n	<li>اجعل مكالماتك أقصر ما يكون وحاول أن تستعمل التليفون الأرضي كبديل آمن</li>\r\n	<li>لا تستعمله أثناء جلوسك بالسيارة وبالطبع أثناء القيادة - حيث أثبتت دراسات بمصانع سيارات فولكس فاجن الألمانية أن استعمال الهاتف النقال داخل هذا الصندوق الحديدي (السيارة) يركز الموجات الكهرومغناطيسية على جسمك ورأسك (عشرة أضعاف).</li>\r\n	<li>استعمل مكبرات الصوت بالهاتف للرد على المكالمة حتى لا تجعل مثل هذا الجهاز قريبا من رأسك</li>\r\n	<li>استعمال السماعات المتصلة بالهاتف عن طريق سلك خطر أيضا والأكثر أمانا هو استعمال السماعات بدون سلك أو ما يستعمل تكنولوجيا (Bluetooth).</li>\r\n	<li>حاول أن ترد على المكالمات في وجود إشارة إرسال قوية (وليست ضعيفة) حيث يقلل هذا من الموجات الكهرومغناطيسية المركزة على رأسك.</li>\r\n	<li>لا تضعه في حزام البنطال أو في جيب ثوبك - فقد أثبتت الدراسات تأثيره على عدد الخلايا المنوية للرجال.</li>\r\n	<li>لا تستقبل مكالمة أثناء شحن الهاتف بالكهرباء.</li>\r\n	<li>لا تسكن بجوار برج للهواتف النقالة.</li>\r\n	<li>في حالة عدم استعمالك للهاتف النقال (ليلا) من الأفضل إطفاؤه ونزع البطارية منه تماما (لأن وجود البطارية به يعنى استمرار استقباله للموجات حتى لو كانت شاشة الهاتف مقفلة).</li>\r\n</ol>', NULL, NULL, '2018-12-22 11:35:50', '2018-12-22 11:37:09'),
(23, 12, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 11:45:27', '2018-12-22 11:45:27'),
(24, 12, 'ar', 'زراعة الحلقات (الحزام) لعلاج القرنية المخروطية', 'القرنية هى النافذة الشفافة التي تغطى الجزء الملون من العين (القزحية) .. وهى تعمل كعدسه مجمعة للاشعة الضوئية ... وبالتالي اى تغييرات على سطح القرنية ... يغير تماما في انكسار الأشعة الضوئية ... وهذا ما ينتج عنه عدم وضوح في الرؤية.', 'القرنية المخروطية ... مرض وراثى ... يصيب القرنية ... ويسبب زيادة فى تحدبها – بصفة مستمرة.\r\n\r\n\r\nس:انا مريض قرنية مخروطية ... طالما لدى قصر نظر مع استجماتزم (انحراف) ؟ لماذا لا يصلح لى عملية الليزك؟\r\nج: الليزك (تصحيح عيوب الابصار باستعمال الاكزيمر ليزر) هى عمليه تجرى للمرضى الذين لديهم ضعف فى الابصار ... ثابت ( و أأكد على كلمة ثابت .. أي غير متغير مثل ذلك الموجود فى حالة القرنية المخروطية).\r\n\r\nس: ما هى المادة التى تصنع منها الحلقات؟ \r\nج: هى بلاستيكية معالجه كيميائيا (اكرلك).\r\n\r\nس: كيف تعمل الحلقات على تحسين النظر و معالجة تحدب القرنية؟\r\nج: وبما إن القرنية هي السطح الخارجي للعين .... فمن السهولة الوصول لها وإجراء العمليات الجراحية فيها بدون الحاجة إلى  الدخول إلى قاع مقلة العين.\r\n\r\n\r\n\r\nس: انا لدي حساسية من المواد البلاستيكية للعدسات اللاصقة .. هل من الممكن ان يحدث لى حساسية من المادة المكونة للحلقات؟\r\nج: لا يمكن ان يحدث حساسية للمادة المكونة للحلقات .... حيث انه عموما تحدث الحساسية من ارتداء العدسات ...  نتيجة تفاعل العين مع الملوثات المحيطة ... وليس المادة البلاستيكية.\r\n\r\nس: ما الفائدة من زراعة الحلقات؟\r\nج: الفوائد من زراعة الحلقات كثيرة منها :\r\n1.    ارتفاع نسبة النجاح ... وندره حدوث مضاعفات.\r\n2.    امكانية ازالتها فى اي وقت (اذا دعت الحاجة).\r\n3.    امكانية اعادة ضبطها (اذا لم تقم بدورها فى تصيح التحدب .. يمكن زراعة مقاس اكبر).\r\n4.    لا يوجد بها فرصة لرفض الجسم لها.\r\n5.    توقف او تقلل من نمو المخروط.\r\n6.    عدد كبير من المرضى لا يحتاجون الى زراعة قرنية.\r\n7.    حتى لو احتاج المريض الى زراعة قرنية بعد ذلك ... فلا تعارض بين الحلقات و بين زراعة القرنية.\r\n\r\nس: ما نسبة نجاح هذه العملية؟\r\nج: خلال الدراسة العلميه التى اجريت على 340 مريض اجري لهم زراعة الحلقات ما بين سنة 1996 الى 2001.\r\nدرجة القرنية المخروطية    قوه الابصار بدون نظارة    نسبة المرضى\r\nالدرجة الاولى    6/18    او احسن    59%\r\nالدرجة الثانية    6/18    او احسن    53.5%\r\nالدرجة الثالثة    6/18    او احسن    30.7%\r\nالدرجة الرابعة    6/18    او احسن    19.3%\r\n\r\nدرجة القرنية المخروطية    قوه الابصار مع  النظارة    نسبة المرضى\r\nالدرجة الاولى    6/18    او احسن    94%\r\nالدرجة الثانية    6/18    او احسن     92.6%\r\nالدرجة الثالثة    6/18    او احسن    71.7%\r\nالدرجة الرابعة    6/18    او احسن    80%\r\n\r\nملاحظه: معظم المرضى قوة ابصارهم افضل من تلك التى يظهرها قياسات الكومبيوتر.\r\nملاحظه: معظم المرضى بعد العملية يتحسن عندهم قصر النظر ولكن يزيد عندهم الاستجماتزم.\r\n\r\nس: ما هى الاثار الجانبية لزراعة الحلقات ؟\r\nج: هذه العملية امنة ... نسبة حدوث مضاعفات بها لا يتجاوز 5%. \r\nاثناء العملية:\r\n•    اذا كان  هناك صعوبة على الطبيب فى صناعة القنوات التى سيتم ادخال الحلقات بها ... فى هذه الحاله سيتم التوقف عن اجراء العمليه ...ومع  الالتئام الطبيعى سيرجع وضع القرنية كسابق حالها ... حيث ان هذه القنوات فى اطراف القرنية (بعيده عن مركز القرنية).\r\n\r\nبعد اجراء العملية:\r\n•    هجرة الحلقات من مكانها: و هذا يحدث اكثر مع المرضى الذين يعانون من الاصل من حساسية بملتحة العين (و يكثروا من حكة العين) ... ولذلك ننصح المرضى بالابتعاد عن حكة العين قدر المستطاع ... حيث ان ذلك قد يحرك الحلقات من مكانها و قد تخرج من الجرح الاصلى للعمليه. وهذه علاجها بسيط بان يتم اعادة تثبيتها فى قناه اعمق من تلك التى تسبقها (امكانية حدوثها 3 حالات فى كل 100 حالة).\r\n•    التهاب ميكروبى: وهذا يندر حدوثه – حيث ان العملية تجرى فى حجرة العمليات (على اعلى مستوى من درجات التعقيم) – وكذلك ينصح المريض بالراحه خلال الثلاث ايام الاول مع استعمال القطرات المعقمة. وان حدث ذلك فانها تعالج باستعمال قطرات المضاد الحيوى.                  (فى الدراسة المذكورة ... هناك حالتين لم يستجيبا للعلاج الدوائى ... واحتاجا الى عمل زراعة قرنية).\r\n•    لا مركزية الحزام: افضل النتائج هى تلك التى يتمركز فيها الحزام حول قاعدة المخروط. ولذلك اذا حدث لا مركزية ... فمن الافضل اعادة وضع الحزام فى وضعه الصحيح.\r\n•    هالات حول مصادر الضوء فى الليل.\r\n\r\n\r\nمن هم المرضى الذين لا انصحهم بعمل عملية زراعة الحلقات؟\r\n•    اذا كنت من المرضى غير المهيئين لفترة علاج  بعد العمليه (ثلاثه شهور) والحضور للمتابعات تصل الى 4 مرات او يزيد.\r\n•    الذين لا يتفهمون ان العملية ... لا يمكن فيها الاستغناء عن النظارة الطبية او العدسات اللاصقة الرخوة ( فهى تختلف تماما عن عمليه الليزك لتصحيح عيوب الابصار).\r\n•    الذين لا يتفهمون ان زراعه الحلقات ... عمليه يختلف استجابة كل عين عن الاخرى ...  من الممكن الا يحدث تحسن فى الرؤية ... وفى هذه الحاله يتم استخراج الحلقات  (لكن فى معظم الاحيان يكون هناك تحسن ملحوظ).\r\n•    الذين تحتم عليهم اعمالهم العمل فى الليل مثل سائقى النقل ... او الذين يعملون فى مهنة التصوير ... حيث انه فى هذه البيئه المظلمه ... فى بعض الحيان يرى المريض هالات حول مصادر النور و التى قد تعيق اعمالهم.\r\n\r\nس: ماذا لو استمر تحدب القرنية وضعف الابصار بعد سنوات من زراعة الحلقات؟\r\nس: ببساطة شديدة ... يتم استبدالها بحلقات اخرى بالقياس الجديد. \r\n\r\nس: كم تستغرق العملية؟\r\nج: من عشر الى خمس عشر دقيقة.\r\n\r\nس: كيف تجرى العملية؟\r\nج:  1.  تجرى العملية تحت مخدر موضعى فى معظم الاحيان.\r\n2.    يتم زراعة الحلقات داخل قرنية العين من خلال جرح صغير جدا بقرنية العين لا يتجاوز 2 مم.\r\n3.    في بعض الحالات يمكن حياكة الجرح (غرزة واحدة).\r\n\r\nس: متى يمكن العودة الى البيت؟\r\nج:  فى نفس يوم العملية.\r\n\r\nس: متى يمكن ان تتحسن قوة الابصار؟\r\nج: قوة الابصار تتحسن ببطء على مدار ال 3 اسابيع الاولى ... ويستكمل المريض قوه ابصاره حتى ثلاثه شهور.\r\n\r\nس: هل من الممكن ان تتم العملية بالعينين؟\r\nج: فى معظم الاحيان تتم العملية بالعينين فى نفس الوقت ( اذا استدعت العينين).\r\n\r\nس: متى يمكن ان اعود الى العمل؟\r\nج: بعد يومين من العملية.\r\n\r\nس: ما هى الاحتياطات الواجبة بعد العملية؟\r\n1.    ج: على المريض/ المريضة عدم رفع الغطاء الا بأمر الطبيب.\r\n2.    من الطبيعى ان يشعر المريض باحمرار... دموع ... حرقان ... صعوبة فى رؤية الضوء ... وهج حول مصادر الضوء (مثل المصابيح) خاصة فى الليل.\r\n3.    يمكن المريض ان ينام فى الوضع المريح له ... ولا يحتاج ان يلتزم بوضع معين.\r\n4.    يعمل الغطاء البلاستيكى المثقب ... كالدرع يحمى العين من الصدمات ... يلبس عند النوم .. ركوب السيارة ... عند الاستحمام.\r\n5.    يتم ارتداء نظارات شمسية (بنية قاتمة او سوداء) بعد العملية لمدة اسبوع خلال النهار.\r\n6.    لا مانع من  حمل اي اثقال ... الصلاة (الركوع او السجود).\r\n7.    لا مانع من ممارسة التمرينات الرياضية .\r\n8.    الالتزام بمواعيد العلاج:\r\n•    قطرة ---------------- نقطة كل  -------- سا عات لمدة -----------\r\n•    قطرة ---------------- نقطة كل  -------- سا عات لمدة -----------\r\n•    قطرة ---------------- نقطة كل  -------- سا عات لمدة -----------\r\n•    قطرة ---------------- نقطة كل  -------- سا عات لمدة -----------\r\n9.     يتم احضار العلاج الطبى الموصوف (القطرات) فى كل زيارة للمتابعة.\r\n10.       يمكن للمريض  ممارسة الحياة الزوجية(الجماع) بعد العملية .\r\n11.    مواعيد زيارات المتابعة من يوم العملية:\r\n•    اليوم الاول.\r\n•    الاسبوع الاول.\r\n•    الشهر الاول.\r\n•    الشهر الثالث.\r\n•    الشهر السادس.', NULL, NULL, '2018-12-22 11:45:27', '2018-12-22 11:54:14'),
(25, 13, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 11:46:55', '2018-12-22 11:46:55'),
(26, 13, 'ar', 'ثثثثثثثثثثثثثثثثث', NULL, NULL, NULL, NULL, '2018-12-22 11:46:55', '2018-12-22 12:21:24'),
(27, 14, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 11:50:03', '2018-12-22 11:50:03'),
(28, 14, 'ar', 'زراعة القرنية', 'انها نوع من انواع زراعة الاعضاء (مثل زراعة القلب .. الرئه .. الكلى) . وهى استبدال العضو المريض بعضو سليم يؤخذ من شخص حديث الوفاهز', '<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:rgba(244, 242, 242, 0.9)\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#0d0d0d\">ما هى القرنية؟<br />\r\nهى الجزء الدائرى الشفاف ... الدى يقع فى مقدمة العين ويغطى القزحية (وهى الجزء الملون من العين). كما يغطى&nbsp; انسان العين (الفتحة الموجوده فى منتصف القزحية).</span></span></span></span></span></span></span></p>\r\n\r\n<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:rgba(244, 242, 242, 0.9)\">&nbsp;</span></span></span></span></p>\r\n\r\n<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:rgba(244, 242, 242, 0.9)\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#0d0d0d\">تعمل القرنية على انها عدسه تركز اشعة الضوء على الشبكية ... حتى يمكننا الرؤية.<br />\r\n<br />\r\nصفات القرنية السليمة:<br />\r\n1.&nbsp;&nbsp; &nbsp;شفافة.<br />\r\n2.&nbsp;&nbsp; &nbsp;مقوسة (كأنها سطح كره القدم).<br />\r\n3.&nbsp;&nbsp; &nbsp;سميكة.<br />\r\n<br />\r\nو أى خلل فى صفه من هده الصفات .... يؤدى الى ضعف الابصار.<br />\r\n<br />\r\nكيف يمكن ان تؤثر حالة القرنية على الرؤية؟<br />\r\n1.&nbsp;&nbsp; &nbsp;ادا اختلت شفافية القرنية نتيجة تورم انسجتها او غزوها بكرات الدم البيضاء (فى حالة وجود التهاب) او وجود سحابة (ناتج عن التئام جرح او قرحة).<br />\r\n2.&nbsp;&nbsp; &nbsp;ادا زاد تقوس القرنية (زيادة فى التحدب) و هدا ما يسمى (القرنيه المخروطية).<br />\r\n3.&nbsp;&nbsp; &nbsp;ادا زاد سمك القرنية (فى حالات تورم انسجتها) او تنحف فى سمك القرنية ( مثل حالات القرنية المخروطية).<br />\r\n<br />\r\n<br />\r\nوفى اى حالة من الحالات المدكورة والتى يعجز الطبيب عن علاجها بالعلاج الطبى او الليزر ..... يتم عمل زراعة للقرنية.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nهل يمكن زرع عين سليمة بدلا من عين غير مبصرة؟<br />\r\nبالطبع لا يمكن ... ودلك ليس لصعوبة الجراحة ولكن لاستحالة ان يقوم العصب البصرى بوظيفته وكدلك الشبكية او العدسة البللورية. لكن من الممكن نقل بعض اجزاء العين التى لا تفسد بعد الوفاة&nbsp; و منها القرنية.<br />\r\n<br />\r\nما الفرق بين ترقيع القرنية الطبقى &ndash; وترقيع القرنية الكامل؟<br />\r\n<br />\r\n<br />\r\nتتكون القرنيه من خمس طبقات:<br />\r\n1.&nbsp;&nbsp; &nbsp;خلايا سطحية.<br />\r\n2.&nbsp;&nbsp; &nbsp;غشاء بومان.<br />\r\n3.&nbsp;&nbsp; &nbsp;السدى ( وهى تمثل 90% من سمك القرنية).<br />\r\n4.&nbsp;&nbsp; &nbsp;غشاء الدسيميت.<br />\r\n5.&nbsp;&nbsp; &nbsp;خلايا داخلية.<br />\r\n<br />\r\nالمقصود بالترقيع الطبقى ... هى ان يتم استبدال احد الطبقات المصابة (المريضه)&nbsp; او اكثر باخرى سليمه .... والمحافظه على طبقات القرنية غير المريضة .<br />\r\n<br />\r\nبينما فى ترقيع القرنية الكامل ... يتم استبدال الخمس طبقات باخرى سليمه.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nما انواع&nbsp; الترقيع الطبقى؟&nbsp;<br />\r\n1.&nbsp;&nbsp; &nbsp;ترقيع القرنى الطبقى (الامامى): حيث يتم استبدال الثلاث الطبقات الاولى باخرى سليمة. واهم مميزاتها ان المريض لا يعانى من رفض للجسم. (اكثر استعمالا فى علاج امراض القرنية المخروطية و السحابات البيضاء السطحية).<br />\r\n2.&nbsp;&nbsp; &nbsp;ترقيع القرنى الطبقى (الخلفى): حيث يتم استبدال الطبقتين (4 و5) باخرى سليمة. واهم مميزاتها ان الطبيب لا يستعمل غرز &hellip;.. هدا ما يعجل من تحسن قوة الابصار بعد العملية بالمقارنة للترقيع القرنى الكامل. و تستعمل فى امراض القرنية والتى تصيب الخلايا الداخلية.<br />\r\n<br />\r\nمن اين يتم احضار القرنية الخاصة بى ؟ وكيفية التأكد من سلامتها؟<br />\r\n&bull;&nbsp;&nbsp; &nbsp;القرنية هى نسيج يحضر من عين انسان متوفى (يكون من الاصل موافق على التبرع&nbsp; بالعين).<br />\r\n&bull;&nbsp;&nbsp; &nbsp;يتم حفظ هذا النسيج خلال 24 ساعة من وفاة المتبرع.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;يتم تسليمها الى بنك العيون ( نحن فى معظم الاحيان نتعامل مع بنك الانسجة&nbsp; العالمى &ndash; والذى مقره فى بالتيمور &ndash; الولايات المتحدة الامريكية).<br />\r\n&bull;&nbsp;&nbsp; &nbsp;لا يتم استعمال هذه الانسجه فى جراحات ترقيع القرنية الا بعد عمل بعد الفحوصات التالية:<br />\r\n1.&nbsp;&nbsp; &nbsp;الا يوجد فى دم المتبرع أي اجسام مضادة لمرض الالتهاب الكبدى الفيروسى او الايدز.<br />\r\n2.&nbsp;&nbsp; &nbsp;الا يوجد للمتبرع اى تاريخ مرضى لاي امراض عصبية تأكلية مثل مرض الباركنسون او مرض جاكوب.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;ثم يتم تقييم نسيج القرنية وجودتها ... حسب شفافيتها و عدد الخلايا الداخلية لها.<br />\r\n<br />\r\nملاحظه: لا يتم اختيار نسيج القرنية حسب السن (مثل ان نحتاج نسيج قرنية الى شاب يجب ان يحضر من شاب) ... لكن المهم ان تكون الخلايا الداخلية له تكون سليمه حتى لو كانت من مريض لديه 80 سنة.<br />\r\n&bull;&nbsp;&nbsp; &nbsp; يتم حفظ نسيج القرنية فى سوائل خاصة .. وتصل الينا هنا فى السعودية خلال يومين.<br />\r\n<br />\r\nما هى خطوات عملية زراعة القرنية؟<br />\r\n<br />\r\nقبل العملية:<br />\r\n1.&nbsp;&nbsp; &nbsp;يشرح الطبيب للمريض الاجراءات و موافقة المريض على اجراء العملية.<br />\r\n2.&nbsp;&nbsp; &nbsp;يتم اجراء الاختبارات و الفحوصات للمريض مثل صورة دم كاملة... قياس ضغط الدم ... الخ.<br />\r\n<br />\r\nيوم العملية:<br />\r\n1.&nbsp;&nbsp; &nbsp;يحضر المريض صباح يوم العملية (صائما) بدون افطار.<br />\r\n2.&nbsp;&nbsp; &nbsp;يتم تحضير عين المريض بأستعمال بعض الادوية والقطرات.<br />\r\n3.&nbsp;&nbsp; &nbsp;يتم عمل العملية تحت مخدر عام او موضعى.<br />\r\n<br />\r\nالجراحة:<br />\r\n1.&nbsp;&nbsp; &nbsp;يتم ازالة القرنية المريضة.<br />\r\n2.&nbsp;&nbsp; &nbsp;يتم تثبيت رقعة القرنية السليمة فى وضعها السليم باستعمال الغرز.<br />\r\n3.&nbsp;&nbsp; &nbsp;يتم عمل العملية داخل غرفة العمليات باستعمال الميكرسكوب الجراحى (حيث يتم تكبيير حجم كرة العين عشرات المرات)&nbsp; حتى يتم عمل العملية بدقة متناهية.<br />\r\n4.&nbsp;&nbsp; &nbsp;بعد انتهاء العملية ... يوضع غطاء على العين لمدة يوم&nbsp; ثم يرفع لوضع القطرات.<br />\r\n<br />\r\nبعد العملية:<br />\r\n1.&nbsp;&nbsp; &nbsp;يتم حجز المريض فى المستشفى لساعات او اكثر (حسب ما يراه الطبيب).<br />\r\n2.&nbsp;&nbsp; &nbsp;يشعر المريض فى الايام الاولى : باحمرار-&nbsp; دموع -&nbsp; حرارة بالعين -&nbsp; حساسية العين للضوء ( تحسن النظر يكون بطيئا ... من 3 الى 4 اسابيع).<br />\r\n3.&nbsp;&nbsp; &nbsp;يتم تحديد مواعيد الزياره والتى تكون :<br />\r\nالشهر الاول&nbsp;&nbsp; &nbsp;الشهر الثانى&nbsp;&nbsp; &nbsp;الشهر الثالث&nbsp;&nbsp; &nbsp;من الشهر الرابع الى الثانى عشر<br />\r\nكل اسبوع&nbsp;&nbsp; &nbsp;كل اسبوعين&nbsp;&nbsp; &nbsp;كل ثلاثه اسابيع&nbsp;&nbsp; &nbsp;كل شهر<br />\r\n<br />\r\nلكن فى حدوث احمرار مفاجئ او الم او انخفاض فى مستوى الرؤية ... يحضر المريض للفحص مباشرة.<br />\r\n<br />\r\n4.&nbsp;&nbsp; &nbsp;استعمال القطرات حسب تعليمات الطبيب المعالج.<br />\r\n5.&nbsp;&nbsp; &nbsp;عدم فرك العين او الضغط عليها.<br />\r\n6.&nbsp;&nbsp; &nbsp;عدم الانحناء (مثل السجود او الركوع).<br />\r\n7.&nbsp;&nbsp; &nbsp;يمكن ممارسة النشاط الطبيعى ما عدا الحركات العنيفة او حمل اثقال.<br />\r\n8.&nbsp;&nbsp; &nbsp;قد يحتاج الى المريض الى تغيير وضع الغرز او استبدالها (الغرز المثبتة لرقعة القرنية) خلال الاسابيع الاولى.<br />\r\n9.&nbsp;&nbsp; &nbsp;قد تحتاج الى ارتداء نظارة طبية.... حسب تعليمات الطبيب المعالج.<br />\r\n<br />\r\nانا مريض بمرض القرنية المخروطية ... وليس لدي القدرة على تحمل ارتداء العدسات اللاصقة الصلبة .... وتم تقرير لى عمليه زراعة القرنية ... فما هى نسبة النجاح؟<br />\r\nمن خلال الدراسات الطبية العالمية واحصائياتنا فى مستشفى المغربى والتى تابعنا فيها المرضى لفتره تزيد عن خمس سنوات:<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبه استمرار شفافية رقعة القرنية تزيد عن 90%.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر ممتاز (اي 6/12 او افضل) فهو 78%.<br />\r\n<br />\r\nاريد ان اعرف نسبة نجاح العملية اذا اعيد اجراء العملية للمرة الثانية؟<br />\r\nهذا يعنى انه لم يتم اسعاف رفض القرنية فى الوقت المناسب باستعمال العلاج الطبى (نتيجة تأخر المريض فى الحضور الى الطبيب&nbsp; او توقفه عن استعمال القطرات):<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبه استمرار شفافية رقعة القرنية تزيد عن50 الى 80 %.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر ممتاز (اي 6/12 او افضل) فهو 26%<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر جيد جدا (اي 6/18 او افضل) فهو 33%<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر جيد (اي 6/60 او افضل) فهو 52%.<br />\r\n<br />\r\n<br />\r\nما هى المضاعفات التى يمكن ان تحدث اثناء العملية؟<br />\r\n<br />\r\nملاحظه: المضاعفات المكتوبة وليس تحتها خط خاصة بعمليات الترقيع الكامل للقرنية ... اما تلك التى تحتها خط فهى لعلميات الترقيع الطبقى للقرنية.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نزيف بمشيمة العين: وهذا اخطر مضاعفة ممكن ان تحدث للعين لانها قد تؤدى الى فقدان البصر او العين ... لكن من فضله سبحانه ...&nbsp; هى نادرة الحدوث (مرة واحدة فى كل1000 عملية زراعة قرنية). و لم تحدث لى ان رأيت هذه المضاعفة حتى كتابة هذا التقرير.<br />\r\nلم يذكر فى التقرار الطبية لعمليه الترقيع الطبقى للقرنية ان ذكر اى حاله نزف بمشيمة العين.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نزيف داخل العين: وهذا ما يندر ان يحتاج تدخل جراحى لازالة الدم المتجلط ( الا اذا كانت قدره الجسم على امتصاص الدم بطيئه ففى هذه الحاله ... تحتاج لعمليه شفط للدم المتجلط).<br />\r\nلم يذكر فى التقرار الطبية لعمليه الترقيع الطبقى للقرنية ان ذكر اى حاله نزف داخل العين.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;كتاركتا: وهذا يندر حدوثها ( قد يحدث نتيجة اصابة بسيطة لعدسه العين اثناء العمليه).&nbsp;<br />\r\nلكن من الممكن حدوث كتاركتا مضاعفه بعد اشهر من العمليه الاصلية ... وذلك كمضاعفة لاستعمال قطرات الكورتزون (التى تكون اساسيه فى العلاج لمنع الجسم من رفض مناعة الجسم للقرنية المزروعة).<br />\r\n<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.&nbsp;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اصابة القزحية: وهذا ما يندر حدوثه اثناء العملية. قد يحتاج الطبيب الى عمل قطع فى اطراف القزحية (لا تكون ظاهره بعد العمليه) وذلك لمنع أي ارتفاع لضغط العين .<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.&nbsp;<br />\r\n<br />\r\nما المضاعفات التى من الممكن ان تحدث بعد العمليه؟<br />\r\n&bull;&nbsp;&nbsp; &nbsp;التهاب صديدى داخل العين: وهذا من اخطر المضاعفات بعد العملية و التى قد تؤدى الى فقدان البصر .. اذا لم تعالج فى الوقت المناسب. وهذه المضاعفه تكون نتيجة تلوث اما اثناء العمليه او بعدها. ولذلك على المستشفى و الطبيب التأكد من تمام عمليات التعقيم اثناء العملية ... وايضا اعطاء المريض المضادات الحيويه اللازمه للوقاية من التلوث.<br />\r\n<br />\r\nلكن على المريض ايضا دور مهم ... وهو الالتزام فى البيت خلال الايام الاولى (او حسب تعليمات الطبيب) &ndash; وضع القطرات الواقية بانتظام &ndash; لا يلمس العين الا كل شئ نظيف ومعقم ... خاصة خلال فترة التأم الجرح.<br />\r\n<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;فشل وظيفى للقرنية المزروعة: بمعنى بأن خلايا القرنية فشلت فى القيام بوظيفتها فى عين المريض ( المزروع له) . وهذا يندر حدوثه (حاله فى كل 400 حالة).<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;ارتفاع لضغط العين (المياه الزرقاء):<br />\r\nوهذا يحدث اكثر للمرضى ذوى التاريخ المرضى لمرض المياه الزرقاء ..&nbsp; بنسبة 30-50%&nbsp; ... وهؤلاء يحتاجوا اما الى اضافة قطرات لتخفيض ضغط العين او لاجراء عمليه ( بالليزر او عمليه لتصريف الضغط العالى او زراعه انبوبه لتخفيض ضغط العين).<br />\r\n<br />\r\nلكن فى حالات زراعة القرنية لمرضى امراض القرنية&nbsp; فقط مثل مرضى القرنية المخروطية ...نادرا ما يحدث لهم ارتفاع فى ضغط العين و يكون لفترة قصيرة (وذلك نتيجه استعمال قطرات الكورتزون و اللازمه لمنع رفض الجسم للقرنيه المزروعة).<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;تسريب من خلال الجرح: وهذا يندر حدوثه ... وان حدث فان فى اول زياره للطبيب يتم اكتشافها ... وفى هذه الحاله يحتاج الطبيب الى ادخال المريض الى غرفة العمليات لغلق الجرح و منع التسريب.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;زيادة التهاب العين بعد العملية:&nbsp; الاتهاب ما بعد العملية طبيعى&nbsp; و بسهوله يتم تقويضه باستعمال قطرات الكورتزون.&nbsp;<br />\r\nلكن مع بعض المرضى مثل الذين يعانون اصلا من حساسية بالعين او المرضى الذين تم زراعة القرنية لهم مره اخرى او المرضى الذين يعانون بالتهاب فى صلبة العين حتى قبل العملية (مثل المرضى المصابون بالتهاب القرنية والصلبة نتيجة اكانثاميبا او التهاب المفاصل نتيجة الروماتويد).... ومثل هذه الحالات يمكن التحكم فيها باضافه ادوية المثبطة للمناعة (تؤخذ بالفم) ... وتستعمل لفتره قصيره (من 3- 4 شهور).<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp; عدم الئام الجرح السطحى (الخلايا الطلائية)&nbsp; للرقعة: وهذه يتم علاجها ببساطة باستعمال القطرات (الخالية من المواد الحافظة) او المراهم الطبية او ارتداء عدسات لاصقة لتعمل كغطاء للخلايا النامية (يكون ارتدائها مؤقت لايام فقط) .<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;التهاب ميكروبى لرقعة القرنية: وهذا يندر حدوثه ... وان كان فانه يكون نتيجة ارتخاء فى الغرز ( وهذه علاجها بسيط اما ان يتم استبدالها او ازالتها) او الاصابة بفيروس الهيربس فى حالة اذا كان المريض قبل العمليه قد اصيب به (سأناقش معك تفاصيل ذلك اذا كنت من هؤلاء المرضى).<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;رفض الجسم للقرنية: وهذه المضاعفة فقط تحدث فى جراحات (الترقيع الكامل او الترقيع الطبقى العميق) ... بنسبه 5 - 20%&nbsp; -&nbsp; لنأخذ بعض الامثله:<br />\r\n<br />\r\nمريض القرنية المخروطية والذى اجري له زراعة القرنية (الترقيع الكامل) : فقد اثبتت الدراسات ان نسبه حدوث رفض للجسم خلال 10 سنوات تكون بين 3-5% فقط من الحالات.<br />\r\n<br />\r\nلكن قد تصل الى 80% فى الحالات التى بها التهابات بقرنية العين او التى معها اوعية دموية نامية على سطح القرنية.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;درجه عاليه من الاستجماتزم: وهذا من الطبيعى ان نجده بعد عمليات ترقيع القرنية ( و عادة تكون درجة الاستجماتزم المنتظم (ما يسمى بالانحراف المنتظم) حوالى 4 دراجات او اقل).&nbsp; فقط 10% من هؤلاء يحتاجون الى عمل جراحة الى تصحيح الانحراف الموجود &ndash; حتى يتمكن المريض من ارتداء نظارات طبية او عدسات طبية.<br />\r\nوجود انحراف (استجماتزم) غير منتظم ... هذا نادرا ما يحدث و يحدث بعد فك الغرز وهذا لا يمكن علاجه الا بالعدسات الاصقة.<br />\r\n<br />\r\nكيف يتعرف المريض على علامات رفض الجسم للقرنية؟&nbsp;<br />\r\nاذا شعر المريض بأى من هده العلامات او مجموعها:<br />\r\n1.&nbsp;&nbsp; &nbsp;احساس بعدم الراحة فى العين ... او الم بالعين.<br />\r\n2.&nbsp;&nbsp; &nbsp;حساسية العين للضوء.<br />\r\n3.&nbsp;&nbsp; &nbsp;احمرار العين .<br />\r\n<br />\r\nهل هناك فحوصات طبية تتم قبل عملية زرع القرنية للتكهن بقبول او رفض الجسم للقرنية المزروعة؟<br />\r\nهناك بعض الفحوصات ... لكن ما زال حتى الان لا يوجد فحوصات حاسمه لاجابة هدا السؤال.<br />\r\n<br />\r\nما اهمية معرفة تلك العلا مات؟<br />\r\nالعلاج المبكر لهده الحالة من قبل الطبيب المعالج.... يوقف رفض الجسم للقرنية المزروعة.<br />\r\n<br />\r\nماهى الاجراءات التى تتخد فى حالة ظهور علامات رفض الجسم للقرنية؟<br />\r\nفى اغلب الحالات يتم اخد&nbsp; قطرات&nbsp; الكورتيزون -&nbsp; والتى فى كثير من الاحيان تنجح فى تقويض الموقف.<br />\r\nاما حالات قليلة ... فانى استعمل اقراص الكورتزون.&nbsp;<br />\r\n<br />\r\nفى حالة رفض الجسم للقرنية ...مادا لو تأخر المريض فى الدهاب للطبيب او لم تستجب عينه للادوية المقاومة للرفض؟<br />\r\nيمكن اعادة زرع قرنية جديدة بنجاح.&nbsp; ولكن نسبة رفض الجسم للقرنية المزروعة للمرة الثانية تكون اعلى من المرة الاولى.<br />\r\n<br />\r\nهل هناك انواع من القرنية ... تقلل من فرص رفض الجسم للقرنية المزروعة؟<br />\r\nنعم هناك.. افضل حالات زرع القرنية هى عندما تزرع من المريض نفسه.<br />\r\n<br />\r\nوكيف يتم دلك؟<br />\r\nفى بعض الحالات النادرة ... تكون قرنية احدى العينين معتمة بينما يكون العصب البصرى سليم تماما.. حيث يرى المريض الضوء على الاقل ... بينما قرنية العين الاخرى شفافة تماما... ولكنها لا ترى الضوء ودلك لوجود ضمور فى العصب البصرى.<br />\r\n<br />\r\nفى هده الحالة يمكن نقل القرنية الشفافه لتكون امام العصب البصرى السليم والقرنية المعتمة لتكون امام العصب البصرى الضامر. وبالتالى يستعيد المريض النظر فى احدى العينين.<br />\r\n<br />\r\nمن هم المرضى الذين لا انصحهم بعملية زراعه القرنية؟<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا كنت من المرضى غير المهيئين لفترة علاج طويلة بعد العمليه (من سنه الى سنه ونصف) والحضور للعديد من المتابعات و المراجعات (تصل الى حوالى عشر زيارات).<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا&nbsp; كنت من المرضى الذين يعتقدون ان عمليه زراعه القرنية هى وسيلة للاستغناء عن ارتداء العدسات اللاصقة او النظارات تماما ( هناك حوالى 15% من المرضى يحتاجون الى عدسات لاصقة بعد العملية للحصول الى جودة نظر افضل &ndash; وهناك حوالى 10% يحتاجون الى جراحات (قد تكون باستعمال الليزك او زراعه العدسات داخل العين) للحصول على نظر احسن.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا كنت من مرضى (الترقيع الطبقى الداخلى) فان المتوقع ان يستقر النظر فى غضون 4 شهور بعد العمليه &ndash; لكن سوف تستعمل القطرات الطبية لفترة تصل من 6 الى 24 شهر او يزيد.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا كنت من النوع الذى لا يهتم باخذ القطرات (او ينساها بسهوله) ... حيث ان ذلك من اشهر اسباب فشل العملية</span></span></span></span></span></span></span></p>', NULL, NULL, '2018-12-22 11:50:03', '2018-12-22 11:50:03'),
(29, 15, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 12:14:01', '2018-12-22 12:14:01'),
(30, 15, 'ar', 'نبذة عن منظمة ثقة', NULL, '<p>rrrrrrrrrrrrrrrrrrrr</p>', NULL, NULL, '2018-12-22 12:14:01', '2018-12-22 12:14:01'),
(31, 16, 'en', 'Conical cornea', 'Cultivation of loops (belt) for the treatment of conical cornea', 'Cultivation of rings\r\n\r\nQ: What is the cornea? What is a conical cornea?\r\nA: The cornea is the translucent window that covers the colored part of the eye (iris) .. It works as a lens assembled for light rays ... and therefore any changes on the surface of the cornea ... completely changes the refraction of light rays ... This results in a lack of clarity In vision.\r\n\r\n\r\nConical cornea ... a genetic disease ... affects the cornea ... and causes an increase in cirrhosis - on an ongoing basis.\r\nQ: I am a congenital corneal patient ... as long as I have myopia with astigmatism (deviation)? Why does not Li fit the LASIK process?\r\nA: Lasik (correction of vision defects using an enzyme laser) is a procedure performed for patients who have double vision ... fixed (and confirmed on a fixed word .. any non-variable like that found in the case of conical cornea).\r\n\r\nQ: What is the material from which rings are made?\r\nA: It is a chemically treated plastic (acrylic).\r\n\r\nQ: How do rings improve vision and corneal treatment?\r\nA: Since the cornea is the outer surface of the eye ... it is easy to access and perform surgeries without having to enter the bottom of the eyeball.\r\nQ: What is the benefit of cultivating rings?\r\nA: The benefits of planting many rings, including:\r\n1. High success rate ... caused by complications.\r\n2. Possibility to remove them at any time (if need be).\r\n3. Possibility of resetting (if you do not turn in the cry of the convex .. can grow larger size).\r\n4. There is no chance to reject her body.\r\n5. Stop or reduce cone growth.\r\n6. A large number of patients do not need to cultivate cornea.\r\n7. Even if the patient needs a corneal transplant afterwards ... there is no conflict between the rings and between the corneal transplantation.\r\nQ: What is the success rate of this process?\r\nA: During the scientific study conducted on 340 patients who had the cultivation of rings between 1996 to 2001.\r\nThe degree of conical cornea is strong-sighted without eyeglasses\r\nFirst class 6/18 or better 59%\r\nSecond grade 6/18 or better 53.5%\r\nThird grade 6/18 or better 30.7%\r\nFourth grade 6/18 or better 19.3%\r\nThe degree of conical cornea is strong-sighted with eyeglasses proportion of patients\r\nFirst class 6/18 or better 94%\r\nSecond grade 6/18 or better 92.6%\r\nThird grade 6/18 or better 71.7%\r\nFourth grade 6/18 or better 80%\r\nNote: Most patients have better visual strength than those shown by computer measurements.\r\nNote: Most postoperative patients improve their short sightedness but increase their astigmatism.\r\n\r\nQ: What are the side effects of growing the rings?\r\nA: This process is safe ... the incidence of complications does not exceed 5%.\r\nDuring the process:\r\n• If there is difficulty in the doctor in the manufacture of channels, which will be the introduction of the rings ... In this case will stop the process ... With natural healing will return the status of cornea as before ... As these channels in the corners of the cornea (far from Corneal center).\r\nAfter the operation:\r\nThis is more common with patients who have an allergic reaction to the eye (and a lot of itchy eyes) ... so we advise patients to stay away from eye itching as much as possible ... as this may move the loops out of place And may emerge from the original wound of the operation. This treatment is simple to be re-installed in a deeper channel than the one that precedes it (possibility of occurrence 3 cases in every 100 cases).\r\n• Microbial inflammation: This is rare - the process is performed in the operating room (at the highest level of sterilization) - and also advised the patient comfort during the first three days with the use of sterile droplets. If this occurs, they are treated with antibiotic drops. (In the study mentioned ... There are two cases did not respond to the treatment of medicine ... and needed to work cornea).\r\n• Decentralization of the belt: The best results are those where the belt is centered around the cone base. Therefore, if decentralization occurs ... it is better to put the belt back in its proper position.\r\n• Halos around the sources of light at night.\r\nWho are the patients I do not recommend doing the ring-making process?\r\n• If you are a patient who is not ready for a period of treatment after the procedure (three months) and attend to follow up to 4 times or more.\r\n• Those who do not understand that the process ... can not dispense with eyeglasses or soft contact lenses (it is quite different from LASIK to correct defects of vision).\r\n• Those who do not understand that the implantation of rings ... process is different in response to each eye on the other ... It is possible that there is no improvement in vision ... In this case the rings are extracted (but most often there is a marked improvement).\r\n• Those who are forced to work at night, such as transport drivers ... or those working in the profession of photography ... where in this dark environment ... Sometimes the patient sees halos around the sources of light, which may hinder their work.\r\nQ: What if the convex cornea and visual impairment persist after years of growing the rings?\r\nQ: Quite simply ... they are replaced with other rings by new measurement.\r\n\r\nQ: How long does it take?\r\nA: Ten to fifteen minutes.\r\nQ: How does the process take place?\r\nA: 1. The operation is performed under local anesthetic most of the time.\r\n2. The rings are implanted inside the cornea through a very small wound in the cornea of ​​the eye not exceeding 2 mm.\r\n3. In some cases the wound can be sewn (one stitch).\r\nQ: When can I go home?\r\nA: On the same day of the operation.\r\n\r\nQ: When can the strength of sight improve?\r\nA: The strength of the eyesight improves slowly over the first 3 weeks ... The patient will complete his sight for up to three months.\r\nQ: Is it possible for the operation to take place with the eyes?\r\nA: In most cases the operation is performed with the eyes at the same time (if the eyes are called).\r\nQ: When can I get back to work?\r\nA: Two days after the operation.\r\nQ: What precautions are required after the operation?\r\nA: The patient / patient should not lift the lid unless ordered by the doctor.\r\n2. It is normal for the patient to feel redness ... Tears ... Burning ... Difficult to see the light ... Glare around the sources of light (such as lamps) especially at night.\r\n3. The patient can sleep in his comfortable position ... and does not need to be committed to a particular situation.\r\n4. The covered plastic cover works as a shield to protect the eye from shocks ... Wear when sleeping .. Ride the car ... when bathing.\r\n5. Wear sunglasses (dark or black structure) after the operation for one week during the day.\r\n6. I do not mind carrying any weights ... praying (kneeling or prostrating).\r\n7. Do not mind exercising.\r\n8. Adherence to treatment schedules:\r\n• Drop ---------------- Point All -------- ---------------\r\n• Drop ---------------- Point All -------- ---------------\r\n• Drop ---------------- Point All -------- ---------------\r\n• Drop ---------------- Point All -------- ---------------\r\n9. The prescribed medical treatment (droplets) shall be brought in each follow-up visit.\r\n10. The patient can practice the marital life (intercourse) after the operation.\r\n11. Dates of follow-up visits from the day of the operation:\r\n•    First day.\r\n• First week.\r\n•    first month.\r\n•    the third mounth.\r\n•    The sixth month.', NULL, NULL, '2018-12-22 12:14:41', '2019-01-01 11:55:22'),
(32, 16, 'ar', 'القرنية المخروطية', 'زراعة الحلقات (الحزام) لعلاج القرنية المخروطية', '<p dir=\"rtl\">القرنية المخروطية ... مرض وراثى ... يصيب القرنية ... ويسبب زيادة فى تحدبها &ndash; بصفة مستمرة.</p>\r\n\r\n<p dir=\"rtl\"><br />\r\nس:انا مريض قرنية مخروطية ... طالما لدى قصر نظر مع استجماتزم (انحراف) ؟ لماذا لا يصلح لى عملية الليزك؟<br />\r\nج: الليزك (تصحيح عيوب الابصار باستعمال الاكزيمر ليزر) هى عمليه تجرى للمرضى الذين لديهم ضعف فى الابصار ... ثابت ( و أأكد على كلمة ثابت .. أي غير متغير مثل ذلك الموجود فى حالة القرنية المخروطية).</p>\r\n\r\n<p dir=\"rtl\">س: ما هى المادة التى تصنع منها الحلقات؟&nbsp;<br />\r\nج: هى بلاستيكية معالجه كيميائيا (اكرلك).</p>\r\n\r\n<p dir=\"rtl\">س: كيف تعمل الحلقات على تحسين النظر و معالجة تحدب القرنية؟<br />\r\nج: وبما إن القرنية هي السطح الخارجي للعين .... فمن السهولة الوصول لها وإجراء العمليات الجراحية فيها بدون الحاجة إلى &nbsp;الدخول إلى قاع مقلة العين.</p>\r\n\r\n<p dir=\"rtl\">س: انا لدي حساسية من المواد البلاستيكية للعدسات اللاصقة .. هل من الممكن ان يحدث لى حساسية من المادة المكونة للحلقات؟<br />\r\nج: لا يمكن ان يحدث حساسية للمادة المكونة للحلقات .... حيث انه عموما تحدث الحساسية من ارتداء العدسات ... &nbsp;نتيجة تفاعل العين مع الملوثات المحيطة ... وليس المادة البلاستيكية.</p>\r\n\r\n<p dir=\"rtl\">س: ما الفائدة من زراعة الحلقات؟<br />\r\nج: الفوائد من زراعة الحلقات كثيرة منها :<br />\r\n1. &nbsp; &nbsp;ارتفاع نسبة النجاح ... وندره حدوث مضاعفات.<br />\r\n2. &nbsp; &nbsp;امكانية ازالتها فى اي وقت (اذا دعت الحاجة).<br />\r\n3. &nbsp; &nbsp;امكانية اعادة ضبطها (اذا لم تقم بدورها فى تصيح التحدب .. يمكن زراعة مقاس اكبر).<br />\r\n4. &nbsp; &nbsp;لا يوجد بها فرصة لرفض الجسم لها.<br />\r\n5. &nbsp; &nbsp;توقف او تقلل من نمو المخروط.<br />\r\n6. &nbsp; &nbsp;عدد كبير من المرضى لا يحتاجون الى زراعة قرنية.<br />\r\n7. &nbsp; &nbsp;حتى لو احتاج المريض الى زراعة قرنية بعد ذلك ... فلا تعارض بين الحلقات و بين زراعة القرنية.</p>\r\n\r\n<p dir=\"rtl\">س: ما نسبة نجاح هذه العملية؟<br />\r\nج: خلال الدراسة العلميه التى اجريت على 340 مريض اجري لهم زراعة الحلقات ما بين سنة 1996 الى 2001.<br />\r\nدرجة القرنية المخروطية &nbsp; &nbsp;قوه الابصار بدون نظارة &nbsp; &nbsp;نسبة المرضى<br />\r\nالدرجة الاولى &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp;59%<br />\r\nالدرجة الثانية &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp;53.5%<br />\r\nالدرجة الثالثة &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp;30.7%<br />\r\nالدرجة الرابعة &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp;19.3%</p>\r\n\r\n<p dir=\"rtl\">درجة القرنية المخروطية &nbsp; &nbsp;قوه الابصار مع &nbsp;النظارة &nbsp; &nbsp;نسبة المرضى<br />\r\nالدرجة الاولى &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp;94%<br />\r\nالدرجة الثانية &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp; 92.6%<br />\r\nالدرجة الثالثة &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp;71.7%<br />\r\nالدرجة الرابعة &nbsp; &nbsp;6/18 &nbsp; &nbsp;او احسن &nbsp; &nbsp;80%</p>\r\n\r\n<p dir=\"rtl\">ملاحظه: معظم المرضى قوة ابصارهم افضل من تلك التى يظهرها قياسات الكومبيوتر.<br />\r\nملاحظه: معظم المرضى بعد العملية يتحسن عندهم قصر النظر ولكن يزيد عندهم الاستجماتزم.</p>\r\n\r\n<p dir=\"rtl\">س: ما هى الاثار الجانبية لزراعة الحلقات ؟<br />\r\nج: هذه العملية امنة ... نسبة حدوث مضاعفات بها لا يتجاوز 5%.&nbsp;<br />\r\nاثناء العملية:<br />\r\n&bull; &nbsp; &nbsp;اذا كان &nbsp;هناك صعوبة على الطبيب فى صناعة القنوات التى سيتم ادخال الحلقات بها ... فى هذه الحاله سيتم التوقف عن اجراء العمليه ...ومع &nbsp;الالتئام الطبيعى سيرجع وضع القرنية كسابق حالها ... حيث ان هذه القنوات فى اطراف القرنية (بعيده عن مركز القرنية).</p>\r\n\r\n<p dir=\"rtl\">بعد اجراء العملية:<br />\r\n&bull; &nbsp; &nbsp;هجرة الحلقات من مكانها: و هذا يحدث اكثر مع المرضى الذين يعانون من الاصل من حساسية بملتحة العين (و يكثروا من حكة العين) ... ولذلك ننصح المرضى بالابتعاد عن حكة العين قدر المستطاع ... حيث ان ذلك قد يحرك الحلقات من مكانها و قد تخرج من الجرح الاصلى للعمليه. وهذه علاجها بسيط بان يتم اعادة تثبيتها فى قناه اعمق من تلك التى تسبقها (امكانية حدوثها 3 حالات فى كل 100 حالة).<br />\r\n&bull; &nbsp; &nbsp;التهاب ميكروبى: وهذا يندر حدوثه &ndash; حيث ان العملية تجرى فى حجرة العمليات (على اعلى مستوى من درجات التعقيم) &ndash; وكذلك ينصح المريض بالراحه خلال الثلاث ايام الاول مع استعمال القطرات المعقمة. وان حدث ذلك فانها تعالج باستعمال قطرات المضاد الحيوى. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(فى الدراسة المذكورة ... هناك حالتين لم يستجيبا للعلاج الدوائى ... واحتاجا الى عمل زراعة قرنية).<br />\r\n&bull; &nbsp; &nbsp;لا مركزية الحزام: افضل النتائج هى تلك التى يتمركز فيها الحزام حول قاعدة المخروط. ولذلك اذا حدث لا مركزية ... فمن الافضل اعادة وضع الحزام فى وضعه الصحيح.<br />\r\n&bull; &nbsp; &nbsp;هالات حول مصادر الضوء فى الليل.</p>\r\n\r\n<p dir=\"rtl\"><br />\r\nمن هم المرضى الذين لا انصحهم بعمل عملية زراعة الحلقات؟<br />\r\n&bull; &nbsp; &nbsp;اذا كنت من المرضى غير المهيئين لفترة علاج &nbsp;بعد العمليه (ثلاثه شهور) والحضور للمتابعات تصل الى 4 مرات او يزيد.<br />\r\n&bull; &nbsp; &nbsp;الذين لا يتفهمون ان العملية ... لا يمكن فيها الاستغناء عن النظارة الطبية او العدسات اللاصقة الرخوة ( فهى تختلف تماما عن عمليه الليزك لتصحيح عيوب الابصار).<br />\r\n&bull; &nbsp; &nbsp;الذين لا يتفهمون ان زراعه الحلقات ... عمليه يختلف استجابة كل عين عن الاخرى ... &nbsp;من الممكن الا يحدث تحسن فى الرؤية ... وفى هذه الحاله يتم استخراج الحلقات &nbsp;(لكن فى معظم الاحيان يكون هناك تحسن ملحوظ).<br />\r\n&bull; &nbsp; &nbsp;الذين تحتم عليهم اعمالهم العمل فى الليل مثل سائقى النقل ... او الذين يعملون فى مهنة التصوير ... حيث انه فى هذه البيئه المظلمه ... فى بعض الحيان يرى المريض هالات حول مصادر النور و التى قد تعيق اعمالهم.</p>\r\n\r\n<p dir=\"rtl\">س: ماذا لو استمر تحدب القرنية وضعف الابصار بعد سنوات من زراعة الحلقات؟<br />\r\nس: ببساطة شديدة ... يتم استبدالها بحلقات اخرى بالقياس الجديد.&nbsp;</p>\r\n\r\n<p dir=\"rtl\">س: كم تستغرق العملية؟<br />\r\nج: من عشر الى خمس عشر دقيقة.</p>\r\n\r\n<p dir=\"rtl\">س: كيف تجرى العملية؟<br />\r\nج: &nbsp;1. &nbsp;تجرى العملية تحت مخدر موضعى فى معظم الاحيان.<br />\r\n2. &nbsp; &nbsp;يتم زراعة الحلقات داخل قرنية العين من خلال جرح صغير جدا بقرنية العين لا يتجاوز 2 مم.<br />\r\n3. &nbsp; &nbsp;في بعض الحالات يمكن حياكة الجرح (غرزة واحدة).</p>\r\n\r\n<p dir=\"rtl\">س: متى يمكن العودة الى البيت؟<br />\r\nج: &nbsp;فى نفس يوم العملية.</p>\r\n\r\n<p dir=\"rtl\">س: متى يمكن ان تتحسن قوة الابصار؟<br />\r\nج: قوة الابصار تتحسن ببطء على مدار ال 3 اسابيع الاولى ... ويستكمل المريض قوه ابصاره حتى ثلاثه شهور.</p>\r\n\r\n<p dir=\"rtl\">س: هل من الممكن ان تتم العملية بالعينين؟<br />\r\nج: فى معظم الاحيان تتم العملية بالعينين فى نفس الوقت ( اذا استدعت العينين).</p>\r\n\r\n<p dir=\"rtl\">س: متى يمكن ان اعود الى العمل؟<br />\r\nج: بعد يومين من العملية.</p>\r\n\r\n<p dir=\"rtl\">س: ما هى الاحتياطات الواجبة بعد العملية؟<br />\r\n1. &nbsp; &nbsp;ج: على المريض/ المريضة عدم رفع الغطاء الا بأمر الطبيب.<br />\r\n2. &nbsp; &nbsp;من الطبيعى ان يشعر المريض باحمرار... دموع ... حرقان ... صعوبة فى رؤية الضوء ... وهج حول مصادر الضوء (مثل المصابيح) خاصة فى الليل.<br />\r\n3. &nbsp; &nbsp;يمكن المريض ان ينام فى الوضع المريح له ... ولا يحتاج ان يلتزم بوضع معين.<br />\r\n4. &nbsp; &nbsp;يعمل الغطاء البلاستيكى المثقب ... كالدرع يحمى العين من الصدمات ... يلبس عند النوم .. ركوب السيارة ... عند الاستحمام.<br />\r\n5. &nbsp; &nbsp;يتم ارتداء نظارات شمسية (بنية قاتمة او سوداء) بعد العملية لمدة اسبوع خلال النهار.<br />\r\n6. &nbsp; &nbsp;لا مانع من &nbsp;حمل اي اثقال ... الصلاة (الركوع او السجود).<br />\r\n7. &nbsp; &nbsp;لا مانع من ممارسة التمرينات الرياضية .<br />\r\n8. &nbsp; &nbsp;الالتزام بمواعيد العلاج:<br />\r\n&bull; &nbsp; &nbsp;قطرة ---------------- نقطة كل &nbsp;-------- سا عات لمدة -----------<br />\r\n&bull; &nbsp; &nbsp;قطرة ---------------- نقطة كل &nbsp;-------- سا عات لمدة -----------<br />\r\n&bull; &nbsp; &nbsp;قطرة ---------------- نقطة كل &nbsp;-------- سا عات لمدة -----------<br />\r\n&bull; &nbsp; &nbsp;قطرة ---------------- نقطة كل &nbsp;-------- سا عات لمدة -----------<br />\r\n9. &nbsp; &nbsp; يتم احضار العلاج الطبى الموصوف (القطرات) فى كل زيارة للمتابعة.<br />\r\n10. &nbsp; &nbsp; &nbsp; يمكن للمريض &nbsp;ممارسة الحياة الزوجية(الجماع) بعد العملية .<br />\r\n11. &nbsp; &nbsp;مواعيد زيارات المتابعة من يوم العملية:<br />\r\n&bull; &nbsp; &nbsp;اليوم الاول.<br />\r\n&bull; &nbsp; &nbsp;الاسبوع الاول.<br />\r\n&bull; &nbsp; &nbsp;الشهر الاول.<br />\r\n&bull; &nbsp; &nbsp;الشهر الثالث.<br />\r\n&bull; &nbsp; &nbsp;الشهر السادس.</p>', NULL, NULL, '2018-12-22 12:14:41', '2019-01-30 13:21:19'),
(33, 17, 'en', 'My eye drops', 'Ten tips for users of drops eyes', 'Keep drops away from sources of heat and sunlight - Wash your hands thoroughly before distillation with the eye.\r\n The droplet droplets (especially those suspended) are preferred before use.\r\n After distillation - the patient / patient is advised to close his eyelid for 2 minutes.\r\n Be careful not to touch the tip of the dropper with your finger or eyelashes and to avoid contamination.\r\n There are two types of drops: the first Bhad preservative and is usable for 28 days after it opens its cover - the second, which has no preservative: used only once.\r\nRepeated use of the prescribed treatment is prohibited unless the doctor is consulted.\r\n The use of droplets is strictly observed until the correct treatment is taken.\r\n The use of medical droplets is prohibited above contact lenses.\r\n If more than one type of droplet is used - preferably five minutes between each type. It is recommended to use moisturizing drops and ointments in the other.\r\n It is advisable to consult your doctor if you do not feel better with the use of the droplets prescribed within three days of starting treatment.', NULL, NULL, '2018-12-22 12:21:59', '2019-01-01 11:57:34'),
(34, 17, 'ar', 'مستعملى قطرات العيون', 'عشر نصائح لمستعملى قطرات العيون', '<ul dir=\"rtl\">\r\n	<li>&nbsp;تحفظ القطرات بعيدا عن مصادر الحرارة و اشعة الشمس - اغسل يديك جيدا قبل التقطير بالعين .</li>\r\n	<li>&nbsp;يفضل رج القطرات ( خاصة المعلق منها ) قبل الاستخدام .</li>\r\n	<li>&nbsp;بعد التقطير - ينصح المريض / المريضة غلق جفونه لمدة دقيقتين .</li>\r\n	<li>&nbsp;احرص الا يتلامس طرف القطارة مع اصبعك او رموش العين و ذلك لتفادى تلوثها .</li>\r\n	<li>&nbsp;هناك نوعين من القطرات : الأولى بهاد مادة حافظة و هي صالحة للاستعمال لمدة 28 يوم بعد ان يفتح غطاؤها - اما الثانية و التي ليس بها مادة حافظة : فتستعمل مرة واحدة فقط .</li>\r\n	<li>&nbsp;يمنع تكرار استعمال العلاج الموصوف الا باستشارة الطبيب .</li>\r\n	<li>&nbsp;يتم الإلتزام بمواعيد استعمال القطرات حرفيا حتى يتم الاستفادة من العلاج بالطريقة الصحيحة .</li>\r\n	<li>&nbsp;يمنع استعمال القطرات الطبية فوق العدسات اللاصقة .</li>\r\n	<li>&nbsp;في حالة استعمال أكثر من نوع من القطرات - يفضل أن تبقى خمس دقائق بين كل نوع و الأخر . و يفضل استعمال قطرات الترطيب و المراهم في الأخر .</li>\r\n	<li>&nbsp;يفضل إعادة استشارة طبيبك إذا لم تشعر بالتحسن مع استعمال القطرات الموصوفة خلال ثلاثة أيام من بدء العلاج .</li>\r\n</ul>', NULL, NULL, '2018-12-22 12:21:59', '2019-01-30 13:25:19'),
(35, 9, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 12:22:28', '2018-12-22 12:22:28'),
(36, 9, 'ar', 'كلمة الدكتور البطل', 'الزراعه الكامله للعين', 'الحمد لله القائل في محكم التنزيل \" سنريهم آياتنا في الآفاق وفي أنفسهم حتى يتبين لهم أنه الحق\" والصلاة والسلام على المبعوث رحمة للعالمين. ان ابداع الخالق عزوجل في خلق العين لهو جدير في التفكر والتأمل، فمن يعلم أسرار تركيب العين الغاية في الدقة والجمال لأيقن حق اليقين أن الخالق جل شأنه قد وهب الانسان نعمة غالية عظيمة متقنة الصنع بديعة التكون،\r\n\r\n تلك هي العين بما فيها من قرنية شفافة تتراكب الخلايا فيه اوتتناسق بدقة متناهية تسمح للشعاع الضوئي بالولوج الى العين دون تبعثر أو تشتت وتمر تلك الرحلة الضوئية مخترقة العدسة البلورية والسائل الزجاجي لتتجمع هذه الحزم الضوئية في نقطة على شبكية العين تنتقل بعدها من خلال ملايين الخلايا العصبية وعبر العصب البصري لتستقر أخيرا في الجزء البصري من الدماغ ليترجم بدوره هذه الحزم الضوئية الى صورة جميلة يسمتع برؤيتها الانسان. \r\nأرحب بالاخوة والأخوات متصفحي موقعنا الالكتروني ونأمل أن يحوز على رضاكم واعجابكم. لقد سعينا ومنذ انشاء مركز البطل لطب وجراحة العيون أن نلتزم برسالتنا في تقديم أحدث الخدمات التشخيصية والعلاجية في مجال طب وجراحة العيون لمرضانا الأعزاء موقنين بأن التقدم الهائل والمتسارع في الطب بشكل عام وفي طب العيون على وجه الخصوص يتطلب منا أن نكون مواكبين لهذا التطور ايمانا منا بأن مرضانا الأعزاء هم أحق من يستفيد من هذا التطور العلمي. لقد حرصنا أن نوفر في مركزنا أحدث التقنيات والتجهيزات الطبية التي توصل اليها العلم الحديث، فقد جهز المركز بأنواع متطورة من الأجهزة الميكروسكوبية الشقية المزودة بنظام النقل التصويري والتلفزيوني كما جهز المركز أيضا بكافة أنواع أجهزة الليزر المتطورة لعلاج مختلف الحالات المرضية للعين بدءا من الخزانة الأمامية للعين وليس انتهاء بليزر الشبكية لعلاج اعتلالات الشبكية السكري. \r\nاننا نفخر بأن مركز البطل للعيون هو المركز المتخصص الأول بالمنطقة الغربية من المملكة العربية السعودية الذي أدخل لخدماته العلاجية مؤخرا تقنية \" الكستم فيو \" في علاج الليزك والتي اعتمدتها حصريا وكالة ناسا للفضاء لروادها كونه الأفضل في نتائج  عمليات تصحيح البصر. وبفضل الله فقد راجعنا في المركز العام الماضي أكثر من 7 آلاف مريض قدمت لهم أرقى وأحدث الخدمات العلاجية. \r\nلقد سعدت كثيرا بما سمعت وقرأت من انطباعات مرضانا بسعادتهم واحساسهم بأن خدمة مميزة قدمت اليهم في مركزنا وهذا ما نحرص عليه بأن يحصل كل مريض على أفضل الخدمات العلاجية من كل فرد عامل في هذا المركز. \r\nواننا اذ نسخر عصارة خبراتنا في طب وجراحة العيون، فاننا نتمنى أن نكون سببا في شفاء المرضى، راجين من الله الأجر والثواب، ومن مرضانا الأعزاء التسديد والتصويب ونحن في خدمتكم على الدوام.', NULL, NULL, '2018-12-22 12:22:28', '2018-12-22 12:53:25'),
(37, 19, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 12:29:18', '2018-12-22 12:29:18'),
(38, 19, 'ar', NULL, NULL, NULL, NULL, NULL, '2018-12-22 12:29:18', '2018-12-22 12:29:18');
INSERT INTO `blogs_translation` (`id`, `blog_id`, `locale`, `title`, `short_description`, `long_description`, `content`, `keywards`, `created_at`, `updated_at`) VALUES
(39, 20, 'en', 'Corneal transplantation', 'It is a type of organ transplantation (such as heart transplantation, lung, kidneys). It is the replacement of the diseased organ with a healthy organ taken from a deceased person', 'What is corneal transplantation?\r\nIt is a type of organ transplantation (such as implanting the heart .. lungs .. kidneys). It is the replacement of the diseased member with a healthy organ taken from a person who is dying.\r\n\r\nWhat is cornea?\r\nIt is the transparent circular part ... The blood is located in the front of the eye and covers the iris (the colored part of the eye). It also covers the human eye (the hole located in the middle of the iris).\r\nThe cornea works as a lens that focuses light on the retina ... so we can see.\r\n\r\nCharacteristics of the cornea sound:\r\n1. Transparent.\r\n2. Curved (like the surface of football).\r\n3. Thick.\r\n\r\nAnd any defect in the class of these qualities ... leads to weak vision.\r\n\r\nHow can the cornea status affect the vision?\r\n1. The corneal transparency is altered due to swelling of the tissue or invasion of white blood cells (in the case of inflammation) or the presence of a cloud (resulting from wound healing or ulcer).\r\n2 - increased corneal curvature (increase in camber) and this so-called (Cornice cone).\r\nIf corneal thickness increases (in cases of swollen tissues) or thinner in corneal thickness (eg conical corneal cases).\r\nWhat are the steps of corneal transplantation?\r\nbefore the operation:\r\n1. The doctor shall explain to the patient the procedures and the patient\'s consent to the procedure.\r\n2. Tests and tests shall be carried out for the patient, such as a complete blood sample, blood pressure, etc.\r\nOperation Day:\r\n1. The patient shall attend the morning of the operation (fasting) without breakfast.\r\n2. Prepare the eye of the patient using some drugs and drops.\r\n3. The operation is done under general or local anesthetic.\r\nthe operation:\r\n1. The patient shall attend the morning of the operation (fasting) without breakfast.\r\n2. Prepare the eye of the patient using some drugs and drops.\r\n3. The operation is done under general or local anesthetic.\r\n\r\nSurgery:\r\n1. Remove the diseased cornea.\r\n2. Correct corneal patch in proper position using stitches.\r\n3. The operation is performed inside the operating room using the surgical microscope (where the size of the eyeball is adjusted dozens of times) until the operation is done with extreme precision.\r\n4. After the end of the operation ... put a lid on the eye for a day and then raise to put drops.\r\nAfter the operation:\r\n1. The patient shall be kept in the hospital for hours or more (according to the doctor).\r\n2. The patient feels in the early days: redness - tears - eye heat - eye sensitivity to light (improved vision is slow ... 3 to 4 weeks).\r\n3. The visit dates are:\r\nFirst Month Second Month Third Month of Month Four to Twelve\r\nEvery week every two weeks every three weeks every month', NULL, NULL, '2018-12-22 12:29:38', '2019-01-01 11:32:12'),
(40, 20, 'ar', 'زراعة القرنية', 'نها نوع من انواع زراعة الاعضاء (مثل زراعة القلب .. الرئه .. الكلى) . وهى استبدال العضو المريض بعضو سليم يؤخد من شخص حديث الوفاه', '<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\">ما المقصود بزراعة القرنية ؟<br />\r\nانها نوع من انواع زراعة الاعضاء (مثل زراعة القلب .. الرئه .. الكلى) . وهى استبدال العضو المريض بعضو سليم يؤخد&nbsp; من شخص حد يث الوفاه.<br />\r\n<br />\r\nما هى القرنية؟<br />\r\nهى الجزء الدائرى الشفاف ... الدى يقع فى مقدمة العين ويغطى القزحية (وهى الجزء الملون من العين). كما يغطى&nbsp; انسان العين (الفتحة الموجوده فى منتصف القزحية).</p>\r\n\r\n<p dir=\"rtl\">تعمل القرنية على انها عدسه تركز اشعة الضوء على الشبكية ... حتى يمكننا الرؤية.<br />\r\n<br />\r\nصفات القرنية السليمة:<br />\r\n1.&nbsp;&nbsp; &nbsp;شفافة.<br />\r\n2.&nbsp;&nbsp; &nbsp;مقوسة (كأنها سطح كره القدم).<br />\r\n3.&nbsp;&nbsp; &nbsp;سميكة.<br />\r\n<br />\r\nو أى خلل فى صفه من هده الصفات .... يؤدى الى ضعف الابصار.<br />\r\n<br />\r\nكيف يمكن ان تؤثر حالة القرنية على الرؤية؟<br />\r\n1.&nbsp;&nbsp; &nbsp;ادا اختلت شفافية القرنية نتيجة تورم انسجتها او غزوها بكرات الدم البيضاء (فى حالة وجود التهاب) او وجود سحابة (ناتج عن التئام جرح او قرحة).<br />\r\n2.&nbsp;&nbsp; &nbsp;ادا زاد تقوس القرنية (زيادة فى التحدب) و هدا ما يسمى (القرنيه المخروطية).<br />\r\n3.&nbsp;&nbsp; &nbsp;ادا زاد سمك القرنية (فى حالات تورم انسجتها) او تنحف فى سمك القرنية ( مثل حالات القرنية المخروطية).<br />\r\nوفى اى حالة من الحالات المدكورة والتى يعجز الطبيب عن علاجها بالعلاج الطبى او الليزر ..... يتم عمل زراعة للقرنية.<br />\r\nهل يمكن زرع عين سليمة بدلا من عين غير مبصرة؟<br />\r\nبالطبع لا يمكن ... ودلك ليس لصعوبة الجراحة ولكن لاستحالة ان يقوم العصب البصرى بوظيفته وكدلك الشبكية او العدسة البللورية. لكن من الممكن نقل بعض اجزاء العين التى لا تفسد بعد الوفاة&nbsp; و منها القرنية.<br />\r\n<br />\r\nما الفرق بين ترقيع القرنية الطبقى &ndash; وترقيع القرنية الكامل؟<br />\r\n<br />\r\nتتكون القرنيه من خمس طبقات:<br />\r\n1.&nbsp;&nbsp; &nbsp;خلايا سطحية.<br />\r\n2.&nbsp;&nbsp; &nbsp;غشاء بومان.<br />\r\n3.&nbsp;&nbsp; &nbsp;السدى ( وهى تمثل 90% من سمك القرنية).<br />\r\n4.&nbsp;&nbsp; &nbsp;غشاء الدسيميت.<br />\r\n5.&nbsp;&nbsp; &nbsp;خلايا داخلية.</p>\r\n\r\n<p dir=\"rtl\">المقصود بالترقيع الطبقى ... هى ان يتم استبدال احد الطبقات المصابة (المريضه)&nbsp; او اكثر باخرى سليمه .... والمحافظه على طبقات القرنية غير المريضة .<br />\r\n<br />\r\nبينما فى ترقيع القرنية الكامل ... يتم استبدال الخمس طبقات باخرى سليمه.<br />\r\nما انواع&nbsp; الترقيع الطبقى؟&nbsp;<br />\r\n1.&nbsp;&nbsp; &nbsp;ترقيع القرنى الطبقى (الامامى): حيث يتم استبدال الثلاث الطبقات الاولى باخرى سليمة. واهم مميزاتها ان المريض لا يعانى من رفض للجسم. (اكثر استعمالا فى علاج امراض القرنية المخروطية و السحابات البيضاء السطحية).<br />\r\n2.&nbsp;&nbsp; &nbsp;ترقيع القرنى الطبقى (الخلفى): حيث يتم استبدال الطبقتين (4 و5) باخرى سليمة. واهم مميزاتها ان الطبيب لا يستعمل غرز &hellip;.. هدا ما يعجل من تحسن قوة الابصار بعد العملية بالمقارنة للترقيع القرنى الكامل. و تستعمل فى امراض القرنية والتى تصيب الخلايا الداخلية.<br />\r\nمن اين يتم احضار القرنية الخاصة بى ؟ وكيفية التأكد من سلامتها؟<br />\r\n&bull;&nbsp;&nbsp; &nbsp;القرنية هى نسيج يحضر من عين انسان متوفى (يكون من الاصل موافق على التبرع&nbsp; بالعين).<br />\r\n&bull;&nbsp;&nbsp; &nbsp;يتم حفظ هذا النسيج خلال 24 ساعة من وفاة المتبرع.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;يتم تسليمها الى بنك العيون ( نحن فى معظم الاحيان نتعامل مع بنك الانسجة&nbsp; العالمى &ndash; والذى مقره فى بالتيمور &ndash; الولايات المتحدة الامريكية).<br />\r\n&bull;&nbsp;&nbsp; &nbsp;لا يتم استعمال هذه الانسجه فى جراحات ترقيع القرنية الا بعد عمل بعد الفحوصات التالية:<br />\r\n1.&nbsp;&nbsp; &nbsp;الا يوجد فى دم المتبرع أي اجسام مضادة لمرض الالتهاب الكبدى الفيروسى او الايدز.<br />\r\n2.&nbsp;&nbsp; &nbsp;الا يوجد للمتبرع اى تاريخ مرضى لاي امراض عصبية تأكلية مثل مرض الباركنسون او مرض جاكوب.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;ثم يتم تقييم نسيج القرنية وجودتها ... حسب شفافيتها و عدد الخلايا الداخلية لها.<br />\r\nملاحظه: لا يتم اختيار نسيج القرنية حسب السن (مثل ان نحتاج نسيج قرنية الى شاب يجب ان يحضر من شاب) ... لكن المهم ان تكون الخلايا الداخلية له تكون سليمه حتى لو كانت من مريض لديه 80 سنة.<br />\r\n&bull;&nbsp;&nbsp; &nbsp; يتم حفظ نسيج القرنية فى سوائل خاصة .. وتصل الينا هنا فى السعودية خلال يومين.<br />\r\nما هى خطوات عملية زراعة القرنية؟<br />\r\n<br />\r\nقبل العملية:<br />\r\n1.&nbsp;&nbsp; &nbsp;يشرح الطبيب للمريض الاجراءات و موافقة المريض على اجراء العملية.<br />\r\n2.&nbsp;&nbsp; &nbsp;يتم اجراء الاختبارات و الفحوصات للمريض مثل صورة دم كاملة... قياس ضغط الدم ... الخ.<br />\r\nيوم العملية:<br />\r\n1.&nbsp;&nbsp; &nbsp;يحضر المريض صباح يوم العملية (صائما) بدون افطار.<br />\r\n2.&nbsp;&nbsp; &nbsp;يتم تحضير عين المريض بأستعمال بعض الادوية والقطرات.<br />\r\n3.&nbsp;&nbsp; &nbsp;يتم عمل العملية تحت مخدر عام او موضعى.</p>\r\n\r\n<p dir=\"rtl\">الجراحة:<br />\r\n1.&nbsp;&nbsp; &nbsp;يتم ازالة القرنية المريضة.<br />\r\n2.&nbsp;&nbsp; &nbsp;يتم تثبيت رقعة القرنية السليمة فى وضعها السليم باستعمال الغرز.<br />\r\n3.&nbsp;&nbsp; &nbsp;يتم عمل العملية داخل غرفة العمليات باستعمال الميكرسكوب الجراحى (حيث يتم تكبيير حجم كرة العين عشرات المرات)&nbsp; حتى يتم عمل العملية بدقة متناهية.<br />\r\n4.&nbsp;&nbsp; &nbsp;بعد انتهاء العملية ... يوضع غطاء على العين لمدة يوم&nbsp; ثم يرفع لوضع القطرات.</p>\r\n\r\n<p dir=\"rtl\">بعد العملية:<br />\r\n1.&nbsp;&nbsp; &nbsp;يتم حجز المريض فى المستشفى لساعات او اكثر (حسب ما يراه الطبيب).<br />\r\n2.&nbsp;&nbsp; &nbsp;يشعر المريض فى الايام الاولى : باحمرار-&nbsp; دموع -&nbsp; حرارة بالعين -&nbsp; حساسية العين للضوء ( تحسن النظر يكون بطيئا ... من 3 الى 4 اسابيع).<br />\r\n3.&nbsp;&nbsp; &nbsp;يتم تحديد مواعيد الزياره والتى تكون :<br />\r\nالشهر الاول&nbsp;&nbsp; &nbsp;الشهر الثانى&nbsp;&nbsp; &nbsp;الشهر الثالث&nbsp;&nbsp; &nbsp;من الشهر الرابع الى الثانى عشر<br />\r\nكل اسبوع&nbsp;&nbsp; &nbsp;كل اسبوعين&nbsp;&nbsp; &nbsp;كل ثلاثه اسابيع&nbsp;&nbsp; &nbsp;كل شهر<br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\">لكن فى حدوث احمرار مفاجئ او الم او انخفاض فى مستوى الرؤية ... يحضر المريض للفحص مباشرة.<br />\r\n<br />\r\n4.&nbsp;&nbsp; &nbsp;استعمال القطرات حسب تعليمات الطبيب المعالج.<br />\r\n5.&nbsp;&nbsp; &nbsp;عدم فرك العين او الضغط عليها.<br />\r\n6.&nbsp;&nbsp; &nbsp;عدم الانحناء (مثل السجود او الركوع).<br />\r\n7.&nbsp;&nbsp; &nbsp;يمكن ممارسة النشاط الطبيعى ما عدا الحركات العنيفة او حمل اثقال.<br />\r\n8.&nbsp;&nbsp; &nbsp;قد يحتاج الى المريض الى تغيير وضع الغرز او استبدالها (الغرز المثبتة لرقعة القرنية) خلال الاسابيع الاولى.<br />\r\n9.&nbsp;&nbsp; &nbsp;قد تحتاج الى ارتداء نظارة طبية.... حسب تعليمات الطبيب المعالج.<br />\r\n&nbsp;انا مريض بمرض القرنية المخروطية ... وليس لدي القدرة على تحمل ارتداء العدسات اللاصقة الصلبة .... وتم تقرير لى عمليه زراعة القرنية ... فما هى نسبة النجاح؟<br />\r\nمن خلال الدراسات الطبية العالمية واحصائياتنا فى مستشفى المغربى والتى تابعنا فيها المرضى لفتره تزيد عن خمس سنوات:<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبه استمرار شفافية رقعة القرنية تزيد عن 90%.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر ممتاز (اي 6/12 او افضل) فهو 78%.</p>\r\n\r\n<p dir=\"rtl\">اريد ان اعرف نسبة نجاح العملية اذا اعيد اجراء العملية للمرة الثانية؟<br />\r\nهذا يعنى انه لم يتم اسعاف رفض القرنية فى الوقت المناسب باستعمال العلاج الطبى (نتيجة تأخر المريض فى الحضور الى الطبيب&nbsp; او توقفه عن استعمال القطرات):<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبه استمرار شفافية رقعة القرنية تزيد عن50 الى 80 %.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر ممتاز (اي 6/12 او افضل) فهو 26%<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر جيد جدا (اي 6/18 او افضل) فهو 33%<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نسبة الحصول عن نظر جيد (اي 6/60 او افضل) فهو 52%.<br />\r\nما هى المضاعفات التى يمكن ان تحدث اثناء العملية؟<br />\r\n<br />\r\nملاحظه: المضاعفات المكتوبة وليس تحتها خط خاصة بعمليات الترقيع الكامل للقرنية ... اما تلك التى تحتها خط فهى لعلميات الترقيع الطبقى للقرنية.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نزيف بمشيمة العين: وهذا اخطر مضاعفة ممكن ان تحدث للعين لانها قد تؤدى الى فقدان البصر او العين ... لكن من فضله سبحانه ...&nbsp; هى نادرة الحدوث (مرة واحدة فى كل1000 عملية زراعة قرنية). و لم تحدث لى ان رأيت هذه المضاعفة حتى كتابة هذا التقرير.<br />\r\nلم يذكر فى التقرار الطبية لعمليه الترقيع الطبقى للقرنية ان ذكر اى حاله نزف بمشيمة العين.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;نزيف داخل العين: وهذا ما يندر ان يحتاج تدخل جراحى لازالة الدم المتجلط ( الا اذا كانت قدره الجسم على امتصاص الدم بطيئه ففى هذه الحاله ... تحتاج لعمليه شفط للدم المتجلط).<br />\r\nلم يذكر فى التقرار الطبية لعمليه الترقيع الطبقى للقرنية ان ذكر اى حاله نزف داخل العين.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;كتاركتا: وهذا يندر حدوثها ( قد يحدث نتيجة اصابة بسيطة لعدسه العين اثناء العمليه).&nbsp;<br />\r\nلكن من الممكن حدوث كتاركتا مضاعفه بعد اشهر من العمليه الاصلية ... وذلك كمضاعفة لاستعمال قطرات الكورتزون (التى تكون اساسيه فى العلاج لمنع الجسم من رفض مناعة الجسم للقرنية المزروعة).<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.&nbsp;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اصابة القزحية: وهذا ما يندر حدوثه اثناء العملية. قد يحتاج الطبيب الى عمل قطع فى اطراف القزحية (لا تكون ظاهره بعد العمليه) وذلك لمنع أي ارتفاع لضغط العين .<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.&nbsp;<br />\r\n<br />\r\nما المضاعفات التى من الممكن ان تحدث بعد العمليه؟<br />\r\n&bull;&nbsp;&nbsp; &nbsp;التهاب صديدى داخل العين: وهذا من اخطر المضاعفات بعد العملية و التى قد تؤدى الى فقدان البصر .. اذا لم تعالج فى الوقت المناسب. وهذه المضاعفه تكون نتيجة تلوث اما اثناء العمليه او بعدها. ولذلك على المستشفى و الطبيب التأكد من تمام عمليات التعقيم اثناء العملية ... وايضا اعطاء المريض المضادات الحيويه اللازمه للوقاية من التلوث.<br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\">لكن على المريض ايضا دور مهم ... وهو الالتزام فى البيت خلال الايام الاولى (او حسب تعليمات الطبيب) &ndash; وضع القطرات الواقية بانتظام &ndash; لا يلمس العين الا كل شئ نظيف ومعقم ... خاصة خلال فترة التأم الجرح.<br />\r\n<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;فشل وظيفى للقرنية المزروعة: بمعنى بأن خلايا القرنية فشلت فى القيام بوظيفتها فى عين المريض ( المزروع له) . وهذا يندر حدوثه (حاله فى كل 400 حالة).<br />\r\nنادرا ما يحدث فى عمليات الترقيع الطبقى للقرنية.<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;ارتفاع لضغط العين (المياه الزرقاء):<br />\r\nوهذا يحدث اكثر للمرضى ذوى التاريخ المرضى لمرض المياه الزرقاء ..&nbsp; بنسبة 30-50%&nbsp; ... وهؤلاء يحتاجوا اما الى اضافة قطرات لتخفيض ضغط العين او لاجراء عمليه ( بالليزر او عمليه لتصريف الضغط العالى او زراعه انبوبه لتخفيض ضغط العين).<br />\r\nلكن فى حالات زراعة القرنية لمرضى امراض القرنية&nbsp; فقط مثل مرضى القرنية المخروطية ...نادرا ما يحدث لهم ارتفاع فى ضغط العين و يكون لفترة قصيرة (وذلك نتيجه استعمال قطرات الكورتزون و اللازمه لمنع رفض الجسم للقرنيه المزروعة).<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;تسريب من خلال الجرح: وهذا يندر حدوثه ... وان حدث فان فى اول زياره للطبيب يتم اكتشافها ... وفى هذه الحاله يحتاج الطبيب الى ادخال المريض الى غرفة العمليات لغلق الجرح و منع التسريب.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;زيادة التهاب العين بعد العملية:&nbsp; الاتهاب ما بعد العملية طبيعى&nbsp; و بسهوله يتم تقويضه باستعمال قطرات الكورتزون.&nbsp;<br />\r\nلكن مع بعض المرضى مثل الذين يعانون اصلا من حساسية بالعين او المرضى الذين تم زراعة القرنية لهم مره اخرى او المرضى الذين يعانون بالتهاب فى صلبة العين حتى قبل العملية (مثل المرضى المصابون بالتهاب القرنية والصلبة نتيجة اكانثاميبا او التهاب المفاصل نتيجة الروماتويد).... ومثل هذه الحالات يمكن التحكم فيها باضافه ادوية المثبطة للمناعة (تؤخذ بالفم) ... وتستعمل لفتره قصيره (من 3- 4 شهور).<br />\r\n&nbsp;&bull;&nbsp;&nbsp; &nbsp; عدم الئام الجرح السطحى (الخلايا الطلائية)&nbsp; للرقعة: وهذه يتم علاجها ببساطة باستعمال القطرات (الخالية من المواد الحافظة) او المراهم الطبية او ارتداء عدسات لاصقة لتعمل كغطاء للخلايا النامية (يكون ارتدائها مؤقت لايام فقط) .<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;التهاب ميكروبى لرقعة القرنية: وهذا يندر حدوثه ... وان كان فانه يكون نتيجة ارتخاء فى الغرز ( وهذه علاجها بسيط اما ان يتم استبدالها او ازالتها) او الاصابة بفيروس الهيربس فى حالة اذا كان المريض قبل العمليه قد اصيب به (سأناقش معك تفاصيل ذلك اذا كنت من هؤلاء المرضى).<br />\r\n<br />\r\n&bull;&nbsp;&nbsp; &nbsp;رفض الجسم للقرنية: وهذه المضاعفة فقط تحدث فى جراحات (الترقيع الكامل او الترقيع الطبقى العميق) ... بنسبه 5 - 20%&nbsp; -&nbsp; لنأخذ بعض الامثله:</p>\r\n\r\n<p dir=\"rtl\">مريض القرنية المخروطية والذى اجري له زراعة القرنية (الترقيع الكامل) : فقد اثبتت الدراسات ان نسبه حدوث رفض للجسم خلال 10 سنوات تكون بين 3-5% فقط من الحالات.<br />\r\n<br />\r\nلكن قد تصل الى 80% فى الحالات التى بها التهابات بقرنية العين او التى معها اوعية دموية نامية على سطح القرنية.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;درجه عاليه من الاستجماتزم: وهذا من الطبيعى ان نجده بعد عمليات ترقيع القرنية ( و عادة تكون درجة الاستجماتزم المنتظم (ما يسمى بالانحراف المنتظم) حوالى 4 دراجات او اقل).&nbsp; فقط 10% من هؤلاء يحتاجون الى عمل جراحة الى تصحيح الانحراف الموجود &ndash; حتى يتمكن المريض من ارتداء نظارات طبية او عدسات طبية.<br />\r\nوجود انحراف (استجماتزم) غير منتظم ... هذا نادرا ما يحدث و يحدث بعد فك الغرز وهذا لا يمكن علاجه الا بالعدسات الاصقة.<br />\r\n<br />\r\nكيف يتعرف المريض على علامات رفض الجسم للقرنية؟&nbsp;<br />\r\nاذا شعر المريض بأى من هده العلامات او مجموعها:<br />\r\n1.&nbsp;&nbsp; &nbsp;احساس بعدم الراحة فى العين ... او الم بالعين.<br />\r\n2.&nbsp;&nbsp; &nbsp;حساسية العين للضوء.<br />\r\n3.&nbsp;&nbsp; &nbsp;احمرار العين .<br />\r\nهل هناك فحوصات طبية تتم قبل عملية زرع القرنية للتكهن بقبول او رفض الجسم للقرنية المزروعة؟<br />\r\nهناك بعض الفحوصات ... لكن ما زال حتى الان لا يوجد فحوصات حاسمه لاجابة هدا السؤال.<br />\r\n<br />\r\nما اهمية معرفة تلك العلا مات؟<br />\r\nالعلاج المبكر لهده الحالة من قبل الطبيب المعالج.... يوقف رفض الجسم للقرنية المزروعة.<br />\r\n<br />\r\nماهى الاجراءات التى تتخد فى حالة ظهور علامات رفض الجسم للقرنية؟<br />\r\nفى اغلب الحالات يتم اخد&nbsp; قطرات&nbsp; الكورتيزون -&nbsp; والتى فى كثير من الاحيان تنجح فى تقويض الموقف.<br />\r\nاما حالات قليلة ... فانى استعمل اقراص الكورتزون.&nbsp;<br />\r\n<br />\r\nفى حالة رفض الجسم للقرنية ...مادا لو تأخر المريض فى الدهاب للطبيب او لم تستجب عينه للادوية المقاومة للرفض؟<br />\r\nيمكن اعادة زرع قرنية جديدة بنجاح.&nbsp; ولكن نسبة رفض الجسم للقرنية المزروعة للمرة الثانية تكون اعلى من المرة الاولى.<br />\r\n<br />\r\nهل هناك انواع من القرنية ... تقلل من فرص رفض الجسم للقرنية المزروعة؟<br />\r\nنعم هناك.. افضل حالات زرع القرنية هى عندما تزرع من المريض نفسه.<br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\">وكيف يتم د&nbsp;لك؟<br />\r\nفى بعض الحالات ال&nbsp;نادرة ... تكون قرنية احدى العينين معتمة بينما يكون العصب البصرى سليم تماما.. حيث يرى المريض الضوء على الاقل ... بينما قرنية العين الاخرى شفافة تماما... ولكنها لا ترى الضوء ودلك لوجود ضمور فى العصب البصرى.<br />\r\n<br />\r\nفى هده الحالة يمكن نقل القرنية الشفافه لتكون امام العصب البصرى السليم والقرنية المعتمة لتكون امام العصب البصرى الضامر. وبالتالى يستعيد المريض النظر فى احدى العينين.<br />\r\n<br />\r\nمن هم المرضى الذين لا انصحهم بعملية زراعه القرنية؟<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا كنت من المرضى غير المهيئين لفترة علاج طويلة بعد العمليه (من سنه الى سنه ونصف) والحضور للعديد من المتابعات و المراجعات (تصل الى حوالى عشر زيارات).<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا&nbsp; كنت من المرضى الذين يعتقدون ان عمليه زراعه القرنية هى وسيلة للاستغناء عن ارتداء العدسات اللاصقة او النظارات تماما ( هناك حوالى 15% من المرضى يحتاجون الى عدسات لاصقة بعد العملية للحصول الى جودة نظر افضل &ndash; وهناك حوالى 10% يحتاجون الى جراحات (قد تكون باستعمال الليزك او زراعه العدسات داخل العين) للحصول على نظر احسن.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا كنت من مرضى (الترقيع الطبقى الداخلى) فان المتوقع ان يستقر النظر فى غضون 4 شهور بعد العمليه &ndash; لكن سوف تستعمل القطرات الطبية لفترة تصل من 6 الى 24 شهر او يزيد.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;اذا كنت من النوع الذى لا يهتم باخذ القطرات (او ينساها بسهوله) ... حيث ان ذلك من اشهر اسباب فشل العملية.</p>\r\n\r\n<div id=\"buttons\" style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; text-align:start; width:1300px\">\r\n<div id=\"square\" style=\"margin-bottom:0px; margin-left:0px; margin-right:80px; margin-top:0px; padding:0px; width:251px\">&nbsp;</div>\r\n</div>', NULL, NULL, '2018-12-22 12:29:38', '2019-01-30 13:20:05'),
(41, 3, 'en', 'Dr. Barra performed the presbyond operation for Dr. Batal', 'By Dr. / Bara Fahim Consultant Corneal Surgery and LASIK and correct vision', 'The vision correction process was performed by Dr. Ahmed Al-Batal\r\nBy Dr. / Bara Fahim Consultant Corneal Surgery and LASIK and correct vision\r\nDr. Bara asserts that:\r\nThe operation is generally suitable for all patients over 40 years of age\r\nFor those who suffer from poor vision of the long distances of all kinds of palace and the extension of the view and deviation\r\nAnd also those who lack a vision of proximity (reading, mobile, etc.)', NULL, NULL, '2018-12-22 12:32:35', '2019-01-01 12:17:37'),
(42, 3, 'ar', 'دكتور براء أجرى عملية ال presbyond لدكتور بطل', 'على يد الدكتور / براء فحام استشاري جراحة القرنية والليزك وتصحيح البصر', '<p>تمت عملية تصحيح النظر بتقنية ال presbyond التي اجراها دكتور أحمد البطل على يد الدكتور / براء فحام استشاري جراحة القرنية والليزك وتصحيح البصر ويؤكد دكتور براء أن: العملية تصلُح بشكل عام لجميع المرضى فوق الأربعين سنة لمَن يعانون من ضعف الرؤية للبعيد بجميع أنواعه من قصر ومد نظر وانحراف وأيضاً الذين لديهم نقص رؤية للقرب (القراءة والجوال وغيرها)</p>', NULL, NULL, '2018-12-22 12:32:35', '2019-01-30 13:09:18'),
(45, 23, 'en', NULL, NULL, NULL, NULL, NULL, '2018-12-22 12:57:04', '2018-12-22 12:57:04'),
(46, 23, 'ar', 'كلمة الدكتور البطل', 'استشاري أول طب وجراحة الحول وعيون الأطفال', 'الحمد لله القائل في محكم التنزيل \" سنريهم آياتنا في الآفاق وفي أنفسهم حتى يتبين لهم أنه الحق\" والصلاة والسلام على المبعوث رحمة للعالمين. ان ابداع الخالق عزوجل في خلق العين لهو جدير في التفكر والتأمل، فمن يعلم أسرار تركيب العين الغاية في الدقة والجمال لأيقن حق اليقين أن الخالق جل شأنه قد وهب الانسان نعمة غالية عظيمة متقنة الصنع بديعة التكون،\r\n\r\n تلك هي العين بما فيها من قرنية شفافة تتراكب الخلايا فيه اوتتناسق بدقة متناهية تسمح للشعاع الضوئي بالولوج الى العين دون تبعثر أو تشتت وتمر تلك الرحلة الضوئية مخترقة العدسة البلورية والسائل الزجاجي لتتجمع هذه الحزم الضوئية في نقطة على شبكية العين تنتقل بعدها من خلال ملايين الخلايا العصبية وعبر العصب البصري لتستقر أخيرا في الجزء البصري من الدماغ ليترجم بدوره هذه الحزم الضوئية الى صورة جميلة يسمتع برؤيتها الانسان. \r\nأرحب بالاخوة والأخوات متصفحي موقعنا الالكتروني ونأمل أن يحوز على رضاكم واعجابكم. لقد سعينا ومنذ انشاء مركز البطل لطب وجراحة العيون أن نلتزم برسالتنا في تقديم أحدث الخدمات التشخيصية والعلاجية في مجال طب وجراحة العيون لمرضانا الأعزاء موقنين بأن التقدم الهائل والمتسارع في الطب بشكل عام وفي طب العيون على وجه الخصوص يتطلب منا أن نكون مواكبين لهذا التطور ايمانا منا بأن مرضانا الأعزاء هم أحق من يستفيد من هذا التطور العلمي. لقد حرصنا أن نوفر في مركزنا أحدث التقنيات والتجهيزات الطبية التي توصل اليها العلم الحديث، فقد جهز المركز بأنواع متطورة من الأجهزة الميكروسكوبية الشقية المزودة بنظام النقل التصويري والتلفزيوني كما جهز المركز أيضا بكافة أنواع أجهزة الليزر المتطورة لعلاج مختلف الحالات المرضية للعين بدءا من الخزانة الأمامية للعين وليس انتهاء بليزر الشبكية لعلاج اعتلالات الشبكية السكري. \r\nاننا نفخر بأن مركز البطل للعيون هو المركز المتخصص الأول بالمنطقة الغربية من المملكة العربية السعودية الذي أدخل لخدماته العلاجية مؤخرا تقنية \" الكستم فيو \" في علاج الليزك والتي اعتمدتها حصريا وكالة ناسا للفضاء لروادها كونه الأفضل في نتائج  عمليات تصحيح البصر. وبفضل الله فقد راجعنا في المركز العام الماضي أكثر من 7 آلاف مريض قدمت لهم أرقى وأحدث الخدمات العلاجية. \r\nلقد سعدت كثيرا بما سمعت وقرأت من انطباعات مرضانا بسعادتهم واحساسهم بأن خدمة مميزة قدمت اليهم في مركزنا وهذا ما نحرص عليه بأن يحصل كل مريض على أفضل الخدمات العلاجية من كل فرد عامل في هذا المركز. \r\nواننا اذ نسخر عصارة خبراتنا في طب وجراحة العيون، فاننا نتمنى أن نكون سببا في شفاء المرضى، راجين من الله الأجر والثواب، ومن مرضانا الأعزاء التسديد والتصويب ونحن في خدمتكم على الدوام.', NULL, NULL, '2018-12-22 12:57:04', '2018-12-22 13:36:39'),
(47, 24, 'en', 'Post-operative guidance and lens implants', 'Normal to feel reddish ... Tears ... Burning ... Difficult to see the light ... Glare around the sources of light (such as lamps) especially at night.', 'The patient should not lift the lid unless instructed by the doctor.\r\nIt is normal for the patient to feel redness ... tears ... burning ... difficulty seeing the light ... glare around the sources of light (such as lamps) especially at night.\r\nIt is preferable to lay the patient at sleep on the opposite side of the operation or on the back (not the side of the operation) ... and put a pillow under the head.\r\nThe patient / patient should not move during sleep in a violent or sudden manner.\r\nThe plastic cover works as a shield ... The shield protects the eye from shocks ... Wear when sleeping .. Ride the car ... when bathing.\r\nWear sunglasses (dark or black) after a week of operation during the day.\r\nIt is normal for the patient / patient to notice a change in the degree of colors compared to the process.\r\nThe patient / patient should not carry any weight (exceeding 3 kg) unless authorized by the doctor.\r\nThe patient / patient should not practice violent exercise unless instructed by the doctor.', NULL, NULL, '2018-12-22 13:00:31', '2019-01-01 12:14:35'),
(48, 24, 'ar', 'توجيهات ما بعد عمليةالكتاركتا وزراعة العدسات', 'الطبيعى ان يشعر المريض باحمرار... دموع ... حرقان ... صعوبة فى رؤية الضوء ... وهج حول مصادر الضوء (مثل المصابيح) خاصة فى الليل.', '<ol>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">على المريض/ المريضة عدم رفع الغطاء الا بأمر الطبيب.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">من الطبيعى ان يشعر المريض باحمرار... دموع ... حرقان ... صعوبة فى رؤية الضوء ... وهج حول مصادر الضوء (مثل المصابيح) خاصة فى الليل.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">يفضل ان يرقد المريض عند النوم على الجانب المقابل للعملية او على الظهر ( ليس جانب العملية) ... و توضع وسادة تحت الرأس.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">على المريض/ المريضة عدم التحرك اثناء النوم بعنف او بطريقة مفاجئه.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">يعمل الغطاء البلاستيكى المثقب ... كالدرع يحمى العين من الصدمات ... يلبس عند النوم .. ركوب السيارة ... عند الاستحمام.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">يتم ارتداء نظارات شمسية (بنية قاتمة او سوداء) بعد العملية لمدة اسبوع خلال النهار.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">من الطبيعى ان يلاحظ المريض / المريضة تغير فى درجة الالوان مقارنة بقبل العملية ... تكون مائلة لللون الازرق.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">على المريض/ المريضة عدم حمل اي اثقال (تزيد عن 3 كيلو جرامات) الا باذن الطبيب.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">على المريض/ المريضة عدم ممارسة التمرينات الرياضية العنيفة الا بأمر الطبيب.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">الالتزام بمواعيد العلاج:\r\n	<ul dir=\"rtl\">\r\n		<li>قطرة ---------------- نقطة كل -------- سا عات لمدة -----------</li>\r\n		<li>قطرة ---------------- نقطة كل -------- سا عات لمدة -----------</li>\r\n		<li>قطرة ---------------- نقطة كل -------- سا عات لمدة -----------</li>\r\n		<li>قطرة ---------------- نقطة كل -------- سا عات لمدة -----------</li>\r\n	</ul>\r\n	</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">يتم احضار العلاج الطبى الموصوف (القطرات) فى كل زيارة للمتابعة.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">يقوم المريض بالصلاة جالسا لمدة اسبوعيم من تاريخ العملية.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">عدم ممارسة الحياة الزوجية(الجماع) بعد العملية لمدة شهر.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">مواعيد زيارات المتابعة من يوم العملية:\r\n	<ul dir=\"rtl\">\r\n		<li>اليوم الاول.</li>\r\n		<li>الاسبوع الاول.</li>\r\n		<li>الشهر الاول.</li>\r\n		<li>الشهر الثالث.</li>\r\n		<li>الشهر السادس.</li>\r\n	</ul>\r\n	</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">قد يحتاج الطبيب لوصف نظارة طبية للمريض بعد اسبوعين او اكثر من تاريخ العملية.</li>\r\n	<li dir=\"rtl\" style=\"text-align: right;\">قد يحتاج المريض / المريضة الى تنظيف الغلاف الخلفى للعدسة البللورية للعين اذا وجد بها عتامة باستعمال الليزر (ياج ليزر) وهى عملية بسيطة تجرى بالعيادة الخارجية بعد اشهر من عملية الكتاركتا.</li>\r\n</ol>\r\n\r\n<p dir=\"rtl\">مع تمنياتى لك بالشفاء العاجل</p>', NULL, NULL, '2018-12-22 13:00:31', '2019-01-30 13:34:26'),
(49, 25, 'en', 'Tips for users of soft contact lenses (medical and cosmetic)', 'The daily lenses mean that the patient or the patient wears the lens for one day (only once) and this type is the best type of lenses (because it is less in the incidence of complications such as allergies', 'I want to wear colored lenses (decorations) - is it important to check the eye before? No doubt - not because the doctor will examine your eyes only, but because it will help you to choose the type of lens appropriate to your situation - for example, sick / sick eye dry need lenses with a small stock of water! - In addition to the doctor may prescribe some drops for the treatment of redness associated with the lenses as well as taking measurements of the diameter of the cornea and cuddle ... etc.\r\nWhat it is meant lenses daily and weekly and monthly? The daily lenses are that the patient or the patient wears the lens for one day (only once) and this type is the best type of lens (because it is less in the incidence of complications such as allergies or microbial infections). Weekly lenses are those that are used for seven consecutive days (but not For seven days), meaning that if the patient is worn only once and left for a week, she should use a new one. The monthly lenses are those that are used for 30 consecutive days (but not for thirty times) meaning that if the patient wears it once and leaves it for a month, To use a new one.\r\nNote: Some optometrists prescribe lenses for patients without stressing the duration of use (eg, describe the monthly lens and remind them that it can be used for three months to justify the high lens price!).\r\nWhat is required to wear contact lenses ?\r\n\r\n· Sterile solution for contact lenses.\r\n\r\n· Soap and handkerchiefs.\r\n\r\n· Mirror and washbasin.\r\n\r\n· Box for keeping lenses.\r\nWhat is the correct way to wear contact lenses?\r\n\r\nWash your hands with soap.\r\n\r\n· Rotate and flatten the lens by pressing on its edges until it becomes like a ball - means concave in the shape of a hemisphere like the next image.\r\n\r\n· Then lift your upper eyelid using the middle and lower eyelid using the index finger and pink, and the lens on the middle - like the following image:\r\n\r\nMake sure that your finger on the lens is dry because if it is wet you stick it and do not enter the eye\r\n\r\nThen move the eye to the right and left and above - until the lens clings to the eye in the correct situation and then close the eye Bahdoaouh and move the spider circularly on the eyelid to stick and exit any air bubbles exist.', NULL, NULL, '2018-12-22 13:41:25', '2019-01-01 12:20:55'),
(50, 25, 'ar', 'نصائح لمستعملى العدسات اللاصقة اللينة(الطبية والتجميلية)', 'يقصد بالعدسات اليومية هى ان المريض او المريضة ترتدى العدسة ليوم واحد (مرة واحدة) فقط وهذا النوع هو افضل انواع العدسات (لانه اقل فى نسبة حدوث المضاعفات مثل الحساسية', '<p dir=\"rtl\"><strong>اريد ان ارتدى عدسات ملونة (زينة) &ndash; هل من المهم عمل فحص للعين قبلها؟</strong>&nbsp;بلاشك &ndash; ليس لان الطبيب سيفحص نظرك فقط وانما لانه سيساعدك على اختيار نوع العدسة المناسبة لحالتك &ndash; فمثلا مريض / مريضة جفاف العين تحتاج الى عدسات بها مخزون قليل من الماء ! &ndash; بالاضافة الى ان الطبيب قد يصف بعض القطرات لعلاج الاحمرار المصاحب للعدسات وكذلك اخذ مقاسات قطر القرنية وتحدبها...الخ.</p>\r\n\r\n<p dir=\"rtl\"><strong>ما هو المقصود بالعدسات اليومية والاسبوعية و الشهرية؟</strong>&nbsp;يقصد بالعدسات اليومية هى ان المريض او المريضة ترتدى العدسة ليوم واحد (مرة واحدة) فقط وهذا النوع هو افضل انواع العدسات (لانه اقل فى نسبة حدوث المضاعفات مثل الحساسية او الالتهابات الميكروبية).العدسات الاسبوعية هى تلك التى تستعمل لمدة سبعة ايام متصلة (لكن ليس لمدة سبعة مرات) بمعنى ان المريضة اذا ارتدها مرة واحدة فقط وتركتها لمدة اسبوع فيجب ان تستعمل واحدة جديدة.العدسات الشهرية هى تلك التى تستعمل لمدة ثلاثون يوما متصلا (لكن ليس لمدة ثلاثين مرة) بمعنى ان المريضة اذا ارتدها مرة واحدة فقط وتركتها لمدة شهر فيجب ان تستعمل واحده جديدة.&nbsp;<br />\r\n<strong>ملاحظة</strong>: بعض اخصائى البصريات غير الامناء يصفون العدسات للمرضى بدون التشديد على مدة الاستعمال (مثلا يصف العدسة الشهرية ويذكر له انه من الممكن استعمالها لمدة ثلاثة اشهر وذلك لتبرير سعر العدسة المرتفع! ومن هنا يحدث ما لا يحمد عقباه).<br />\r\n<strong>ما هو المطلوب لارتداء العدسات اللاصقة ؟</strong><br />\r\n<br />\r\n&middot; محلول معقم (حافظ) للعدسات اللاصقه.<br />\r\n<br />\r\n&middot; صابون ومناديل.<br />\r\n<br />\r\n&middot; مرايه ومغسله.<br />\r\n<br />\r\n&middot; علبة لحفظ العدسات.<br />\r\n<br />\r\n<strong>ما هى الطريقة الصحيحة لارتداء العدسات اللاصقة؟</strong><br />\r\n<br />\r\n&middot; اغسل يديك بالصابون جيدا.<br />\r\n<br />\r\n&middot; قم بتدوير وتجسيم العدسه بالضغط على اطرافها حتى تصبح كالكرة - يعني تكون مقعرة على شكل نصف كرة مثل الصورة التالية .<br />\r\n<br />\r\n&middot; ثم ترفع جفنك الاعلى باستخدام الوسطى و الجفن الاسفل باستخدام السبابة والخنصر , وتكون العدسة على الوسطى - مثل الصورة التالية :<br />\r\n<br />\r\nتاكد ان اصبعك اللذى عليه العدسة جاف لان اذا كانت رطبة تلتصق فيه ولا تدخل للعين<br />\r\n<br />\r\n&middot; بعدها حرك العين يمينا ويسارا وفوق - حتى تلتصق العدسه بالعين فى الوضع الصحيح ثم بعدها نغمض العين بهدوووء ونحرك بالسبابة بشكل دائري على الجفن حتى تلتصق وتخرج اي فقاعات هواء موجودة.</p>\r\n\r\n<p dir=\"rtl\"><strong>متى يتم تغيير المحلول المعقم؟</strong><br />\r\n<br />\r\nفى كل مره يتم فيها حفظ العدسات اللاصقة يتم تغيير المحلول المعقم &ndash; لكن تذكر انه يجب عليك غسيل علبة العدسات بالماء والصابون ثم تجفيفها قبل اضافة المحلول الجديد.<br />\r\n<br />\r\n<strong>ملاحظة</strong>: كل ثلاثة اشهر يجب شراء&nbsp;<strong>علبة حفظ للعدسات&nbsp;</strong>جديدة. ينصح عدم استعمال المحلول المعقم للعدسات بعد انتهاء صلاحيته.<br />\r\n<br />\r\n<strong>ملاحظة</strong>: يحذر تكرار استعمال نفس المحلول المعقم الموجود بعلبة حفظ العدسات اكثر من مرة واحدة.<br />\r\n<br />\r\n<strong>ما هى طريقة السليمة لحفظ العدسات اللاصقة؟</strong><br />\r\n<br />\r\n&middot; ضع العدسة في راحة اليد وضع عليه المحلول المعقم الخاص بالعدسات.<br />\r\n<br />\r\n&middot; قم بباطن السبابة بفرك العدسة.<br />\r\n<br />\r\n&middot; ضع العدسة في العلبة الحافظة.<br />\r\n<br />\r\n&middot; ضع عليها المحلول.<br />\r\n<br />\r\n&middot; اغلق العلبة جيدا وضعه في مكان جاف وبارد.<br />\r\n<br />\r\n<br />\r\n<strong>ما هى النصائح العشر عند استعمال العدسات اللاصقة؟</strong><br />\r\n<br />\r\n&middot; غسيل اليدين جيداً قبل الإمساك بها.<br />\r\n<br />\r\n&middot; غلق محلول التنظيف جيداً وعدم تركه مفتوحاً أو معرضاً للجو حتى لا تنشط البكتريا وتسبب إصابات بالغة للعين.<br />\r\n<br />\r\n&middot; الاحتفاظ بهذا المحلول في مكان معتدل في درجة الحرارة ومظلم, فدرجات الحرارة المرتفعة أو الباردة تؤثر على التركيبة الكيميائية للمحلول.<br />\r\n<br />\r\n&middot; يمنع منعا باتا ارتداء العدسات اللاصقة عند السباحة .<br />\r\n<br />\r\n&middot; ينصح الاستمرار فى تركيب العدسات اللاصقة بالطريقة نفسها (مثل ان ترتدى العدسات اليمنى اولا ثم اليسرى) حتى يتم ارتداء العدسة المضبوطة فى العين المناسبة لها خاصة فى حالة اختلاف قياس قوة العدسة من عين لاخرى.<br />\r\n<br />\r\n&middot; يحذر ارتداء العدسات عندما يكون هناك التهابات بالعين أو احمرار أو هرش أو دموع .<br />\r\n<br />\r\n&middot; ارتداء العدسات أثناء النوم قد يؤدى الى مضاعفات وخيمة .<br />\r\n<br />\r\n&middot; عند السفر بالطائرة لابد وأن يكون معك قطرة مرتطبة للعين تقطر بالعينين لأن الهواء داخل الطائرة يكون جافاً.<br />\r\n<br />\r\n&middot; ينصح بارتداء نظارات شمسية عند الخروج فى اوقات الظهيرة لحماية العين من دخول أية مواد غريبة لها او التعرض لاشعة الشمس الضارة.<br />\r\n<br />\r\n&middot; ينصح بفحص العدسات دوريا (بنفسك او ل ومتى وجد بها تشققات فيجب التخلص منها على الفور.<br />\r\n<br />\r\n<strong>للفتيات</strong>: يجب ارتداء العدسات اللاصقة قبل وضع الميك اب (المكياج( بفترة. يجب استخدام مسكرة وقلم تحديد العين غير قابليين للتأثر بالماء.عند التحديد بالقلم يكون ذلك على حافة الجفن من الخارج بقدر المستطاع وليس للداخل. استخدام منظفات للعين أو مزيلات المكياج لا تحتوي على مواد كيميائية وبدون روائح وأن يكون ذلك حول العين.عدم وضع البارفانات أو إسبراي الشعر بالقرب من العين.عدم تقريب هواء مجفف الشعر فى اتجاه العين. وضع البودرة على الوجه بعيداً عن العين. ايضا لا ينصح بارتداء العدسات اللاصقة عند استخدام المنظفات المنزلية حيث أن الأبخرة المتصاعدة منها تحتوي على غاز الأمونيا والذى من السهل أن امتصاصه بواسطة العدسات.<br />\r\n<br />\r\n<strong>هذه هى المرة الاولى لى لاستعمال العدسات اللاصقة &ndash; هل يمكن استعمالها طوال اليوم ام يكون ارتدائها تدريجيا؟</strong><br />\r\n<br />\r\nطالما هذه هى المره الاولى التى يتم فيها تجربة ارتداء العدسات اللاصقه فينصح ارتدائها بالتدريج المطرد كما فى الجدول التالى:<br />\r\n<br />\r\nيجب نزع العدسات فورا اذا صادفتك اية من المشاكل التالية :<br />\r\n<br />\r\n&middot; حكة او حرقان او وخز في العين.<br />\r\n<br />\r\n&middot; الشعور بوجود جسم غريب في العين .<br />\r\n<br />\r\n&middot; الادماع الزائد او وجود إفرازات غير عادية في العين أو الاحمرار .<br />\r\n<br />\r\n&middot; ضبابية الرؤية او ظهور اقواس قزح او هالات حول الاشياء قد يحدث جفاف العين في ارتداء العدسات.<br />\r\n<br />\r\n&middot; الشعور براحة اقل او بوجود العدسات مقارنة بالشعور عند إدخالها لأول مرة.<br />\r\n<br />\r\n<strong>نصائح لمرضى العدسات اللاصقة الصلبة</strong><br />\r\n<br />\r\n<strong>ما الفرق بين العدسات اللاصقه اللينة والصلبة ؟</strong><br />\r\n<br />\r\n<strong>كيف يتم العناية بالعدسات اللاصقة الصلبة؟</strong><br />\r\n<br />\r\n&middot; محلول منظف.<br />\r\n<br />\r\n&middot; محلول معقم<br />\r\n<br />\r\n&middot; محلول مرطب للعدسه<br />\r\n<br />\r\n&middot; محلول مزيل للترسبات البروتينية .<br />\r\n<br />\r\n<strong>خطوات تنظيف العدسات:&nbsp;</strong><br />\r\n<br />\r\n&middot; يتم ازالة الترسبات الموجودة على العدسة باستعمال محلول ملحى او conditioner وذلك بفرك العدسة فى بطن اليد.<br />\r\n<br />\r\n&middot; تعقيم العدسة &ndash; وذلك بحفظها فى العلبة الخاصة طوال اللليل.<br />\r\n<br />\r\n&middot; تغسل العدسه جيدا ومن المحلول المعقم وذلك باستعمال wetting agent.<br />\r\n<br />\r\nالمحلول المعقم يجب تغييره يوميا &ndash; ويتم تنظيف علبة حفظ العدسات اسبوعيا.<br />\r\n<strong>متى يجب استبدال العدسات اللاصقة الصلبة؟</strong><br />\r\nمتى كان المريض يعتنى بنظافة العدسات اللاصقة ويتابع مع الطبيب فحص كل من العين والعدسة &ndash; فيمكن تغيرها كل عامين كاملين.<br />\r\n<strong>كيف يمكن ان اخلع العدسات اللاصقه الصلبة؟</strong><br />\r\nا<strong>لطريقه الاولى</strong>: يمكن خلعها باستعمال العود الماص&nbsp;<br />\r\n<strong>الطريقة الثانية:</strong>&nbsp;يتم الضغط على الجفن العلوى والسفلى فى أن واحد يصاحبه تغميضه قوية .<br />\r\n&nbsp;</p>', NULL, NULL, '2018-12-22 13:41:25', '2019-01-30 13:32:14'),
(53, 27, 'en', 'Cataract treatment', '(White water)', 'Suction Balafako surgical\r\nFor all cases of cataracta is better for solid cacti\r\n(Small wound (3 mm (large wound (10 mm\r\nYou do not need surgical stitches\r\nIts safety is high in its safety ratio\r\nLooking better over a period of a week improves your look for a month\r\nIt is performed under a local anesthetic under local anesthetic\r\nYou do not need a hospital stay, you do not need a hospital stay', NULL, NULL, '2018-12-22 13:53:26', '2019-01-01 12:24:05'),
(54, 27, 'ar', 'علاج الكتاركتا', '( المياه البيضاء )', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" dir=\"rtl\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"color:#3498db\"><strong>شفط بالفاكو</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#3498db\"><strong>جراحيا</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">لجميع حالات الكتاركتا&nbsp;</td>\r\n			<td style=\"text-align:center\">أفضل للكتاركتا الصلبة</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">(جرحها صغير (3ملم</td>\r\n			<td style=\"text-align:center\">(جرحها كبير (10ملم</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">لا تحتاج&nbsp;</td>\r\n			<td style=\"text-align:center\">تحتاج لغرز جراحية&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">أمانها عالى&nbsp;</td>\r\n			<td style=\"text-align:center\">أقل فى نسبة أمانها&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">يتحسن النظر على مدار أسبوع&nbsp;</td>\r\n			<td style=\"text-align:center\">يتحسن الظر على مدار شهر&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">تجرى تحت مخدر موضعى&nbsp;</td>\r\n			<td style=\"text-align:center\">تجرى تحت مخدر موضعى&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">لاتحتاج الى اقامة فى المستشفى&nbsp;</td>\r\n			<td style=\"text-align:center\">لاتحتاج الى اقامة فى المستشفى&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '2018-12-22 13:53:26', '2018-12-22 13:53:26'),
(57, 1, 'en', 'Dr. Batal Word', 'Senior Consultant, Pediatric Surgery and Eye Surgery', 'Praise be to God who said in the text of the download \"We will show them our verses in the horizons and in themselves until it becomes clear to them that the right\" and peace and blessings on the envoy mercy to the worlds. The creator of the Creator in the creation of the eye is worthy of reflection and contemplation, who knows the secrets of the installation of the eye of the goal in precision and beauty to realize the right of certainty that the Creator Gill had given the man a great blessing of great,\r\nThis is the eye, including a transparent cornea that overlaps the cells in it with a precision that allows the optical beam to enter the eye without scattering or dispersion. This optical journey breaks through the crystalline lens and the glass liquid to collect these optical beams at a point on the retina, which is then passed through millions of neurons The optic nerve finally stabilizes in the visual part of the brain, which in turn translates these optical beams into a beautiful image that human vision sees.\r\nI welcome the brothers and sisters of our web surfers and hope to have your satisfaction and admiration. Since the establishment of Al-Batal Center for Ophthalmology, we have been committed to our mission to provide the latest diagnostic and therapeutic services in the field of ophthalmology and ophthalmology. We believe that the tremendous and rapid progress in medicine in general and in ophthalmology in particular requires us to be in line with this development. Our dear patients are more entitled to benefit from this scientific development.\r\nThe Center has equipped the Center with advanced types of microscopic devices equipped with a transmission system, and also equipped the center of all types of advanced laser devices to treat various cases of eye disease starting from the front of the eye and not Retinal retinal laser therapy for diabetic retinopathy.\r\nWe are proud that Al-Batal Al-Ayoun Center is the first specialized center in the Western Region of Saudi Arabia, which has recently introduced its Al-Kastam View treatment in Lasik treatment, which was exclusively approved by NASA for its astronauts as being the best in the results of corrective operations. Thanks to God, we reviewed more than 7,000 patients in the center last year, offering them the best and latest treatment services.\r\nI was very happy with what I heard and read from our patients\' impressions of their happiness and their feeling that a special service was offered to them at our center. This is why we are keen to ensure that every patient receives the best treatment from every individual working in this center.\r\n\r\nAnd we are proud of our expertise in ophthalmology, we hope to be a cause of healing patients, hoping God reward and reward, and our dear patients pay and correction and we are at your service always.', NULL, NULL, '2018-12-22 14:01:56', '2019-01-01 12:29:40'),
(58, 1, 'ar', 'كلمة الدكتور البطل', 'استشاري أول طب وجراحة الحول وعيون الأطفال', '<p style=\"margin-left:0in; margin-right:0in\"><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family:&quot;Arial&quot;,sans-serif\">الحمد لله القائل في محكم التنزيل &quot; سنريهم آياتنا في الآفاق وفي أنفسهم حتى يتبين لهم أنه الحق&quot; والصلاة والسلام على المبعوث رحمة للعالمين. ان ابداع الخالق عزوجل في خلق العين لهو جدير في التفكر والتأمل، فمن يعلم أسرار تركيب العين الغاية في الدقة والجمال لأيقن حق اليقين أن الخالق جل شأنه قد وهب الانسان نعمة غالية عظيمة متقنة الصنع بديعة التكون،</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family:&quot;Arial&quot;,sans-serif\">تلك هي العين بما فيها من قرنية شفافة تتراكب الخلايا فيه اوتتناسق بدقة متناهية تسمح للشعاع الضوئي بالولوج الى العين دون تبعثر أو تشتت وتمر تلك الرحلة الضوئية مخترقة العدسة البلورية والسائل الزجاجي لتتجمع هذه الحزم الضوئية في نقطة على شبكية العين تنتقل بعدها من خلال ملايين الخلايا العصبية وعبر العصب البصري لتستقر أخيرا في الجزء البصري من الدماغ ليترجم بدوره هذه الحزم الضوئية الى صورة جميلة يسمتع برؤيتها الانسان</span>. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family:&quot;Arial&quot;,sans-serif\">أرحب بالاخوة والأخوات متصفحي موقعنا الالكتروني ونأمل أن يحوز على رضاكم واعجابكم. لقد سعينا ومنذ انشاء مركز البطل لطب وجراحة العيون أن نلتزم برسالتنا في تقديم أحدث الخدمات التشخيصية والعلاجية في مجال طب وجراحة العيون لمرضانا الأعزاء موقنين بأن التقدم الهائل والمتسارع في الطب بشكل عام وفي طب العيون على وجه الخصوص يتطلب منا أن نكون مواكبين لهذا التطور ايمانا منا بأن مرضانا الأعزاء هم أحق من يستفيد من هذا التطور العلمي. لقد حرصنا أن نوفر في مركزنا أحدث التقنيات والتجهيزات الطبية التي توصل اليها العلم الحديث، فقد جهز المركز بأنواع متطورة من الأجهزة الميكروسكوبية الشقية المزودة بنظام النقل التصويري والتلفزيوني كما جهز المركز أيضا بكافة أنواع أجهزة الليزر المتطورة لعلاج مختلف الحالات المرضية للعين بدءا من الخزانة الأمامية للعين وليس انتهاء بليزر الشبكية لعلاج اعتلالات الشبكية السكري</span>. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family:&quot;Arial&quot;,sans-serif\">اننا نفخر بأن مركز البطل للعيون هو المركز المتخصص الأول بالمنطقة الغربية من المملكة العربية السعودية الذي أدخل لخدماته العلاجية مؤخرا تقنية &quot; الكستم فيو &quot; في علاج الليزك والتي اعتمدتها حصريا وكالة ناسا للفضاء لروادها كونه الأفضل في نتائج&nbsp; عمليات تصحيح البصر. وبفضل الله فقد راجعنا في المركز العام الماضي أكثر من 7 آلاف مريض قدمت لهم أرقى وأحدث الخدمات العلاجية</span>. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family:&quot;Arial&quot;,sans-serif\">لقد سعدت كثيرا بما سمعت وقرأت من انطباعات مرضانا بسعادتهم واحساسهم بأن خدمة مميزة قدمت اليهم في مركزنا وهذا ما نحرص عليه بأن يحصل كل مريض على أفضل الخدمات العلاجية من كل فرد عامل في هذا المركز</span>. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family:&quot;Arial&quot;,sans-serif\">واننا اذ نسخر عصارة خبراتنا في طب وجراحة العيون، فاننا نتمنى أن نكون سببا في شفاء المرضى، راجين من الله الأجر والثواب، ومن مرضانا الأعزاء التسديد والتصويب ونحن في خدمتكم على الدوام</span>.</span></span></p>', NULL, NULL, '2018-12-22 14:01:56', '2018-12-22 14:01:56');
INSERT INTO `blogs_translation` (`id`, `blog_id`, `locale`, `title`, `short_description`, `long_description`, `content`, `keywards`, `created_at`, `updated_at`) VALUES
(59, 32, 'en', 'Eye specialist', 'Eye specialist: Mobile waves lift the temperature of the area surrounding the eye 3 degrees', 'Confirmed that it is sufficient for infection of \"cataract\"\r\nSource: Al Watan Newspaper\r\nAn expert in vision warned of the danger of mobile phone to consider the danger of the waves emitted from the mobile phone (mobile) on the eye, hundreds of scientific studies Secretary proved their impact (cumulative) long-term on the brain and ear and eye. He explained that the mobile phone (mobile) issued waves with the same wavelength of microwave. As is known, microwave devices are those that produce temperatures high enough to be used for cooking. \"Our generation of humans is the only one on the face of history who has risked exposing our bodies to large-band radio frequencies (30 kHz-300MHz) and microwaves (300-3000 MHz) using mobile phones, and a simple example of receiving a phone call next to the TV or The car radio will be surprised by high vibrations that interfere with the image of the television or radio voice, explaining that the mobile phone when receiving the call transmits powerful waves 0.2 to 0.6 watts - 40% of which is absorbed by our hands and our heads. And a center in the direction of our heads - with a capacity of ten thousand times that Which is received by a radio (normal) 30 meters from the radio tower radio \"And the extent of damage to the waves from the mobile phone on the eye confirmed that the microwave waves from the mobile phone raise the temperature of the area surrounding the eye to three bikes and this is enough to work opacity With the lens of the eye (cataract) \". He pointed out that one of the German studies proved the close link between cancer of the internal membranes of the eye and the use of these patients for mobile phones. And in what was considered Hntira talk about the damage of mobile phone nowadays, such as talking about the effects of smoking for fifty years cited ten tips to help avoid the disadvantages as follows:\r\n\r\nReduce your use of the mobile phone during the day and make it absolutely necessary such as travel or emergency situations.\r\nMake your calls shorter and try to use the landline as a safe alternative\r\nDo not use it while you are sitting in the car and of course while driving - studies in the German Volkswagen factories have shown that the use of a mobile phone inside this iron box focuses electromagnetic waves on your body and head (ten times).\r\nUse the speakers on the phone to answer the call so that you do not make such a device close to your head\r\nUsing headphones connected to your phone with a risk cord is also safer. Use headphones without a cord or using Bluetooth technology.\r\nTry to answer the calls in the presence of a strong signal signal (not weak) as this reduces the electromagnetic waves focused on your head.\r\nDo not put it in the pants belt or in the pocket of your dress - studies have shown its effect on the number of sperm cells for men.\r\nDo not receive a call while charging the phone.\r\nDo not live next to a mobile phone tower.\r\nIf you do not use the mobile phone at night, it is best to turn it off and completely remove the battery (because the presence of the battery means that it will still receive the waves even if the phone screen is locked).', NULL, NULL, '2019-01-30 13:39:27', '2019-02-14 11:32:08'),
(60, 32, 'ar', 'خبير إبصار: موجات الجوال ترفع حرارة المنطقة المحيطة بالعين 3 درجات', 'خبير إبصار: موجات الجوال ترفع حرارة المنطقة المحيطة بالعين 3 درجات', '<p dir=\"rtl\">أكد أنها كافية للإصابة بـ&quot;الكتاركتا&quot;&nbsp;<br />\r\nالمصدر : جريدة الوطن&nbsp;<br />\r\nحذر خبير في الإبصار من خطورة الهاتف الجوال على النظر مؤكدا خطورة الموجات المنبعثة من الهاتف النقال (الجوال) على العين فالمئات من الدراسات العلمية الأمينة أثبتت تأثيرها (التراكمي) على المدى الطويل على المخ والأذن والعين. وأوضح ر أن الهاتف النقال (الجوال) يصدر عنه موجات بنفس الطول الموجى للميكرو ويف وكما هو معروف فإن أجهزة الميكرو ويف هي تلك التي يصدر عنها درجات حرارة عالية كافية لاستعمالها للطهي. و أشار إلى أن &quot;جيلنا من البشر هو الوحيد على وجه التاريخ الذي جازف بتعريض أجسادنا لتردد موجات الراديو الواسعة المجال (30 kHz-300MHz) وموجات ميكروويف (300-3000 MHz) باستعمال الهواتف النقالة. وضرب مثلا بسيطا بأن تستقبل مكالمة تليفونية بجوار التلفاز أو راديو السيارة فستفاجأ بذبذبات عالية تتداخل مع صورة التلفاز أو صوت الراديو مفسرا ذلك بأن الهاتف النقال عند استقباله للمكالمة يبث موجات بقوه 0.2 إلى 0.6 واط - 40% منها تمتصه أيدينا ورؤوسنا. و أضاف &quot;أن الهاتف النقال (الجوال) يعتبر موصلا قويا لموجات الراديو بل ومركّزا لها في اتجاه رؤوسنا - بقدرة تصل إلى عشرة آلاف ضعف من تلك التي يستقبلها جهاز راديو (عادى) على بعد 30 متر من برج لبث موجات الراديو&quot; وعن مدى ضرر الموجات الصادرة من الهاتف النقال على العين أكد أن موجات الميكروويف الصادرة عن الهاتف النقال ترفع درجه حرارة المنطقة المحيطة بالعين إلى ثلاث دراجات مئوية وهذا ما يكفي لعمل عتامة بعدسة العين (الكتاركتا)&quot;. و لفت إلى أن إحدى الدراسات الألمانية أثبتت الارتباط الوثيق بين سرطان الأغشية الداخلية للعين واستعمال هؤلاء المرضى للهواتف النقالة. و فيما اعتبر حنتيرة الحديث عن أضرار الهاتف النقال في أيامنا هذه مثل الحديث عن أضرار التدخين منذ خمسين عاما أورد عشر نصائح تساعد في تجنب مضارها على النحو التالي:</p>\r\n\r\n<ol>\r\n	<li dir=\"rtl\" style=\"text-align:right\">قلل من استعمالك للهاتف الجوال أثناء اليوم واجعله في الضرورة القصوى مثل السفر أو حالات الطوارئ.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">اجعل مكالماتك أقصر ما يكون وحاول أن تستعمل التليفون الأرضي كبديل آمن</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">لا تستعمله أثناء جلوسك بالسيارة وبالطبع أثناء القيادة - حيث أثبتت دراسات بمصانع سيارات فولكس فاجن الألمانية أن استعمال الهاتف النقال داخل هذا الصندوق الحديدي (السيارة) يركز الموجات الكهرومغناطيسية على جسمك ورأسك (عشرة أضعاف).</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">استعمل مكبرات الصوت بالهاتف للرد على المكالمة حتى لا تجعل مثل هذا الجهاز قريبا من رأسك</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">استعمال السماعات المتصلة بالهاتف عن طريق سلك خطر أيضا والأكثر أمانا هو استعمال السماعات بدون سلك أو ما يستعمل تكنولوجيا (Bluetooth).</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">حاول أن ترد على المكالمات في وجود إشارة إرسال قوية (وليست ضعيفة) حيث يقلل هذا من الموجات الكهرومغناطيسية المركزة على رأسك.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">لا تضعه في حزام البنطال أو في جيب ثوبك - فقد أثبتت الدراسات تأثيره على عدد الخلايا المنوية للرجال.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">لا تستقبل مكالمة أثناء شحن الهاتف بالكهرباء.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">لا تسكن بجوار برج للهواتف النقالة.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">في حالة عدم استعمالك للهاتف النقال (ليلا) من الأفضل إطفاؤه ونزع البطارية منه تماما (لأن وجود البطارية به يعنى استمرار استقباله للموجات حتى لو كانت شاشة الهاتف مقفلة).</li>\r\n</ol>', NULL, NULL, '2019-01-30 13:39:27', '2019-01-30 13:50:09'),
(61, 33, 'en', 'How do you enjoy fireworks?', 'How to enjoy fireworks and keep your eye', 'Fireworks are a feature of holiday celebrations - enjoyed by the grand before the small - appear in the sky in exquisite shapes and colors.\r\nIn order to enjoy fireworks and do not hurt our children, we had this meeting with Dr. Mohamed Hantira, Head of the Department of Ophthalmology,\r\n\"The use of fireworks in the house (so-called rockets or rockets) may result in severe corneal and conjunctivitis injuries, which may lose sight.\" Parents should also note their children when they ignite fireworks, especially if they are young children.\r\nInjuries are not only the result of shrapnel of the eye, but may also be the result of burns due to the dispersion of chemical substances (gunpowder) in the eye of the injured.\r\nThe number of eye specialists during the Eid holiday (in a number of Moroccan hospitals in different parts of the Kingdom) on the percentage of eye injuries due to pyrotechnics at festivals - gathered on the increase in the proportion of eye accidents as a result of the use of fireworks in homes and without parental control. One of them said that \"on the first day of the feast only - received three cases of burns as a result of fireworks all of them under the tenth - and those cases did not remove the body from the inside of the eye and thus turned the joy of the feast to grief and crying.\"\r\nAnother added, \"It is the temperature of the fragments after the explosion to a thousand degrees Celsius! And not only that, but those fragments scattered, especially what are sharp parties.\"\r\nWe all want to draw a smile on the faces of our children especially at the holidays, but we have to take some precautions that Dr. Hantira has recommended:\r\n\r\n1. Do not place fireworks in glass containers (such as a glass of soda water).\r\n\r\n2. Do not ignite the plants and around them straw or flammable materials\r\n\r\n3. Make sure that the fuse is long enough to give you time to pull away before the explosion.\r\n\r\n4. It is best to wear special protective glasses - to protect the eye from volatile fragments.\r\n\r\n5. Parents should observe their children while lighting the plants.\r\n\r\nFinally, I would advise parents and parents to enjoy the sight of firecrackers being launched in the sky - not the ones that are being sold (as they say) and used in our homes.', NULL, NULL, '2019-01-30 13:54:04', '2019-02-14 11:57:50'),
(62, 33, 'ar', 'كيف تستمتع بالألعاب النارية', 'كيف تستمتع بالألعاب النارية (الطراطيع) وتحافظ على عينك', '<p dir=\"rtl\">الألعاب النارية سمة من سمات احتفالات الأعياد &ndash; حيث يستمتع بها الكبير قبل الصغير &ndash; تظهر في السماء بأشكال بديعة وألوان خلابة.&nbsp;<br />\r\nوحتى نستمتع بالألعاب النارية ولا يتأذى أطفالنا كان لنا هذا اللقاء مع الدكتور محمد حنتيره رئيس قسم العيون بمستشفى مغربى عسير:<br />\r\n&quot; استعمال الألعاب النارية في البيت (ما يسمى بالطراطيع او الصواريخ) قد ينتج عنها إصابات شديدة بالقرنية و ملتحمة العين مما قد يفقد البصر&quot; وقد أضاف أيضا &quot; على الآباء والأمهات ملاحظة أبناءهم عند إشعال الألعاب النارية خاصة إذا كان حولها صغار السن من الأطفال&quot; .<br />\r\nلا تكون الإصابات فقط نتيجة ارتطام شظايا الطراطيع بالعين ولكن قد تكون أيضا في صورة حروق نتيجة تناثر المواد الكيماوية (البارود) في عين المصاب.&nbsp;<br />\r\nوبسؤال عدد من اخصائى العيون المناوبين أثناء أجازه العيد (بعدد من مستشفيات المغربي في مختلف أنحاء المملكة) عن نسبة إصابات العيون نتيجة الألعاب النارية بالأعياد &ndash; اجمعوا على ازدياد نسبه حوادث العيون نتيجة استعمال الألعاب النارية بالمنازل وبدون رقابة الأهل . وقد ذكر احدهم &quot; انه في اول ايام العيد فقط &ndash; استقبل ثلاث حالات من الحروق نتيجه الالعاب النارية جميعهم دون العاشره &ndash; ومن تلك الحالات ما استوجب ازاله جسم غريب من داخل العين وبذلك تحولت فرحة العيد إلى حزن وبكاء&quot; .<br />\r\nوقد أضاف أخر &quot; انه تصل درجه حرارة الشظايا بعد الانفجار إلى ألف درجه مئوية ! وليس هذا فقط ولكن تلك الشظايا المتناثرة لاسيما ما تكون حادة الأطراف&quot;.<br />\r\nنحن نريد جميعا أن نرسم الابتسامة على وجوه أولادنا خاصة فى الاعياد لكن علينا أن نأخذ بعض الاحتياطات التي وصى بها الدكتور حنتيره وهى:<br />\r\n<br />\r\n1. لا تضع الألعاب النارية (الطراطيع) في حاويات زجاجية (مثل زجاجه المياه الغازية).<br />\r\n<br />\r\n2. لا تشعل الطراطيع وحولها قش او مواد قابله للاشتعال<br />\r\n<br />\r\n3. تأكد أن فتيل الطراطيع بالطول الكافي حتى يعطيك وقتا للانسحاب بعيدا قبل الانفجار.<br />\r\n<br />\r\n4. من الأفضل ارتداء نظارات خاصة واقيه &ndash; لحماية العين من الشظايا المتطايرة.<br />\r\n<br />\r\n5. ان يراقب الآباء أبناءهم أثناء إشعال الطراطيع.<br />\r\n<br />\r\nوأخيرا ... ما انصح به اخوانى الآباء والأمهات ان يستمتعوا هم و أبناءهم برؤية الألعاب النارية والتي تطلق في السماء على الملأ - وليس تلك التي تباع (بصوره مخالفه) و يتم استعمالها في منازلنا.</p>', NULL, NULL, '2019-01-30 13:54:04', '2019-01-30 13:54:04'),
(63, 34, 'en', 'The difference between temporary and permanent lenses', 'The difference between temporary and permanent lenses', '<p>Permanent lenses for temporary lenses Implanted internally by the eye either in front of or behind the pupil, the eye is placed externally on the eye Do not need to clean continuously Do not need to be replaced with new every period You do not need to be allergic to them</p>', NULL, NULL, '2019-01-30 13:54:27', '2019-02-18 16:39:14'),
(64, 34, 'ar', 'الفرق بين العدسات المؤقتة والدائمة', 'العدسات المؤقتة والدائمة', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">العدسات الدائمة</th>\r\n			<th scope=\"col\">العدسات المؤقتة</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>تزرع&nbsp; داخليا بالعين اما امام او خلف البؤبؤ العين</td>\r\n			<td>توضع خارجيا على العين</td>\r\n		</tr>\r\n		<tr>\r\n			<td>لا تحتاج</td>\r\n			<td>تحتاج لتنظيف بصفة مستمرة</td>\r\n		</tr>\r\n		<tr>\r\n			<td>لا تحتاج</td>\r\n			<td>يتم استبدالها بجديدة كل فترة</td>\r\n		</tr>\r\n		<tr>\r\n			<td>لا تحتاج</td>\r\n			<td>يحدث منها حساسية</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '2019-01-30 13:54:27', '2019-01-30 13:54:27'),
(65, 35, 'en', 'To see the TV is correct and healthy', 'To see a true and healthy TV ... you have these tips', 'I do not exaggerate if I say that every room in our homes even the kitchen has a television set and even compete to buy the largest screens, some of them up to 70 inches and the latest technology in the manufacture of such devices find the so-called digital television high definition (Digital - HDTV) It is characterized by pure visibility and another thin fish in order to contribute to the system of decor and the sitting room and the so-called\r\n\r\nB \"home theater\" and others.\r\nWhat makes us more effective is our ability to watch thousands of films, serials and programs of all kinds (news, culture, religion, etc.). With this momentum of 24-hour television material - video games come. What do you know about video games ... where our young children (and often adults) spend long hours trying to break the record achieved by a friend or neighbor or himself in an earlier date\r\n\r\nBut we must have a stop with this important device and how to benefit from it and avoid being forced. Here are some answers to questions that have been answered to my e-mail:\r\n\r\nQ: When I buy a TV - what is the size of the TV and what is the least distance I should sit away from the TV?\r\nA: The size of the room where the TV is located is the one that chooses the right TV size. For example, if you want to watch television in the kitchen or the bedroom (where we are close to the TV screen), it is better to choose small screens such as 26 inches. But in sitting rooms (where spaces are bigger) you can buy bigger screens.\r\nFor example, watching a football match in a small television and at a distance makes it boring and also cumbersome to the eye and vice versa.\r\n\r\nThis table can help you choose the distance at which the high-definition digital TV is placed. (If you have a non-digital TV, you should see it at a distance beyond the table)\r\n\r\nSecure viewing distance\r\nTV screen size\r\nMeters and a quarter to two meters\r\n\r\n30 inches\r\n\r\nMeters and a half to two and a quarter\r\n\r\n34 inches\r\n\r\nMeters and 75 cm to 2 meters and 75 cm\r\n\r\n42 inches\r\n\r\nTwo to three meters and a quarter\r\n\r\n50 inches\r\n\r\nTwo and a quarter to three and a half meters\r\n\r\n56 inches\r\n\r\nTwo and a half to three meters and 75 cm\r\n\r\n62 inches\r\n\r\nTwo meters and 75 cm to four meters\r\n\r\n70 inches\r\n\r\nQ: What are the other tips for seeing a healthy TV?\r\nA: Your eye must be at a height equal to the height of the middle of the TV screen - where the picture will be clearer in the middle of the TV screen.\r\nThe lighting of the room is an essential element - I advise you to make the lighting of the room slightly cloudy (not dark) to allow a light comparison between the TV and the back of the room, which makes the image in the television more clear and clear.\r\n\r\nQ: I want to buy a slim and flat screen TV Which is best for me plasma or LCD screens?\r\n\r\nFor better vision quality and safety of your eyes - follow these instructions:\r\n\r\nIf the room you chose to put on television has a little lighting and adores a TV picture rich in warm colors and do not use the device in the watch for long hours, I advise you plasma screens. On the contrary, I recommend you LCD screens.\r\n\r\nOne of the advantages of plasma screens is that you do not need to sit upright with the screen and the visibility continues even if you are watching TV from the corners of the screen (ie from the sides).', NULL, NULL, '2019-01-30 13:55:23', '2019-02-14 11:50:36'),
(66, 35, 'ar', 'لرؤية تلفاز صحيحة وصحية', 'لرؤية تلفاز صحيحة وصحية ... لك منى هذه النصائح', '<p dir=\"rtl\">لا يخلو بيت في المملكة من جهاز تلفاز &ndash; ولا أكون مبالغا إذا قلت ان كل غرفة في بيوتنا حتى المطبخ به جهاز تلفاز بل ونتسابق في شراء اكبر الشاشات فبعضها يصل الى 70 بوصه واحدث التقنيات فى صناعة مثل هذه الاجهزه فتجد ما يسمى بالتلفاز الرقمى ذو التعريف العالي (Digital - HDTV) فهو يتميز بصفاء رؤية عالي و آخر نحيف في السمك ليساهم في منظومة ديكور غرفة الجلوس و آخر ما يسمى<br />\r\n<br />\r\nب&quot; المسرح المنزلى&quot; وغيرها وغيرها.<br />\r\nما يزيد ارتباطنا بهذا الجهاز الفعال هو قدرتنا على مشاهدة الآلاف من الأفلام و المسلسلات و البرامج بمختلف أنواعها (الإخبارية والثقافية و الدينية ومنها من ليس له هدف أصلا غير مضيعة الوقت). ومع هذا الزخم من المواد التلفزيونية على مدارال 24 ساعة &ndash; تأتى العاب الفيديو (Video Games). وما أدراك ما العاب الفيديو ... حيث يمضى فيها أبناؤنا الصغار (وفى كثير من الأحيان الكبار) ساعات طويلة في محاولة لكسر الرقم القياسي الذي حققه صديقه او جاره او هو نفسه فى تاريخ سابق<br />\r\n<br />\r\nلكن يجب ان يكون لنا وقفه مع هذا الجهاز المهم وكيف نستفيد منه و نتجنب اضطراره. وما يلي بعض الإجابات على أسئلة وردت إلى بريدي الاليكتروني:<br />\r\n<br />\r\nس: عند شرائي جهاز تلفاز &ndash; ما هو حجم التلفاز المناسب وما هي اقل مسافة يجب ان اجلس عليها بعيدا عن التلفاز؟<br />\r\nج: حجم الغرفة التي يقبع فيها التلفاز هي التي تختار حجم التلفاز المناسب &ndash; فمثلا إذا أردت ان تشاهد التلفاز في المطبخ او غرفة النوم (حيث نكون قريبين من شاشه التلفاز) فمن الأفضل اختيار شاشات صغيره مثل 26 بوصة. لكن في غرف الجلوس (حيث المساحات تكون اكبر) يمكنك شراء شاشات اكبر .<br />\r\nفمثلا مشاهدة مبارة لكرة القدم فى تلفاز صغير و على مسافة بعيدة يجعل الأمر مملا وأيضا مرهقا للعين والعكس صحيح .&nbsp;<br />\r\n<br />\r\nوهذا الجدول من الممكن ان يساعدك في اختيار المسافة التي يوضع عندها التلفاز الرقمى ذو التعريف العالي (اما إذا كان لديك جهاز تليفزيون عادى (غير رقمى) فعليك ان تشاهده على مسافة ابعد من المذكورة في الجدول)<br />\r\n<br />\r\nمسافة المشاهدة الامنه<br />\r\nحجم شاشة التلفاز<br />\r\nمتر و ربع الى مترين<br />\r\n<br />\r\n30 بوصه<br />\r\n<br />\r\nمتر و نصف الى مترين وربع<br />\r\n<br />\r\n34 بوصة<br />\r\n<br />\r\nمتر و 75 سم الى مترين و 75 سم<br />\r\n<br />\r\n42 بوصة<br />\r\n<br />\r\nمترين الى ثلاثه امتار وربع<br />\r\n<br />\r\n50 بوصة<br />\r\n<br />\r\nمترين و ربع الى ثلاثه امتار ونصف<br />\r\n<br />\r\n56 بوصة<br />\r\n<br />\r\nمترين ونصف الى ثلاثه امتار و 75 سم<br />\r\n<br />\r\n62 بوصة<br />\r\n<br />\r\nمترين و 75 سم الى اربعة امتار<br />\r\n<br />\r\n70 بوصة<br />\r\n<br />\r\nس: ما هي النصائح الأخرى لرؤية تلفاز صحية؟<br />\r\nج: يجب ان تكون عينك على ارتفاع يوازى ارتفاع منتصف شاشه التلفاز &ndash; حيث ان الصورة تكون أوضح في منتصف شاشة التلفاز.<br />\r\nاما اضاءه الغرفة فهي عنصر أساسي &ndash; أنصحك فيها ان تجعل اضاءه الغرفة معتمه قليلا (وليست مظلمة) حتى تسمح بوجود مقارنة ضوئية بين التلفاز و خلفية الغرفة مما يجعل الصورة في التلفاز اكثر وضوحا و صفاء.<br />\r\n<br />\r\nس: أريد ان اشترى شاشة تلفاز نحيفة ومستوية ما هو الأنسب لي شاشات البلازما ام LCD؟<br />\r\n<br />\r\nلجودة رؤية أفضل وسلامة عينيك &ndash; اتبع هذه التعليمات:<br />\r\n<br />\r\nإذا كانت الغرفة التي اخترتها لتضع فيها التلفاز قليلة الإنارة وتعشق صورة تلفاز غنية بألوان دافئة و لا تستعمل الجهاز في المشاهدة لساعات طويلة فأنصحك بشاشات البلازما . اما عكس ما سلف فأنصحك بشاشات LCD.<br />\r\n<br />\r\nومن مزايا شاشات البلازما أيضا انك لا تحتاج ان تجلس على استقامة مع الشاشة فوضوح الرؤية تستمر حتى لو كنت تشاهد التلفاز من زوايا الشاشه (اى من الاطراف).<br />\r\n<br />\r\n&nbsp;</p>', NULL, NULL, '2019-01-30 13:55:23', '2019-01-30 13:55:23'),
(67, 36, 'en', 'Golden tips for computer users to maintain healthy eyes', 'Golden tips for computer users to maintain healthy eyes', 'What causes eye strain during computer use?\r\nUsually, the human is in kind about 18 times per minute, but studies indicate a half-rate decline during the use of computers and other digital devices, both for work or for entertainment as well as long-term reading, writing or other events that are closely related to \"near work\" It can also cause eye strain.\r\nWhat to do:\r\n\r\nSit 63 cm from the computer screen\r\nReduce the brightness of the screen\r\nMake a note to remind you of your eyes.\r\nLook around your eyes for a computer screen every 20 minutes for a body\r\nOther not less than 20 meters, at least 20 seconds: base \"20-20-20\".\r\nCan be used (artificial tears) when you feel dry your eyes.\r\nTake regular breaks away from your computer, trying to get enough sleep at night.\r\nThe increased eye strain includes:\r\n\r\nSleep deprivation: Do not give enough time for the eye to rest and nourish\r\nMisuse of contact lenses. If you wear contact lenses, it is important to follow the right ways to use them and care them properly - especially if you use a computer. This helps to avoid eye irritation and vision problems.\r\nGive your eyes a break: Wear your glasses!\r\nAvoid sleeping with contact lenses\r\nFollow the recommended steps to keep them clean\r\nStop wearing your contact lenses and visit your eye doctor immediately if you notice any of the following problems: red eyes, blurred vision, increased tears, increased sensitivity to light, ulceration or bloating of the eye or any abnormal discharge.', NULL, NULL, '2019-01-30 14:03:33', '2019-02-14 11:47:38'),
(68, 36, 'ar', 'نصائح ذهبية لمستخدمي الحاسب الالي للمحافظة على صحة العيون', 'نصائح ذهبية لمستخدمي الحاسب الالي للمحافظة على صحة العيون', '<p dir=\"rtl\">ما الذي يسبب إجهاد العين اثناء استخدام الحاسوب ؟<br />\r\nعادة، يرف الانسان عينية حوالي 18 مرة في الدقيقة، ولكن الدراسات تشير الى انخفاض المعدل الى النصف أثناء استخدام أجهزة الكمبيوتر وغيرها من الأجهزة الرقمية، سواء للعمل أو للتسلية كذلك القراءة لفترات طويلة، الكتابة أو غيرها من الفعاليات التي تتم عن كثب &ldquo;العمل القريب&rdquo; يمكن أيضا أن تسبب إجهاد العين.<br />\r\nما يجب عمله :</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>اجلس على بعد 63 سم عن شاشة الكمبيوتر</li>\r\n	<li>قلل شدة انارة الشاشة</li>\r\n	<li>سجل ملاحظة لتذكرك برف العينين.</li>\r\n	<li>حول نظر عينيك عن شاشة الكمبيوتر كل 20 دقيقة لجسم</li>\r\n	<li>اخر لا يقل بعده عن 20 مترا، على الأقل 20 ثانية: قاعدة الــ &ldquo;20-20-20&Prime;.</li>\r\n	<li>يمكن استخدام (الدموع الاصطناعية) عندما تشعر جفاف عينيك.</li>\r\n	<li>خذ فترات راحة منتظمة بعيدا عن عمل الكمبيوتر ، مع محاولة الحصول على قسط كاف من النوم في الليل.</li>\r\n</ul>\r\n\r\n<p dir=\"rtl\"><strong>ومما يزيد من اجهاد العين ما يلي:</strong></p>\r\n\r\n<ul>\r\n	<li dir=\"rtl\" style=\"text-align:right\">الحرمان من النوم: عدم اعطاء الوقت الكافي للعين للراحة والتغذية</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">الاستخدام الخاطئ للعدسات اللاصقة. إذا كنت ترتدي العدسات اللاصقة، فمن المهم أن تتبع الطرق الصحيحة في استخدامها ورعايتها بشكل صحيح &ndash; خاصة إذا كنت تستخدم جهاز كمبيوتر .هذا يساعد على تجنب تهيج العين،ومشاكل في الرؤية.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">أعط عينيك استراحة: ارتدي النظارات الخاصة بك!</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">تجنب النوم بالعدسات اللاصقة</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">اتباع الخطوات الموصى بها للحفاظ عليها نظيفة</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">توقف عن ارتداء العدسات اللاصقة الخاصة بك وقم بزيارة طبيب العيون على الفور إذا لاحظت أي من المشاكل التالية: احمرار العينين ،رؤيا ضبابية، زيادة الدموع، زيادة الحساسية للضوء، تقرح أو انتفاخ العين او اي افرازات غير طبيعية.</li>\r\n</ul>', NULL, NULL, '2019-01-30 14:03:33', '2019-02-14 11:47:41'),
(69, 37, 'en', 'The difference between lazik and lysik', 'The difference between lazik and lysik', 'LASIK LASIK\r\nThe corneal layers are separated by a surgical scalpel, in which the corneal layers are not cut without surgical scalpel\r\nSmall Sizes Small Sizes Poor Visibility\r\n98% 98% safe operation\r\nThe incidence of complications\r\nThe average to severe spans extends to 9 months and lasts only two months after the dry operation\r\nVery good Very good quality vision after the operation\r\n6 minutes 6 minutes\r\nNot suitable for thin cornea less than 500 microns more suitable for the thin cornea less than 500 microns corneal thickness', NULL, NULL, '2019-01-30 14:03:47', '2019-02-14 11:46:35'),
(70, 37, 'ar', 'الفرق بين اللازك والليزك', 'الفرق بين اللازك والليزك', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">الليزك</th>\r\n			<th scope=\"col\">اللازك</th>\r\n			<th scope=\"col\">&nbsp;</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">يتم فصل طبقات القرنية باستعمال المشرط الجراحي&nbsp;</td>\r\n			<td style=\"text-align:center\">لا يتم فيه قطع طبقات القرنية بدون مشرط جراحي</td>\r\n			<td style=\"text-align:center\">رفع قشرة القرنية</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">المقاسات المتوسطة</td>\r\n			<td style=\"text-align:center\">المقاسات الصغيرة</td>\r\n			<td style=\"text-align:center\">درجة ضعف الابصار</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">98%</td>\r\n			<td style=\"text-align:center\">98%</td>\r\n			<td style=\"text-align:center\">درجة امان العملية</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1%</td>\r\n			<td style=\"text-align:center\">1 %</td>\r\n			<td style=\"text-align:center\">نسبة حدوث المضاعفات</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">متوسط الى شديد يمتد الى 9 شهور</td>\r\n			<td style=\"text-align:center\">بسيط يمتد الي شهرين</td>\r\n			<td style=\"text-align:center\">الجفاف بعد العملية</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">جيد جدا</td>\r\n			<td style=\"text-align:center\">جيد جدا</td>\r\n			<td style=\"text-align:center\">جودة الرؤيا بعد العملية</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">6 دقائق</td>\r\n			<td style=\"text-align:center\">6 دقائق</td>\r\n			<td style=\"text-align:center\">مدة اجراء العملية</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">لا تصلح للقرنية النحيفة اقل من 500 ميكرون</td>\r\n			<td style=\"text-align:center\">مناسبة أكثر للقرنية النحيفة أقل من 500 ميكرون</td>\r\n			<td style=\"text-align:center\">سمك القرنية</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '2019-01-30 14:03:47', '2019-01-30 14:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `active`, `parent_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'مقالات', 'مقالات طبية', 1, NULL, NULL, NULL, '2018-12-22 11:30:03'),
(2, 'presbeond', 'تقنية البريس بيوند presbeond', 1, NULL, NULL, NULL, '2018-12-22 13:38:36'),
(3, 'مواضيع عامة', 'مواضيع عامة', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `championships`
--

CREATE TABLE `championships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `championships`
--

INSERT INTO `championships` (`id`, `name`, `image`, `years`, `created_at`, `updated_at`) VALUES
(19, 'الدورى الممتاز', '9gTZzYWY9c1522851254.png', '1963', '2018-04-04 19:14:14', '2018-04-04 19:14:14'),
(17, 'الدورى الممتاز', 'UniRXVVlCd1522851222.png', '1962', '2018-04-04 19:13:42', '2018-04-04 19:13:42'),
(16, 'كأس مصر', 'idg1K27AMn1522851179.png', '1954', '2018-04-04 19:12:59', '2018-04-04 19:12:59'),
(15, 'دوري منطقة القاهرة', 'Yphp4R8G6A1522851127.png', '1933', '2018-04-04 19:12:07', '2018-04-04 19:12:07'),
(13, 'كأس مصر', 'XeGSVkNMS41522851042.png', '1923', '2018-04-04 19:10:42', '2018-04-04 19:10:42'),
(14, 'كأس مصر', 'nKo8Yg8yYw1522851093.png', '1929', '2018-04-04 19:11:33', '2018-04-04 19:11:33'),
(20, 'كأس مصر', 'Yh93KmMieQ1522851286.png', '1965', '2018-04-04 19:14:46', '2018-04-04 19:14:46'),
(22, 'كأس مصر', '7TlG6wxKlA1522851316.png', '1967', '2018-04-04 19:15:16', '2018-04-04 19:15:16'),
(23, 'كأس مصر', '6SNn9d480A1522851353.png', '1986', '2018-04-04 19:15:53', '2018-04-04 19:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opinion` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8mb4_unicode_ci,
  `external_link` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `opinion`, `country`, `email`, `phone`, `logo`, `other`, `external_link`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'أحمد حسام', 'الحمدالله أجريت الفحوصات و العملية و تخلصت من النظارة ، المركز فخم و راقي و تعامل رائع و اجهزة حديثة \r\nشكرا جزيلا للقائمين عليه', 'جدة', NULL, NULL, '170926avatar.png', NULL, NULL, 1, NULL, 1, '2018-11-07 15:09:26', '2019-02-19 14:37:38'),
(2, 'Rasha Yasmeen Esham‎‏', 'اضافة ل احترافية دكتور بطل مع طفلتي و كيف عالج الحول تماما منها جزاه الله كل خير...و إضافة الاحترافية لجميع منسوبي المركز... اوجه شكر للدكتور براء فحام الذي استقبل طفلتي بحالة طائره رغم انتهاء دوامه و رغم ان المركز كان يهم بالاغلاق.', 'الممكلة العربية السعودية', NULL, NULL, '171338avatar.png', NULL, NULL, 1, NULL, 1, '2018-11-07 15:13:27', '2019-02-20 14:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `active`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'مصطفى محمد السيد', 'mostapha@mahacode.com', 'خدمة عظيمة', '2018-11-07 09:54:26', '2018-11-07 11:11:38'),
(3, 3, 1, 'ee', 'mostapha@mahacode.com', 'ewew', '2018-11-07 09:55:41', '2018-11-07 09:55:41'),
(4, 6, 1, 'ddd', 'mostapha@mahacode.com', 'خدمة كويسة', '2018-11-07 09:58:36', '2018-11-07 10:52:35'),
(5, 9, 0, NULL, NULL, NULL, '2018-11-07 11:51:57', '2018-11-07 11:51:57'),
(6, 37, 0, 'ali ali ali', 'moaazajjan@hotmail.com', 'Test test', '2019-02-20 14:55:40', '2019-02-20 14:55:40'),
(7, 37, 0, 'ali ali ali', 'moaazajjan@hotmail.com', 'Test test', '2019-02-20 14:55:42', '2019-02-20 14:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_from` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `contact_from`, `doctor_name`, `doctor_time`, `email`, `phone`, `address`, `message`, `created_at`, `updated_at`) VALUES
(272, 'يوسف سعيد باشا المالكي', 'online_appointment', 'د/أحمد البطل', '03/04/2019', 'aymanhameed5@gmail.com', '0504610069', NULL, 'موعد في اسرع وقت', '2019-03-03 13:53:55', '2019-03-03 13:53:55'),
(271, 'أنس عبدالله خوش حال', 'contactus', NULL, NULL, 'anaskh-123@hotmail.com', '0531182477', NULL, 'السلام عليكم \r\nأبغا استفسر عن تكلفة زراعة العدسات', '2019-03-03 04:45:53', '2019-03-03 04:45:53'),
(268, 'غنى خالد حسن الغامدي', 'contactus', NULL, NULL, 'Snupsssss@hotmail.com', '0509905590', NULL, 'كشف نظر', '2019-03-02 21:47:18', '2019-03-02 21:47:18'),
(269, 'فارس محمد العمري', 'online_appointment', 'د/أحمد البطل', '03/03/2019', 'mfl707@hotmail.com', '0560628888', NULL, 'اود حجز موعد عند دكتور احمد البطل\r\nفي الفترةوالمسائية', '2019-03-03 01:06:55', '2019-03-03 01:06:55'),
(270, 'أنسً عبدالله قاسم خوش حال', 'online_appointment', 'د/براء فحام', '03/12/2019', NULL, '0531182477', NULL, NULL, '2019-03-03 04:43:28', '2019-03-03 04:43:28'),
(235, 'ألين عبدالله عبدالرحيم الحريتي', 'contactus', NULL, NULL, 'Totor8711@gmail.com', '0559958595', NULL, NULL, '2019-02-24 12:32:58', '2019-02-24 12:32:58'),
(233, 'أريج محمد أحمد قصيري', 'contactus', NULL, NULL, 'nony3896@gmail.com', '0530999443', NULL, NULL, '2019-02-23 23:08:39', '2019-02-23 23:08:39'),
(230, 'أحمد علي أحمد علي سمكري', 'contactus', NULL, NULL, 'habboosh25@gmail.com', '0567405150', NULL, 'أرغب حجز مع دكتور احمد بطل لطفلي احمد علي سمكري يوم ٢ مارش 2019', '2019-02-23 14:21:52', '2019-02-23 14:21:52'),
(252, 'هشام خالد عبد المنعم هدهود', 'contactus', NULL, NULL, 'Nihalkhalid3009@gmail.com', '0530617948', NULL, NULL, '2019-02-25 18:54:12', '2019-02-25 18:54:12'),
(254, 'يوسف عبدالرحمن التميمي', 'contactus', NULL, NULL, 'am.181@hotmail.com', '0506661906', NULL, 'فوتت موعد سابق وارغب بالحجز', '2019-02-25 20:15:15', '2019-02-25 20:15:15'),
(250, 'ALI AYOUB', 'contactus', NULL, NULL, 'aligrcr@gmail.com', '0553138828', NULL, NULL, '2019-02-25 15:36:41', '2019-02-25 15:36:41'),
(225, 'onumoiv', 'contactus', NULL, NULL, 'oruhot@goasfer.com', '84357316332', NULL, 'http://theprettyguineapig.com/amoxicillin/ - Amoxicillin Online <a href=\"http://theprettyguineapig.com/amoxicillin/\">18</a> http://theprettyguineapig.com/amoxicillin/', '2019-02-23 09:29:49', '2019-02-23 09:29:49'),
(224, 'aqamozuci', 'contactus', NULL, NULL, 'buhilok@goasfer.com', '88468764396', NULL, 'http://theprettyguineapig.com/amoxicillin/ - Buy Amoxicillin <a href=\"http://theprettyguineapig.com/amoxicillin/\">Amoxicillin 500mg Capsules</a> http://theprettyguineapig.com/amoxicillin/', '2019-02-23 08:54:26', '2019-02-23 08:54:26'),
(246, 'مشاعل الردادي', 'contactus', NULL, NULL, 'Msraddadi@outlook.com', '0567800071', NULL, NULL, '2019-02-25 03:25:35', '2019-02-25 03:25:35'),
(248, 'د. سليمان الريمي', 'contactus', NULL, NULL, 'sulimansms@hotmail.com', '00966505700217', NULL, 'الرؤية البعيدة لدي لا مشكلها فيها, اما القراءة فاستخدم نظارة والنظر في تناقص', '2019-02-25 11:54:05', '2019-02-25 11:54:05'),
(263, 'ريفانا خالد المحب', 'contactus', NULL, NULL, 'suzan1439@hotmail.com', '0533673316', NULL, 'أرجو حجز موعد في أقرب وقت\r\nو شكرا', '2019-02-27 16:23:33', '2019-02-27 16:23:33'),
(240, 'نوف ناصر مباركي', 'contactus', NULL, NULL, 'nouf.mu@hotmail.com', '0595057987', NULL, 'ارغب بحجز موعد لإجراء كشوفات تصحيح النظر', '2019-02-24 23:24:15', '2019-02-24 23:24:15'),
(239, 'نوف ناصر مباركي', 'contactus', NULL, NULL, 'nouf.mu@hotmail.com', '0595057987', NULL, 'ارغب بحجز موعد لإجراء كشوفات تصحيح النظر', '2019-02-24 23:24:10', '2019-02-24 23:24:10'),
(237, 'ريان فريد محسن العولقي', 'contactus', NULL, NULL, 'Fafareed51@gmail.com', '0564450900', NULL, 'حجز موعد', '2019-02-24 21:48:44', '2019-02-24 21:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE `facebook` (
  `id` int(11) NOT NULL,
  `app_id` text COLLATE utf8mb4_unicode_ci,
  `app_secret` text COLLATE utf8mb4_unicode_ci,
  `access_token` text COLLATE utf8mb4_unicode_ci,
  `from_date` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` (`id`, `app_id`, `app_secret`, `access_token`, `from_date`, `updated_at`) VALUES
(1, '738657659836239', '84154b29576e102f0d1f789e9a1a5042', 'EAAKfziNs108BAHK4wZCTyvjXsKmeWgk3TFQCGqfoj7j2tJ4aY9NJcZCrXRZBBvTYPqeZAkUpLtwDNpszTsIDRcUCSYEml4QhXeF5rYuMVWlOEg1KD55IZAlPpWYSzkfSB8klebxPL47LuMfMnXEtKHBiSre4tRobGmyJ6eUCBizEnBRwnnZAGWQe6UWKiApPiHyh2NC1WiJwZDZD', '2019-02-13', '2019-03-02 15:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `year`, `content`, `created_at`, `updated_at`) VALUES
(1, 0, '<p>تأسس النادي في عام 1921 كواحد من أوائل النوادي الرياضيه في مصر ليبدأ نشاطه في كرة القدم في نفس الموسم، ويحصل النادي علي أول بطوله في تاريخه عندما فاز ببطولة كأس مصر 1923 ليصبح ثاني نادي مصري يفوز بتلك الكأس بعد الزمالك .وكرر الترسانه إنجازه مره أخري بعد مرور 6 سنوات بعد فوزه بالكأس للمره الثانيه في العام 1929 ومن ثم بدأ النادي في الاشتراك ببطولة الدوري الممتاز منذ نشاته عام 1948 وحصل الترسانه علي المركز الثاني وراء الأهلي بعد منافسه ثنائيه بينهما وفاز الفريق مره اخري ببطولة كأس مصر عام 1954 ليحقق الثلاثيه ببطولة كأس مصر الجيل الذهبي كان الفريق دائما في قلب المنافسه علي البطوله وكان دائما في المربع الذهبي وأحيانا في المركز الثاني والثالث حتي تحقق حلمه وحقق الإنجاز بالفوز بأول بطولة دوري في تاريخه موسم 1962/1963 بقيادة هداف الفريق ونجمه الأول حسن الشاذلي ومصطفي رياض ومحمد رياض وبدوي عبد الفتاح</p>\r\n\r\n<p>فاز الترسانة بكأس مصر 6 مرات أعوام (1923-1929-1954-1965-1967-1986) ، بينما وصل للنهائي 5 مرات أعوام (1938-1950-1956-1966) لكنه لم يحالفه الحظ في الفوز بها .. وارتبط نادي الترسانة بالفوز في النهائي على أندية الزمالك والمصري بنتيجة (4-1) في نهائي كأس مصر وهي تعد أكبر نتيجة للترسانة في مشاركته في نهائي كأس مصر .. بينما تعد نتيجة مع النادي الاهلى في نهائي كأس مصر عام 1950 بالهزيمة (6-صفر) هي أكبر هزيمة في مشاركته في كأس مصر ، بينما كان أكبر فوز أحرزه نادي الترسانة على النادي الاهلى كان موسم 1953-1954 وكانت بنتيجة ثقيلة (6-2) ، وأيضاً في موسم 60-61 كرر نادي الترسانة فوزه على النادي الاهلى بنتيجة (5-1) ، أى أن نادي الترسانة كان بعبع الاهلى والزمالك في الخمسينيات والستينيات.</p>\r\n\r\n<p>كثيراً ما ينبذ لنا نادي الترسانة لاعبين فذاذ ، كما خرج لنا من قبل الاسطورتين حسن الشاذلي ومصطفى رياض فالان يخرج لنا بلاعبين هما الابرز وهم من الجيل الحالي فقد خرج علينا نادي الترسانة بلاعب خط وسط برز كثيراً في صفوفه وهو محمد عبدالواحد لاعب الترسانة والزمالك السابقين والاسماعيلي الحالي فقد لمع كثيراً ضمن صفوفه إلى أن اتجه إلى اللعب لنادي الزمالك في صفقه رائعة لنادي الزمالك ثم بعدها اتجه للنادي الاسماعيلي وهو يلمع بين صفوفه حتى الان، ثم نتجه الان بلاعب تألق كثيراً وصال وجال في ملاعبنا المصرية رغم صغر سنه وهو من اللاعبين الذين لن ولم تنساهم الجماهير المصرية أبدا فهو لاعب ذو خلق عالي ومتدين ومخلص لفانلة نادي .. فهو النجم محمد أبو تريكه الذي انتقل بموجبه للنادي الاهلى بينما كان على اعتاب الانتقال لنادي الزمالك .. لكن يستطيع النادي الاهلى للحصول على خدماته .. فتألق بين صفوفه وأحرز بطولات كبيرة وكثيرة مع النادي الاهلى بل وصعد لكأس العالم للأندية والتي أقيمت في اليابان وهو ضمن صفوفه وأحرز هداف الدوري المصري العام الماضي .. وأيضاً كان صاحب الضربة الاخيرة وضربة الفوز بكأس الأمم الأفريقية لعام 2006 مع المنتخب الوطني .</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2018-04-10 14:46:06'),
(2, 2001, 'تأسس النادي في عام 1921 كواحد من أوائل النوادي الرياضيه في مصر ليبدأ نشاطه في كرة القدم في نفس الموسم، ويحصل النادي علي أول بطوله في تاريخه عندما فاز ببطولة كأس مصر 1923 ليصبح ثاني نادي مصري يفوز بتلك الكأس بعد الزمالك .وكرر الترسانه إنجازه مره أخري بعد مرور 6 سنوات بعد فوزه بالكأس للمره الثانيه في العام 1929 ومن ثم بدأ النادي في الاشتراك ببطولة الدوري الممتاز منذ نشاته عام 1948 وحصل الترسانه علي المركز الثاني وراء الأهلي بعد منافسه ثنائيه بينهما وفاز الفريق مره اخري ببطولة كأس مصر عام 1954 ليحقق الثلاثيه ببطولة كأس مصر الجيل الذهبي كان الفريق دائما في قلب المنافسه علي البطوله وكان دائما في المربع الذهبي وأحيانا في المركز الثاني والثالث حتي تحقق حلمه وحقق الإنجاز بالفوز بأول بطولة دوري في تاريخه موسم 1962/1963 بقيادة هداف الفريق ونجمه الأول حسن الشاذلي ومصطفي رياض ومحمد رياض وبدوي عبد الفتاح', '2018-04-08 13:45:07', '2018-04-10 14:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `album_title`, `images`, `created_at`, `updated_at`) VALUES
(3, 'صوره 1', 'hRh4C3PlVA1541428002.png;NbfswZbDGO1541428002.png;xp7jjwFdEP1541427941.png;ILccx5PenS1541427916.png;ztAz1NuYum1541427698.png', '2018-11-05 20:21:38', '2018-11-11 21:39:16'),
(7, 'دكتور بطل وعملية البريس بيوند', 'U8jxmedi4Q1543736400.JPG;O5dlos771F1543736191.JPG;Fs6YMTSivn1543664985.JPG', '2018-12-01 11:49:46', '2018-12-02 07:40:02'),
(8, 'dr batal', 'fRlcmCP2hZ1543744293.JPG', '2018-12-02 09:51:35', '2018-12-02 09:51:35'),
(9, 'dr batal', 'U6CbOnNciQ1543744817.JPG', '2018-12-02 10:00:18', '2018-12-02 10:00:18'),
(13, 'صور', 'Yu5W3uIufQ1547625215.png;FcpXYmM86W1547625215.png', '2019-01-16 07:53:35', '2019-01-16 07:53:35'),
(11, 'dr batal', 'k3n8PmNIIL1543745222.JPG', '2018-12-02 10:07:03', '2018-12-02 10:07:03'),
(12, 'أصدقاء المجمع', 'H10sZScfTM1547472138.jpg;h1HLWRcyNY1547472071.jpg;578tiXSTqm1547472071.jpg;vDf1fJt38k1547472071.jpg;VqRaJhBANT1547472071.jpg;1a9Bn7pqDB1547472071.jpg;fbG2pUUH5d1547472071.jpg;zCtsDhtFiX1547472033.jpg;ARnefpTVr31547472033.jpg;UmMC1mHygq1547472033.jpg;NZ9dVbg9311547472033.jpg;QBi0EoQG7z1547471790.jpg;RjN4ull2Un1547471790.jpg;wYArxhmmTl1547471790.jpg;4nc13JFRcE1547471790.jpg;TnDo61oyco1547471735.jpg;1rBGndF50N1547471735.jpg;jxMeQa8NP01547471735.jpg;7CeWbyLrRv1547471735.jpg;NqTEF4gTYr1547471612.jpg;YBoj3GFlyB1547471612.jpg;Dk5UoPWfeH1547471612.jpg;iXCXfseSm81547471612.jpg;IQuwbsNgIo1547471411.jpg;SrL70wLnIE1547471411.jpg;PbK12zObRR1547471411.jpg;HhqwAt5MDg1547471411.jpg;AN7HuVVSS31547471311.jpg;CvbKeC736P1547471311.jpg;UK8Ibskynh1547471311.jpg;gQ6ywkBTsU1547471252.jpg;ZD8tf39pcm1547471252.jpg;b17EIRtYl81547471252.jpg;mhv4jFtAR91547471252.jpg;AgGQwsaEAY1547471174.jpg;fx9Yj5RZia1547471174.jpg;djFFFTu9nu1547471174.jpg;NnE7Meuj3V1547471174.jpg;B8x0CD2erA1547470999.jpg;uqJJhgvKcf1547470999.jpg;tk6F4Qbuwm1547470999.jpg;h0unLHqvCg1547470999.jpg;7NsHNU7aef1547470754.jpg;9nDxPaG4BS1547470754.jpg;g5uWqI09ng1547470754.jpg;KBsziJ3c4R1547470754.jpg;xXc95ztOk61547470526.jpg;jWHoR7RWrQ1547470526.jpg;90UoWiqgte1547470526.jpg;mjDYewOg9A1547470526.jpg;1ScPOYZD4D1547470420.jpg;4XMnIBCQeG1547470420.jpg;elTiZFqYf91547470420.jpg;S8bINUxCQO1547470420.jpg;GfQPwW06Aj1547467836.jpg;ZUXRcUgv331547467836.jpg;ab1uD7IvyQ1547467836.jpg;PfLPto5xuH1547467836.jpg;ZTYrn9QOep1547467836.jpg;X9CQEEElFC1547467836.jpg;d8Gb7ANdyo1547467836.jpg;p8Cqgvtw5H1547467836.jpg;k33MlGZAo31547467836.jpg;DjBbrDaPAw1547467836.jpg;16QvJ45U401547467836.jpg;kA6pZg86qH1547467836.jpg;tjofWxAnjG1547467836.jpg;pzN3JTXbdR1547467836.jpg;9rOPAv0cMc1547467836.jpg;u0kFqumTP41547467836.jpg;zk1LdE7zle1547467836.jpg;T4bW3EHvQG1547467836.jpg;5rkfFMmxVA1547467836.jpg;L2dx5CtzUe1547467836.jpg;', '2019-01-01 09:53:54', '2019-01-14 13:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_accesstoken`
--

CREATE TABLE `instagram_accesstoken` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accesstoken` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagram_accesstoken`
--

INSERT INTO `instagram_accesstoken` (`id`, `client_id`, `link`, `accesstoken`, `created_at`, `updated_at`) VALUES
(2, '249e572acb7f491aab2d783ecd90c1c1', 'https://oceanwp.org/instagram/', '7700067142.249e572.57d30d40e6954798ac302b8ca25b00f8', NULL, '2019-02-16 12:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'top manager', NULL, NULL),
(2, 'manager', NULL, NULL),
(3, 'employee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `joinus`
--

CREATE TABLE `joinus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joinus`
--

INSERT INTO `joinus` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, NULL, NULL, '2019-01-19 10:09:02', '2019-01-19 10:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `joinus_translation`
--

CREATE TABLE `joinus_translation` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joinus_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joinus_translation`
--

INSERT INTO `joinus_translation` (`id`, `title`, `description`, `locale`, `joinus_id`, `created_at`, `updated_at`) VALUES
(9, 'Join Us', 'Dr. Batal Eye & Laser Center is a specialized ophthalmology institute for treatment of different eye diseases. Located at Jeddah, Kingdom of Saudi Arabia, the center has a medical team that includes specialists and consultants in all fields of Ophthalmology. Leaded and supervised by Dr. Ahmad Hassan Batal who is a renowned doctor and consultant in Ophthalmology and Strabismus in children, the center was founded on 2010 in the coastal city of Jeddah, Bride of the Red Sea and the second largest city in the Kingdom. Integrated medical care is offered as a sub-specialized center.', 'en', 5, '2019-01-19 10:09:02', '2019-01-19 10:09:02'),
(10, 'انضم الينا', 'مجمع بطل التخصصي فى جدة بالمملكة العربية السعودية - هو مجمع استشاري متخصص يضم عيادات استشارية باشراف الدكتور أحمد حسان بطل الطبيب المعروف والاستشاري في طب وجراحة عيون الاطفال والحول وزميل الكلية الملكية البريطانية للجراحين وخبرته فى طب العيون وجراحتها تمتد منذ عام 1997م .', 'ar', 5, '2019-01-19 10:09:02', '2019-01-30 11:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `landing`
--

CREATE TABLE `landing` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing`
--

INSERT INTO `landing` (`id`, `name`, `short_description`, `long_description`, `image`, `created_at`, `updated_at`) VALUES
(13, NULL, NULL, NULL, '083258DV_S1440.JPG', '2018-11-02 22:25:02', '2018-12-02 08:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `landing_translation`
--

CREATE TABLE `landing_translation` (
  `id` int(11) NOT NULL,
  `landing_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_translation`
--

INSERT INTO `landing_translation` (`id`, `landing_id`, `locale`, `name`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(25, 13, 'en', 'presbyond', 'The world\'s most advanced vision correction, double vision and over-eye treatment for people over 40 years of age', '<pre>\r\npresbyond\r\nThe world&#39;s most advanced vision correction, double vision and over-eye treatment for people over 40 years of age, increases visibility and gives the ability to see the eyes between distance, proximity and distance without any interference and with complete patient comfort.\r\n\r\nThis technique is available only in the specialist champion complex in the whole Arab world\r\n\r\nThe advantages of Brewing technology\r\nEnsuring that glasses are removed for life.\r\nWithout pain during and after the operation</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:25:02', '2018-12-02 08:33:00'),
(26, 13, 'ar', 'البريس بيوند PRESBYOND', 'أحدث تقنية عالمية لتصحيح النظر وعلاج ضعف النظر وطول النظر لمن فوق ال 40 عام فقط', '<p dir=\"RTL\">&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><strong>تقنية تصحيح الرؤية للقرب للمرضي فوق 40 سنة</strong></p>\r\n\r\n<p dir=\"RTL\">ظهر في السنوات الأخيرة اهتمام كبير بالتصحيح الجراحي والليزري لحالات قصور النظر والذي يحدث فيه ضعف في الرؤية للأشياء القريبة مثل قراءة الكتاب او الجوال لمن هم فوق سن ال40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nوتعددت الطرق العلاجية لكن دون الوصول لنتائج مرضية الي ان ظهرت تقنية مبتكرة لتصحيح النظر للبعد والقرب وكل المسافات وكان تقبل المرضي لها رائعا والنتائج مبهرة حتي ان اهم الأطباء الذين يجرون هذا النوع من العمليات قاموا بإجرائها علي انفسهم لشدة اقتناعهم بهذه التقنية ولما راوه من نتائج رائعة &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nتدعي هذه التقنية بريس بيوند&nbsp;( PRESBYOND ) &nbsp;من شركة ZEISS الرائد في تقنيات تصحيح النظر , والتي تعمل علي اجراء تصحيح بصري يعمل علي زيادة عمق الرؤية (عمق حقل الرؤية ) عن طريق احداث زوغان كروي في العينين ضمن حدود مقبولة وإجراء &nbsp;micromonovision بمقدار لا يتجاوز 1.5 ديوبتر مما يعطي القدرة علي رؤية مشتركة بين العينين للبعد والقرب والمسافة بينهما دون حدوث اي تشويش ومع راحة تامة للمريض .&nbsp;</p>\r\n\r\n<p dir=\"RTL\"><br />\r\n<strong>البريس بيوند&nbsp;</strong><br />\r\nأحدث تقنية عالمية لتصحيح النظر وعلاج ضعف النظر وطول النظر لمن فوق ال 40 عام فقط وتعمل على زيادة عُمق الرؤية وتُعطى القدرة على رؤية مشتركة بين العينين للبعد والقرب والمسافة بينهما دون حدوث اي تشويش ومع راحة تامة للمريض .</p>\r\n\r\n<p dir=\"RTL\">هذه التقنية متوفرة فقط في مجمع بطل التخصصي في كل الوطن العربي&nbsp;<br />\r\n<br />\r\n<strong>مميزات تقنية البريس بيوند&nbsp;</strong><br />\r\nضمان التخلي عن النظارة مدى الحياة.<br />\r\nبدون ألم أثناء وبعد العملية</p>', '2018-11-02 22:25:02', '2019-01-23 10:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Arabic', 'ar', NULL, NULL),
(2, 'English', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `link_section_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `link_section_id`, `title`, `route`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', 'getFrontHome', 1, NULL, NULL, NULL),
(2, 1, 'aboutus', 'getAboutusPage', 1, NULL, NULL, '2018-11-03 07:40:45'),
(3, 1, 'doctors', 'getFrontPersons', 1, NULL, NULL, '2018-11-04 08:57:27'),
(4, 1, 'Gallary', 'getFrontGallary', 1, NULL, NULL, '2018-11-02 22:37:22'),
(5, 1, 'equipments', 'getFrontEquipments', 1, NULL, NULL, '2018-11-02 22:38:14'),
(6, 1, 'technologies', 'getFrontTechnologies', 1, NULL, NULL, '2018-11-02 22:39:09'),
(7, 2, 'blogs', 'getFrontBlog', 1, NULL, '2018-05-07 18:02:32', '2018-11-04 12:22:50'),
(8, 1, 'contactus', 'getFrontContactus', 1, NULL, '2018-11-07 07:35:44', '2018-11-07 07:35:50'),
(15, 1, NULL, 'getjoinusPage', 1, NULL, '2019-01-30 10:42:26', '2019-01-30 10:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `links_translation`
--

CREATE TABLE `links_translation` (
  `id` int(11) NOT NULL,
  `link_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `links_translation`
--

INSERT INTO `links_translation` (`id`, `link_id`, `locale`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'الرئيسية', '2018-11-03 09:25:04', NULL),
(2, 1, 'en', 'home', '2018-11-03 09:25:04', NULL),
(3, 2, 'ar', 'من نحن', '2018-11-03 09:25:58', NULL),
(4, 2, 'en', 'About Us', '2018-11-03 09:25:58', NULL),
(5, 3, 'ar', 'فريقنا الطبي', '2018-11-03 09:27:03', '2019-02-03 09:56:28'),
(6, 3, 'en', 'Our Medical Team', '2018-11-03 09:27:03', '2019-02-03 10:33:53'),
(7, 4, 'ar', 'معرض الوسائط', '2018-11-03 09:27:54', NULL),
(8, 4, 'en', 'Gallary', '2018-11-03 09:27:54', NULL),
(9, 5, 'ar', 'الاجهزة الطبية', '2018-11-03 09:28:49', '2019-01-31 12:56:15'),
(10, 5, 'en', 'equipments', '2018-11-03 09:28:49', NULL),
(11, 6, 'ar', 'أحدث التقنيات', '2018-11-03 09:30:23', '2018-12-12 11:09:43'),
(12, 6, 'en', 'Technologies', '2018-11-03 09:30:23', NULL),
(13, 8, 'ar', 'إتصل بنا', '2018-11-03 09:31:28', NULL),
(14, 8, 'en', 'Contact Us', '2018-11-03 09:31:28', NULL),
(15, 7, 'en', 'news', '2018-11-07 07:35:44', '2018-11-07 07:35:44'),
(16, 7, 'ar', 'الأخبار', '2018-11-07 07:35:44', '2018-11-07 07:35:44'),
(17, 15, 'en', 'Join Us', '2019-01-30 10:42:26', '2019-01-30 10:42:26'),
(18, 15, 'ar', 'انضم الينا', '2019-01-30 10:42:26', '2019-01-30 10:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `link_sections`
--

CREATE TABLE `link_sections` (
  `link_section_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link_sections`
--

INSERT INTO `link_sections` (`link_section_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'navbar', NULL, NULL),
(2, 'footer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `opposing_team` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `championship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stadium` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `opposing_team`, `logo`, `championship`, `stadium`, `date`, `time`, `result`, `created_at`, `updated_at`) VALUES
(1, 'الاهلى', 'CFhLNjnbln1522748741.png', 'دورى', 'ستاد القاهره', '2018-02-23', '14:00:00', '0', '2018-04-03 14:45:41', '2018-04-04 19:27:38'),
(2, 'الزمالك', 'JPkoLlOGAD1523352910.jpg', 'الدورى الممتاز', 'القاهره', '2018-12-04', '14:00:00', '0-0', '2018-04-04 16:12:30', '2018-04-10 14:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_08_08_112606_create_user_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2017_08_08_225052_create_sidebar_items_table', 6),
(34, '2017_08_08_224302_create_sidebar_menuses_table', 6),
(6, '2017_08_12_211705_create_pages_table', 1),
(7, '2017_08_13_130548_create_service_sections_table', 1),
(8, '2017_08_13_130903_create_services_table', 1),
(9, '2017_08_14_213550_create_clients_table', 1),
(10, '2017_08_18_155345_create_trackers_table', 1),
(11, '2017_08_19_224958_create_categories_table', 1),
(12, '2017_08_19_225040_create_posts_table', 1),
(13, '2017_08_31_131050_create_sliders_table', 1),
(14, '2017_08_31_151258_create_link_sections_table', 1),
(15, '2017_08_31_151258_create_links_table', 1),
(16, '2017_09_08_195917_create_contacts_table', 1),
(31, '2017_09_15_192328_create_settings_table', 4),
(30, '2018_02_06_091604_create_ads__positions_table', 3),
(19, '2018_03_05_140819_create_ads_table', 1),
(20, '2018_03_14_130405_create_images_table', 1),
(29, '2018_03_14_130405_create_videos_table', 2),
(22, '2018_03_14_131133_create_history_table', 1),
(23, '2018_03_14_132124_create_comments_table', 1),
(24, '2018_03_17_111749_jobs', 1),
(25, '2018_03_17_114413_persons', 1),
(26, '2018_03_18_120006_sponsors', 1),
(27, '2018_03_18_124227_championships', 1),
(28, '2018_03_26_140906_matches', 1),
(32, '2018_04_15_110338_create_tags_table', 5),
(33, '2018_04_15_110606_create_tag_post_table', 5),
(36, '2018_05_14_091334_create_ticket_table', 7),
(37, '2018_05_14_132653_create-subscription-table', 7),
(38, '2018_05_15_094207_add_whatsap_to_setting_table', 8),
(39, '2018_06_02_101518_add_youtube_to_setting_table', 9),
(40, '2018_06_02_121830_add_youtube_to_setting_table', 10),
(41, '2018_06_04_143654_add_permission_to_users_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_type`, `external_link`, `title`, `description`, `image`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'من نحن', NULL, '184347image-1.png', 1, NULL, NULL, '2018-11-02 16:43:47'),
(2, 'feature', 'getFrontPersons', NULL, NULL, '011219gallery-4.png', 1, 1, '2018-11-01 22:35:14', '2019-01-30 09:53:42'),
(3, 'feature', 'getFrontTechnologies', NULL, NULL, '011251gallery-2.png', NULL, 1, '2018-11-01 22:35:40', '2019-01-30 09:54:05'),
(4, 'feature', 'getFrontEquipments', 'سليدر', NULL, '011315gallery-3.png', 1, 1, '2018-10-29 21:44:01', '2019-01-30 09:54:29'),
(5, 'feature', 'getFrontContactus', NULL, NULL, '011325gallery-5.png', NULL, 1, '2018-11-01 22:32:37', '2019-01-30 09:54:52'),
(11, 'expertise', NULL, NULL, NULL, '095109icon-4.png', 1, 1, '2018-11-05 07:48:50', '2018-11-05 07:51:09'),
(12, 'expertise', NULL, NULL, NULL, '094948icon-3.png', 1, 1, '2018-11-05 07:49:48', '2018-11-05 07:49:48'),
(13, 'expertise', NULL, NULL, NULL, '095152icon-2.png', 1, 1, '2018-11-05 07:51:52', '2018-11-05 07:51:52'),
(14, 'expertise', NULL, NULL, NULL, '095237icon-1.png', 1, 1, '2018-11-05 07:52:37', '2018-11-05 07:52:37'),
(15, NULL, NULL, NULL, NULL, '1111581306132.png', 1, 1, '2018-12-09 11:11:58', '2018-12-09 11:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translation`
--

CREATE TABLE `pages_translation` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `mission` text COLLATE utf8_unicode_ci,
  `vision` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_translation`
--

INSERT INTO `pages_translation` (`id`, `page_id`, `locale`, `title`, `short_description`, `long_description`, `mission`, `vision`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'مجمع بطل التخصصى', 'مجمع بطل التخصصي فى جدة بالمملكة العربية السعودية - هو مجمع استشاري متخصص يضم عيادات استشارية باشراف الدكتور أحمد حسان بطل الطبيب المعروف والاستشاري في طب وجراحة عيون الاطفال والحول وزميل الكلية الملكية البريطانية للجراحين وخبرته فى طب العيون وجراحتها تمتد منذ عام 1997م .\r\nوقد تأسس المجمع في مدينة جدة عام  2010 م . \r\n نقدم في مجمع بطل التخصصى  رعاية طبية متكاملة للعناية بالعين ومعالجة الأمراض التي تصيبها. حيث يقوم الأطباء والاستشاريون العاملون في هذه المجمع بتقديم خدمات تشخيصية وعلاجية متكاملة للبالغين والأطفال في كل الاختصاصات الدقيقة في مجال طب وأمراض العيون مثل علاج الماء الأبيض والأزرق وعلاج الحول، وتصحيح انكسار البصر وعلاج أمراض الشبكية والقرنية والجراحة التجميلية للاجفان وقد تم تزويد العيادة بالأجهزة والمعدات الطبية وفقاً لأرقى المعايير العالمية. ', '<p dir=\"rtl\">مجمع بطل التخصصي فى جدة بالمملكة العربية السعودية - هو مجمع استشاري متخصص يضم عيادات استشارية باشراف الدكتور أحمد حسان بطل الطبيب المعروف والاستشاري في طب وجراحة عيون الاطفال والحول وزميل الكلية الملكية البريطانية للجراحين وخبرته فى طب العيون وجراحتها تمتد منذ عام 1997م&nbsp;.<br />\r\nوقد تأسس المجمع&nbsp;في مدينة جدة عام&nbsp; 2010 م .<br />\r\n&nbsp;نقدم في مجمع بطل التخصصى&nbsp;&nbsp;رعاية طبية متكاملة للعناية بالعين ومعالجة الأمراض التي تصيبها. حيث يقوم الأطباء والاستشاريون العاملون في هذه المجمع بتقديم خدمات تشخيصية وعلاجية متكاملة للبالغين والأطفال في كل الاختصاصات الدقيقة في مجال طب وأمراض العيون مثل علاج الماء الأبيض والأزرق وعلاج الحول، وتصحيح انكسار البصر وعلاج أمراض الشبكية والقرنية والجراحة التجميلية للاجفان وقد تم تزويد العيادة بالأجهزة والمعدات الطبية وفقاً لأرقى المعايير العالمية.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#3498db\"><strong>تخصصاتنا</strong><br />\r\n<strong>فى مجمع بطل التخصصى&nbsp;&nbsp;:</strong></span></p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>علاج وجراحة الحول وعيون الاطفال</li>\r\n	<li>إعلاج امراض الشبكية&nbsp;ومتابعةَ الإعتلال الشبكي السكري</li>\r\n	<li>جراحة الشبكية والجسم الزجاجى</li>\r\n	<li>جراحة<strong>&nbsp;</strong>المياه البيضاء والزرقاء.</li>\r\n	<li>جراحة القرنية المخروطية وتصحيح الابصار بأحدث التقنيات.</li>\r\n	<li>جراحة الاجفان ومركز الدمع.</li>\r\n	<li>علاج وجراحة الحول وعيون الاطفال.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n	<br />\r\n	<span style=\"color:#3498db\"><strong>خدماتنا&nbsp;</strong><br />\r\n	<strong>فى مجمع بطل التخصصى&nbsp;&nbsp;:</strong></span><br />\r\n	&nbsp;</li>\r\n	<li>عيادات عينية تخصصية.</li>\r\n	<li>وحدة تشخيصية متكاملة للعيون.</li>\r\n	<li>جراحات العين التخصصية.</li>\r\n	<li>أحدث أجهزة تصحيح البصر بالليزر.</li>\r\n	<li>أجهزة حديثة ومتكاملة لعلاج أمراض وجراحة الشبكية .</li>\r\n	<li>خدمات العدسات اللاصقة.</li>\r\n	<li>التصوير بالامواج فوق الصوتية.</li>\r\n	<li>التخطيط الكهربائي للشبكية والعصب البصري.</li>\r\n	<li>معرض نظارات طبية وشمسية حديثة&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n	<br />\r\n	<span style=\"color:#3498db\"><strong>مركز جراحة اليوم الواحد&nbsp;</strong></span><br />\r\n	<span style=\"color:#3498db\"><strong>فى مجمع بطل التخصصى&nbsp;&nbsp;:</strong></span><br />\r\n	<br />\r\n	نفتخر بأفتتاح مركز جراحة اليوم الواحد وهو المركز الفريد من حيث التصميم والفخامة والتجهيزات الفنية والطبية.<br />\r\n	&nbsp;يحوى 14 غرفه (سرير) خصصت لاستراحة المرضى بعد العمليات ، كل غرفة مجهزه تجهيز فندقى راقى يشمل الاسرة،ودرة مياه،خزانة ملابس وبالاضافة الى مقاعد مريحه للمرافقين كما يحوى غرفة عناية مركزة.</li>\r\n</ul>', 'ملتزمون بتقديم خدمات طبية رفيعة المستوى لمرضانا في مجال أمراض العين وجراحاتها من خلال فريق طبي يؤمن برسالته في ربط البحث العلمي القائم على الدليل مع دوره في تلبية الإحتياجات الصحية للمجتمع.', 'أن تكون لنا الريادة والصدارة في مجال أمراض العين وجراحاتها في المملكة العربية السعودية ودول الخليج من خلال تقديم أعلى مستويات الخدمة الطبية المبنية على اسس البحث العلمي الحديث.', '2018-10-30 06:21:00', '2019-01-28 12:23:53'),
(2, 1, 'en', 'Batal Specialist Center', 'Batal Specialist Center is a specialized ophthalmology institute for treatment of different eye diseases. Located at Jeddah, Kingdom of Saudi Arabia, the center has a medical team that includes specialists and consultants in all fields of Ophthalmology. Leaded and supervised by Dr. Ahmad Hassan Batal who is a renowned doctor and consultant in Ophthalmology and Strabismus in children, the center was founded on 2010 in the coastal city of Jeddah, Bride of the Red Sea and the second largest city in the Kingdom.', '<p>Batal Specialist Center is a specialized ophthalmology institute for treatment of different eye diseases. Located at Jeddah, Kingdom of Saudi Arabia, the center has a medical team that includes specialists and consultants in all fields of Ophthalmology. Leaded and supervised by Dr. Ahmad Hassan Batal who is a renowned doctor and consultant in Ophthalmology and Strabismus in children, the center was founded on 2010 in the coastal city of Jeddah, Bride of the Red Sea and the second largest city in the Kingdom. Integrated medical care is offered as a sub-specialized center.</p>\r\n\r\n<p>Our center provides sophisticated diagnostic and therapeutic services for all age groups (adults and children) in the field of eye diseases such as Cataract, Glaucoma, treatment of strabismus, visual correction for refractive errors, and treatment of diseases of retina and cornea. patient care is being rendered in the center with the use of medical equipment that meet the highest international standards.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#3498db\">Our specialties<br />\r\nIn Batal Specialist Center:</span></p>\r\n\r\n<ul>\r\n	<li>Treatment and surgery of strabismus and children&#39;s eyes</li>\r\n	<li>Treatment of retinal diseases and follow-up of diabetic retinopathy</li>\r\n	<li>Retinal and vitreous surgery</li>\r\n	<li>White and blue water surgery.</li>\r\n	<li>Corneal surgery and correction of vision with the latest technologies.</li>\r\n	<li>Eyelid surgery and the center of tears.</li>\r\n	<li>Treatment and surgery of strabismus and children&#39;s eyes.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<span style=\"color:#3498db\">Our Services</span></p>\r\n\r\n<p><span style=\"color:#3498db\">In Batal Specialist Center:</span></p>\r\n\r\n<ul>\r\n	<li>Specialized eye clinics.</li>\r\n	<li>Integrated diagnostic unit for the eyes.</li>\r\n	<li>Specialized eye surgery.</li>\r\n	<li>The latest laser sight correction devices.</li>\r\n	<li>Modern and integrated devices for the treatment of diseases and retinal surgery.</li>\r\n	<li>Services of contact lenses.</li>\r\n	<li>Ultrasound imaging.</li>\r\n	<li>Electrophysiological planning of retina and optic nerve.</li>\r\n	<li>A modern medical and sun glasses exhibition.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#3498db\">Day Surgery Center</span></p>\r\n\r\n<p><span style=\"color:#3498db\">In Batal Specialist Center:</span></p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p>We are proud to open the one-day surgery center, which is unique in terms of design, luxury and technical and medical equipment.<br />\r\n&nbsp;It has 14 rooms (beds) reserved for patients&#39; rest after operations. Each room is equipped with an elegant hotel which includes beds, water closet, wardrobe and comfortable seats for the accompanying room as well as a concentrated care room.</p>', 'our new missionWe are committed to providing high quality medical services to our patients in the field of eye diseases and surgeries through a medical team that believes in its mission in linking the scientific research based on the guide with its role in meeting the health needs of the community.', 'our new vissionTo be the leader and pioneer in the field of eye diseases and surgeries in Saudi Arabia and the Gulf countries by providing the highest levels of medical service based on the basis of modern scientific research.', '2018-10-30 06:36:19', '2019-02-18 15:49:37'),
(3, 2, 'ar', 'فريق عمل رائع', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', '<p>نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع&nbsp;من خلال كفاءات بشرية وأجهزة طبية متطورة تتسم بطابع التجدد المستمر لتواكب أحدث ما وصلت إليه التقنيات الحديثة في مجال طب العيون وجراحتها. يعتمد المجمع وبالدرجة الأولى إستراتيجية تقديم الخدمات النوعية من خلال الطاقم الطبي والمؤلف من كوكبة من الاستشاريين والجراحيين في المجالات المختلفة للبصريات وجراحاتها والعدسات الصلبة واللاصقة لتتلاقى الخبرات النوعية مع التقنيات الحديثة، حرصاً منا على تقديم أرقى الخدمات الصحية لزوارنا ضمن اطار تخصننا به ألا وهو طب وجراحة العيون.</p>', NULL, NULL, '2018-10-30 06:36:19', '2019-01-28 11:21:21'),
(4, 2, 'en', 'Great Staff', 'We welcome you to Batal Specialist Center  through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.', '<p>We welcome you to Batal Specialist Center &nbsp;through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.</p>', NULL, NULL, '2018-10-30 21:51:47', '2019-02-18 16:08:22'),
(5, 3, 'en', 'Affordable', 'We welcome you to Batal Specialist Center  through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.', '<p>We welcome you to Batal Specialist Center &nbsp;through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.</p>', NULL, NULL, '2018-11-01 22:32:37', '2019-02-18 16:09:53'),
(6, 3, 'ar', 'افضل قيمة', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', '<p>Affordable</p>', NULL, NULL, '2018-11-01 22:32:37', '2019-01-28 11:21:43'),
(7, 4, 'en', 'Great Facilities', 'We welcome you to Batal Specialist Center  through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.', '<p>We welcome you to Batal Specialist Center &nbsp;through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.</p>', NULL, NULL, '2018-11-01 22:35:14', '2019-02-18 16:10:11'),
(8, 4, 'ar', 'تجهيزات رائعة', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', '<p>Great Facilities</p>', NULL, NULL, '2018-11-01 22:35:14', '2019-01-28 11:21:59'),
(9, 5, 'en', 'Consult Us', 'We welcome you to Batal Specialist Center  through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.', '<p>We welcome you to Batal Specialist Center &nbsp;through a qualified and distinguished medical staff who have been trained in a special care and style to provide advanced and satisfactory services to the pioneers of the complex.</p>', NULL, NULL, '2018-11-01 22:35:40', '2019-02-18 16:10:27'),
(10, 5, 'ar', 'التواصل معنا', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', '<p>Consult Us</p>', NULL, NULL, '2018-11-01 22:35:40', '2019-01-28 11:22:21'),
(11, 11, 'en', 'Treatment and surgery of the sick and eye diseases of children', 'The strabismus is an optical defect that makes each eye point to a different direction. One eye may look straight ahead, the other eye looking right, left, up, or down. You may notice this every time you look at the person with the period or may appear under special conditions. It is more common among children than adults.', '<p>how the eye is affected by the period?<br />\r\nThrough the natural vision to create a three-dimensional image, both eyes must be looking at the same body at the same time and where they send their signals to the brain at the same moment.</p>\r\n\r\n<p>But if both eyes are not regular, two separate images are sent to the brain lacking perspective and correct insight.</p>\r\n\r\n<p>In children, the brain trains itself to ignore images that reach from the eye that has a deviation (lazy eye). It only receives images from the other eye that see better and as a result the images are two-dimensional and not a trilogy. Making the lazy eye mentally blind.</p>\r\n\r\n<p>But when the strabismus occurs after puberty, the brain receives double images because it is not an instructor to ignore any of the eyes.</p>\r\n\r\n<p>Causes of SLE in children and adults<br />\r\nThere are six muscles in the eye that control their movement, up, down, right, left, and in corners. In order to see the picture very clearly, all six muscles of both eyes must move together in perfect harmony. This is monitored by the brain, so any brain disorder or disease such as cerebral palsy, Down&#39;s syndrome, or brain tumors may cause children to develop it.</p>\r\n\r\n<p>And also in children and adults, any eye injury may cause strabismus. White eye water is one of the most common causes of adult menopause</p>', NULL, NULL, '2018-11-05 07:48:50', '2018-12-09 10:00:42'),
(12, 11, 'ar', 'علاج وجراحة الحول وامراض عيون الاطفال', 'الحول هو عيب بصري يجعل كل عين تشير إلى اتجاه مختلف. فقد تبدو عين واحدة تنظر مباشرة إلى الأمام، والعين الأخرى تنظر يميناً أو يساراً أو لأعلى أو لأسفل. قد تلاحظ هذا الأمر في كل مرة تنظر فيها إلى الشخص المصاب بالحول أو قد تظهر في ظل ظروف خاصة. وهو أكثر شيوعا بين الأطفال عن البالغين.', '<h2 style=\"text-align:right\"><strong>كيف تكون الرؤية من خلال العين المصابة بالحول؟</strong></h2>\r\n\r\n<p style=\"text-align:right\">خلال الرؤية الطبيعية من أجل خلق صورة ثلاثية الأبعاد يجب أن تكون كلتا العينين تنظر إلى نفس الجسم في نفس الوقت وحيث تُرسل إشاراتهم إلى المخ في نفس اللحظة.</p>\r\n\r\n<p style=\"text-align:right\">ولكن إذا لم تكن كلتا العينين منتظمتين، يتم إرسال صورتين منفصلتين إلى الدماغ تفتقر إلى المنظور والبصيرة الصحيحة.</p>\r\n\r\n<p style=\"text-align:right\">عند الأطفال، يُدرب المخ نفسه لتجاهل الصور التي تصل من العين التي بها انحراف (العين الكسولة). ويتلقى فقط الصور من العين الأخرى التي ترى أفضل ونتيجة لذلك تكون الصور ثنائية الأبعاد وليست ثلاثية. مما يجعل العين الكسولة عمياء عقلياً.</p>\r\n\r\n<p style=\"text-align:right\">ولكن عندما يحدث الحول بعد مرحلة البلوغ، يتلقى المخ صور مزدوجة لأنه ليس مُدرب على تجاهل أي من العينين.</p>\r\n\r\n<h2 style=\"text-align:right\"><strong>&nbsp;أسباب مرض الحول عند الأطفال والبالغين</strong></h2>\r\n\r\n<p style=\"text-align:right\">يوجد ستة عضلات في العين تتحكم بحركتها، لأعلى، ولأسفل، ويمين، ويسار، وفي الزوايا. ومن أجل رؤية الصورة بوضوح تام، يجب أن تكون جميع العضلات الستة لكلتا العينين تتحرك معاً في تناسق مثالي. يتم رصد هذا التناسق من قبل المخ، لذلك أي خلل في المخ أو مرض ما مثل الشلل الدماغي، أو متلازمة داون، أو أورام المخ قد يسبب الحول لدى الأطفال.</p>\r\n\r\n<p style=\"text-align:right\">وأيضاً عند الأطفال والبالغين، أي إصابة للعين قد تسبب الحول. والمياه البيضاء التي تصيب العين هي واحدة من أكثر الأسباب شيوعاً للإصابة بالحول عند البالغين.</p>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>', NULL, NULL, '2018-11-05 07:48:50', '2018-12-09 10:00:42'),
(13, 12, 'en', 'Corneal surgery and correction of the world\'s latest technologies', 'Conjunctivitis is a disease that affects a high proportion of children and young people in the Arab region and leads to very low vision if the cornea is not properly treated. Recently, a new technique has been introduced to treat this disease in its early stages and to prevent vision from deteriorating rapidly.', '<p>What are the stages of conical corneal disease?<br />\r\nThis disease affects the cornea of ​​the eye - which is the window of the eye responsible for entering the light correctly - where a low incidence of corneal thickness and hardness in adolescence</p>\r\n\r\n<p>And young people, which leads to increased corneal cornea and turn into conical form, which affects the visual acuity due to astigmatism (deviation) resulting from the convexity.</p>\r\n\r\n<p>And the patient undergoes corneal cone in four stages of the first phase can be modified patient vision medical glasses and the second phase must use hard contact lenses to modify the deviation and the third and fourth phase of the surgical intervention to save the patient&#39;s vision through corneal transplant operations.</p>\r\n\r\n<p>How does modern technology help conical corneal patients?<br />\r\nThe technique of corneal radiotherapy is a German invention that has proven to be very effective in treating this disease over the past five years.<br />\r\nTreatment is done by placing vitamin B drops in the patient&#39;s eye</p>\r\n\r\n<p>The cornea is then exposed to a concentrated dose of ultraviolet radiation for half an hour.<br />\r\nScientific research has proven</p>', NULL, NULL, '2018-11-05 07:49:48', '2018-12-09 10:29:21'),
(14, 12, 'ar', 'جراحة القرنية المخروطية وتصحيح الابصار باحدث التقنيات العالمية', 'مرض القرنية المخروطية هو مرض يصيب نسبة عالية من الأطفال والشباب في المنطقة العربية ويؤدي إلى تدني شديد في الرؤية إذا لم يتم علاج القرنية المخروطية  بالطريقة الصحيحة. وقد توفرت مؤخراً تقنية حديثة لعلاج هذا المرض في مراحله الأولى ومنع البصر من التدهور المتسارع.', '<h1 style=\"text-align:right\"><strong>ما هي مراحل مرض القرنية المخروطية؟</strong></h1>\r\n\r\n<p style=\"text-align:right\">يصيب هذا المرض قرنية العين- والتي تعتبر نافذة العين المسؤلة عن دخول الضوء بطريقة صحيحة &ndash; حيث يحدث تدني مرضي في سماكة القرنية وصلابتها في مرحلة المراهقة</p>\r\n\r\n<p style=\"text-align:right\">والشباب مما يؤدي إلى ازدياد تحدب القرنية فتتحول إلى الشكل المخروطي مما يؤثر على حدة الإبصار بسبب الاستجماتيزم ( الانحراف) الناتج عن التحدب.</p>\r\n\r\n<p style=\"text-align:right\">ويمر مريض القرنية المخروطية بأربع مراحل المرحلة الأولى يمكن تعديل إبصار المريض بالنظارة الطبية أما المرحلة الثانية فلابد من استعمال العدسات اللاصقة الصلبة لتعديل الانحراف أما المرحلة الثالثة والرابعة فلابد من التدخل الجراحي لإنقاذ بصر المريض وذلك عن طريق عمليات زراعة القرنية.</p>\r\n\r\n<h2 style=\"text-align:right\"><strong>كيف تساعد التقنية الحديثة مريض القرنية المخروطية؟</strong></h2>\r\n\r\n<p style=\"text-align:right\">تقنية &ldquo;تقوية القرنية بالأشعة هي اختراع ألماني اثبت جدوى عالية في علاج هذا المرض خلال الخمسة سنوات الماضية .<br />\r\nيتم العلاج عن طريق وضع قطرات فيتامين ب في عين المريض</p>\r\n\r\n<p style=\"text-align:right\">ثم يتم تعريض القرنية لجرعة مركزة من الأشعة فوق البنفسجية لمدة نصف ساعة.<br />\r\nوقد أثبتت الأبحاث العلمية</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">أن تفاعل الأشعة مع الفيتامين في قرنية المريض تؤدي إلى تقوية ألياف القرنية الضعيفة وتعيد لها صلابتها وبالتالي تمنع تدهور المرض وتوقف من تزايد الانحراف مع مرور الوقت.<br />\r\nوقد وفرت لنا هذه التقنية تورة علمية في علاج هذا المرض</p>\r\n\r\n<p style=\"text-align:right\">حيث أصبح بإمكان الأطباء إيقاف المرض في مراحله الأولى وبالتالي لا يحتاج المريض لإجراء عمليات جراحية مثل زراعة القرنية.</p>\r\n\r\n<p style=\"text-align:right\">هل يؤلم علاج مرض القرنية المخروطية ؟ وماهي فترة النقاهة؟</p>\r\n\r\n<p style=\"text-align:right\">لايحس المريض بأي ألم أثناء علاجه بالأشعة،</p>\r\n\r\n<p style=\"text-align:right\">أما خلال فترة النقاهة والتي تستمر لمدة ثلاثة أيام فقد يشعر المرض بالمضايقة من الضوء القوي لذا ننصحه بالابتعاد عن الضوء القوي وعدم قيادة السيارة لمدة ثلاثة أيام يعود بعدها لحياته الطبيعية</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">ما هو العمر المناسب لإجراء عملية &ldquo;تقوية القرنية بالأشعة&rdquo;؟</p>\r\n\r\n<p style=\"text-align:right\">يمكن إجراء هذه العملية عن طريق تشخيص المرض وتعطي هذه التقنية نتائج أفضل إذا أجريت في مراحل مبكرة لذا فنحن نقوم بإجرائها للمريض عند بداية التشخيص</p>\r\n\r\n<p style=\"text-align:right\">وقد أجريت لشباب في العشرينات ولاطفال من عمر 14 عاما وإستفادوا إستفادة عالية</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">ما عدد جلسات العلاج التي يحتاجها المريض؟</p>\r\n\r\n<p style=\"text-align:right\">خلال الأبحاث التي أجريت في الأعوام الخمسة الماضية</p>\r\n\r\n<p style=\"text-align:right\">تبين أن غالبية المرضى- ( 95%) &ndash; يتم علاجهم من خلال جلسة واحدة وقد احتاج فقط خمسة بالمائة من المرض لجلسة ثانية للحصول على النتائج المرجوة</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>', NULL, NULL, '2018-11-05 07:49:48', '2018-12-09 10:29:21'),
(15, 13, 'en', 'Treatment of retinal diseases and follow - up of diabetic retinopathy', 'Diabetic retinopathy is a disease of the arteries caused by diabetes. It is a metabolic disease that is increasingly common in our society. It damages the small blood vessels in the retina, causing it to destroy the damage caused by the retina. This can lead to loss of vision and to high degrees that can not be treated.', '<p>What causes diabetic retinopathy?<br />\r\nHigh blood sugar continuously causes a disturbance in the walls of small blood vessels of the retina and becomes permeable and distorted, leading to the progress of the condition of retinal degeneration in varying stages.</p>\r\n\r\n<p>What are the stages of diabetic retinopathy?<br />\r\nAccording to the type and expansion of known symptoms of diabetic retinopathy, for example, can be in the microscopic aortic or microscopic hemorrhage or macular degeneration (heart attack) or fatty secretions or talk of consciousness and so on, and in light of that the stages of the disease are divided into different levels of light and Moderate, acute and proliferative.</p>\r\n\r\n<p>In all of these forms of diabetic retinopathy, symptoms of macular edema associated with diabetes, which is a major cause of visual impairment in people with diabetes, can occur.</p>\r\n\r\n<p>Diabetic macular degeneration is an accumulation of fluid within the macula, the central and most sensitive area of ​​the retina that is responsible for providing good visual acuity.</p>', NULL, NULL, '2018-11-05 07:51:52', '2018-12-09 10:11:02'),
(16, 13, 'ar', 'علاج امراض الشبكية ومتابعة الاعتلال الشبكى السكرى', 'أعتلال الشبكية السكري مرض يصيب الشرايين نتيجة الأصابة بمرض السكري وهو مرض أيضيّ آخذ بالأنتشار بشكل متزايد في مجتمعنا  يصيب بالضرر الأوعية الدموية الصغيرة في الشبكية لما يسببه من هدم أيضيّ الأضرار التي تصيب الشبكية يمكن ان تؤدي الى فقدان النظر و بدرجات قد تكون عالية و غير قابلة للعلاج', '<h2 style=\"text-align:right\">ما هي أسباب أعتلال الشبكية السكري؟</h2>\r\n\r\n<p style=\"text-align:right\">أرتفاع نسبة سكر الدم بشكل مستمر يسبب أضطراب في جدران أوعية الدم الصغيرة للشبكية فتصبح نفاذية و مشوهة مما يؤدي الى تقدم حالة الأعتلال في الشبكية بمراحل متفاوتة.</p>\r\n\r\n<hr />\r\n<h2 style=\"text-align:right\">ما هي مراحل الأصابة بأعتلال الشبكية السكري؟</h2>\r\n\r\n<p style=\"text-align:right\">بحسب نوع و توسع الأعراض المعروفة لأعتلال الشبكية السكري فمثلا يمكن ان تكون في أم الدم المجهرية أو بشكل نزوف مجهرية أو أحتشاء مكروي (أزمة قلبية) أو أفرازات دهنية أو حديث التوعي و الى آخره, و على ضوء ذلك تتقسم مراحل المرض الى مستويات مختلفة الخفيف و المعتدل و الحاد و التكاثري.</p>\r\n\r\n<p style=\"text-align:right\">في كل تلك الأشكال المذكورة لأعتلال الشبكية السكري يمكن أن تظهر أعراض الوذمة البقعية المرتبطة بمرض السكري و التي تكون سبباً رئيسياً لنقص الحدة البصرية عند المصابين بالسكري.</p>\r\n\r\n<p style=\"text-align:right\">الوذمة البقعية المرتبطة بمرض السكري هي عبارة عن تراكم للسائل في داخل البقعة الصفراء و هي المنطقة المركزية و الأكثر تحسساً في الشبكية و المسؤولة عن توفير حدة بصرية جيدة.</p>', NULL, NULL, '2018-11-05 07:51:52', '2018-12-09 10:11:02'),
(17, 14, 'en', 'White water surgery', 'The process of white water is one of the most performed processes ever. This process is the only therapeutic option for advanced white water cases (dimming the natural lens). During the white water process, the dark lens is removed and compensated with prostheses. The process of curing white water helps to improve the visual ability.', '<p>Causes of white water: cataract<br />\r\nWhite water is a term called dimming the natural lens as often as the cause of this dimming. The lens is located directly behind the pupil. If someone is infected with white water, he can not clearly see if there is a veil that prevents him from seeing clearly. As the disease worsens, the thickness of the veil increases until the patient becomes blind. In addition, white water patients develop mild blindness and may cause the disease to see double or multiple objects.</p>\r\n\r\n<p>Most cases of white water are due to aging (cataract disease). Other causes of darkening of the eye lens are due, for example, to eye diseases.</p>\r\n\r\n<p>General diseases (such as diabetes, skin diseases), lens injury, radiation effects. Unfortunately, white water can not be treated with medication, and the solution to exacerbation of the disease remains surgical intervention. There is a single exception in the case of white water caused by glacosemia where cataract disease can be reduced if the patient is taking a diet free of galactose.</p>', NULL, NULL, '2018-11-05 07:52:37', '2018-12-09 11:00:24'),
(18, 14, 'ar', 'جراحة المياه البيضاء', 'عملية المياه البيضاء هي واحدة من أكثر العمليات التي تجرى على الإطلاق. وتعتبر هذه العملية الإمكانية العلاجية الوحيدة لحالات المياه البيضاء المتقدمة (تعتم عدسة العين الطبيعية). خلال عملية المياه البيضاء تتم إزالة العدسة المعتمة وتعويضها بأخرى صناعية. عملية علاج المياه البيضاء تساعد على تحسين القدرة البصرية.', '<h2 style=\"text-align:right\">الأسباب التي تدعو إلى إجراء عملية المياه البيضاء: الساد</h2>\r\n\r\n<p style=\"text-align:right\">المياه البيضاء هو مصطلح يطلق على تعتم عدسة العين الطبيعية كيفما كانت مسببات هذا التعتم. توجد عدسة العين مباشرة وراء البؤبؤ. إذا أصيب شخص ما بالمياه البيضاء فإنه لا يستطيع الرؤية بوضوح وكأن هناك حجاب يمنع عنه أن يرى بوضوح، كلما تفاقم المرض تزداد سماكة الحجاب إلى أن يصاب المريض بالعمى. علاوة على هذا يصاب مرضى المياه البيضاء بالعمى البسيط وقد يؤدي هذا المرض لرؤية الأشياء مزدوجة أو متعددة.<br />\r\n<br />\r\nأغلب حالات المياه البيضاء تعود إلى التقدم في السن (مرض الساد الشيخوخي). مسببات تعتم عدسة العين الأخرى تعود مثلا إلى أمراض قد تصيب العين.<br />\r\n<br />\r\nالأمراض العامة (مثل داء السكري، الأمراض الجلدية)، إصابة العدسة، تأثيرات الأشعة. للأسف لا يمكن علاج المياه البيضاء بالأدوية ويبقى الحل عند تفاقم المرض هو التدخل الجراحي. هناك استثناء وحيد في حالة المياه البيضاء الناتجة عن الغلاكتوسيميا حيث يمكن لمرض الساد أن يتراجع إذا تناول المريض حمية غذائية خالية من الغلاكتوز.&nbsp;</p>', NULL, NULL, '2018-11-05 07:52:37', '2018-12-09 11:00:24'),
(19, 15, 'en', 'Retinal and vitreous section', 'The retina and vitreous section provides medical care for patients suffering from diseases or disorders of the retina, choroid and vitreous sections of the eye. This section also works in cooperation with the Department of Ophthalmology and Endodontics for the treatment of retinal cancer and also works with the Department of Osteoporosis For the treatment of complex cases of inflammation of the back parts of the biliary.', '<p>The retina and vitreous section provides medical care for patients suffering from diseases or disorders of the retina, choroid and vitreous sections of the eye. This section also works in cooperation with the Department of Ophthalmology and Endodontics for the treatment of retinal cancer and also works with the Department of Osteoporosis For the treatment of complex cases of inflammation of the back parts of the biliary.</p>\r\n\r\n<p>Department doctors</p>\r\n\r\n<p>Ophthalmologists are specialized in the retina and vitreous<br />\r\nAssociate doctors in the specialized sub-program<br />\r\nDoctors trained in the Resident Doctors program</p>\r\n\r\n<p>Services and functions of the department</p>\r\n\r\n<p>The retinal and vitreous section performs the following tasks and services:</p>\r\n\r\n<p>Comprehensive assessment of the eye condition including direct and indirect endoscopic eye examination, vascular venous injection, vascular imaging using green endocyanin dye, optic nerve and yellow spot tomography, ultrasound imaging, electroencephalography and visual field examination.<br />\r\nMedical procedures for the treatment of retina include laser coagulation, phototherapy and glass injection with anti-vascular drugs.<br />\r\nSurgical procedures for retinal and vitreous treatment</p>', NULL, NULL, '2018-12-09 11:11:58', '2018-12-09 11:11:58'),
(20, 15, 'ar', 'قسم الشبكية والجسم الزجاجي', 'يقدم قسم الشبكية والجسم الزجاجي الرعاية الطبية للمرضى الذين يعانون من أمراض أو اضطرابات في الأجزاء الخلفية من العين وهي الشبكية والمشيمية والجسم الزجاجي، ويعمل هذا القسم أيضاً بالتعاون مع قسم طب عيون الأطفال وعلاج الحول وذلك لتشخيص وعلاج امراض الشبكية عند الاطفال كما يعمل أيضاً بالتعاون مع قسم التهابات العنبية وذلك لعلاج الحالات المعقدة من التهابات الأجزاء الخلفية للعنبية.', '<p dir=\"rtl\">يقدم قسم الشبكية والجسم الزجاجي الرعاية الطبية للمرضى الذين يعانون من أمراض أو اضطرابات في الأجزاء الخلفية من العين وهي الشبكية والمشيمية والجسم الزجاجي، ويعمل هذا القسم أيضاً بالتعاون مع قسم طب عيون الأطفال وعلاج الحول وذلك لتشخيص وعلاج امراض&nbsp;الشبكية عند الاطفال كما يعمل أيضاً بالتعاون مع قسم التهابات العنبية وذلك لعلاج الحالات المعقدة من التهابات الأجزاء الخلفية للعنبية.</p>\r\n\r\n<p dir=\"rtl\">&nbsp;</p>\r\n\r\n<p dir=\"rtl\">أطباء القسم</p>\r\n\r\n<p dir=\"rtl\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"rtl\" style=\"text-align:right\">أطباء استشاريون في طب العيون تخصص دقيق في شبكية العين والجسم الزجاجي</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">أطباء زمالة في برنامج التخصص الفرعي الدقيق</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">أطباء متدربون في برنامج الأطباء المقيمين</li>\r\n</ul>\r\n\r\n<p dir=\"rtl\">&nbsp;</p>\r\n\r\n<p dir=\"rtl\">خدمات ومهام القسم</p>\r\n\r\n<p dir=\"rtl\">&nbsp;</p>\r\n\r\n<p dir=\"rtl\">يقوم قسم الشبكية والجسم الزجاجي بالمهام والخدمات التالية:</p>\r\n\r\n<p dir=\"rtl\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"rtl\" style=\"text-align:right\">التقييم الشامل لحالة العين ويشمل ذلك فحص العين بالمنظار المباشر وغير المباشر، وتصوير الأوعية الدموية بحقن الفلوريسين الوريدية، وتصوير الأوعية الدموية باستخدام صبغة إندوسيانين الخضراء، والتصوير المقطعي للعصب البصري والبقعة الصفراء، وتصوير العين بالموجات فوق الصوتية وفحص وظائف العين بقياس النشاط الكهربائي وفحص المجال البصري.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">الإجراءات الطبية لعلاج الشبكية وتشمل التخثير بالليزر والعلاج الضوئي وحقن الجسم الزجاجي بالأدوية المضادة لتكون الأوعية الدموية الجديدة.</li>\r\n	<li dir=\"rtl\" style=\"text-align:right\">الإجراءات الجراحية لعلاج الشبكية والجسم الزجاجي.</li>\r\n</ul>', NULL, NULL, '2018-12-09 11:11:58', '2019-02-26 17:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `person_type_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` text COLLATE utf8mb4_unicode_ci,
  `twitter_link` text COLLATE utf8mb4_unicode_ci,
  `insta_link` text COLLATE utf8mb4_unicode_ci,
  `youtube_link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `image`, `person_type_id`, `contact_info`, `facebook_link`, `twitter_link`, `insta_link`, `youtube_link`, `created_at`, `updated_at`) VALUES
(1, '1102325.png', 2, NULL, 'https://www.facebook.com/drAhmadBatal/?ref=bookmarks', 'https://twitter.com/DrAhmadBatal', 'https://www.instagram.com/drahmadbatal/', 'https://www.youtube.com/channel/UCSmHtLKd3AedNaNYTCmPTRg', '2018-11-03 12:11:18', '2019-02-26 18:07:31'),
(2, '1103194.png', 2, NULL, 'https://www.facebook.com/DrBatalCenter/?ref=br_rs', 'https://twitter.com/DrBatalClinics', 'https://www.instagram.com/drbatalcenter/', 'https://www.youtube.com/channel/UCSmHtLKd3AedNaNYTCmPTRg', '2018-11-03 12:11:38', '2019-02-26 18:00:25'),
(3, '1104223.png', 2, 'الرقم الموحد 920006659 / واتس اب (رقم الجوال )', 'https://www.facebook.com/DrBatalCenter/?ref=br_rs', 'https://twitter.com/DrBatalClinics', 'https://www.instagram.com/drbatalcenter/', 'https://www.youtube.com/channel/UCSmHtLKd3AedNaNYTCmPTRg', '2018-11-03 12:12:22', '2019-01-31 13:56:22'),
(4, '1111411.png', 2, 'الرقم الموحد 920006659 / واتس اب (رقم الجوال )', 'https://www.facebook.com/DrBatalCenter/?ref=br_rs', 'https://twitter.com/DrBatalClinics', 'https://www.instagram.com/drbatalcenter/', 'https://www.youtube.com/channel/UCSmHtLKd3AedNaNYTCmPTRg', '2018-12-01 11:11:41', '2019-01-31 13:56:43'),
(5, '1128502.png', 1, '920006659', 'https://www.facebook.com/DrBatalCenter/?ref=br_rs', 'https://twitter.com/DrBatalClinics', 'https://www.instagram.com/drbatalcenter/', 'https://www.youtube.com/channel/UCv_RtKbDTVzIqAn7iJWBjSg', '2018-12-01 11:28:50', '2018-12-01 11:28:50'),
(7, '082938mariam.jpg', 1, '920006659', 'https://www.facebook.com/DrBatalCenter/?ref=br_rs', 'https://twitter.com/DrBatalClinics', 'https://www.instagram.com/drbatalcenter/', 'https://www.youtube.com/channel/UCSmHtLKd3AedNaNYTCmPTRg', '2018-12-09 10:59:56', '2019-02-18 14:29:38'),
(8, '101859Blank.png', 1, '920006659', 'https://www.facebook.com/DrBatalCenter/?ref=br_rs', 'https://twitter.com/DrBatalClinics', 'https://www.instagram.com/drbatalcenter/', 'https://www.youtube.com/channel/UCSmHtLKd3AedNaNYTCmPTRg', '2018-12-09 11:07:11', '2019-02-03 10:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `persons_translation`
--

CREATE TABLE `persons_translation` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `services_topics` text COLLATE utf8_unicode_ci,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialist_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_days` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `training` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persons_translation`
--

INSERT INTO `persons_translation` (`id`, `person_id`, `locale`, `name`, `degree`, `short_description`, `long_description`, `services_topics`, `role`, `specialist_in`, `work_days`, `training`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Dr. Ahmed Hassan Al-Batal (President of the Center)', 'Royal College of surgeons', 'Senior Consultant, Pediatric Surgery and Eye Surgery\r\nFellow of the British Royal Surgical College\r\nFellow of the American Academy of Ophthalmology', '<pre>\r\nSenior Consultant, Pediatric Surgery and Eye Surgery\r\nFellow of the British Royal Surgical College\r\nFellow of the American Academy of Ophthalmology\r\n</pre>', '[\"Senior Consultant, Pediatric Surgery and Eye Surgery\",\"Fellow of the British Royal Surgical College\",\"Fellow of the American Academy of Ophthalmology\"]', NULL, 'Senior Consultant Ophthalmology, Pediatric and adults strabismus', 'Saturday To Thurseday', NULL, '2018-11-03 12:11:18', '2018-12-01 10:38:54'),
(2, 1, 'ar', 'د/أحمد البطل', 'زميل كلية الجراحيين الملكية البريطانية و زميل الأكاديمية الأمريكية لطب العيون', 'رئيس المجمع\r\n\r\nواستشاري أول طب وجراحة الحول وعيون الأطفال \r\nزميل كلية الجراحيين الملكية البريطانية\r\nزميل الأكاديمية الأمريكية لطب العيون', '<p>د.أحمد حسان البطل (رئيس المجمع)<br />\r\nاستشاري طب وجراحة الحول وعيون الأطفال&nbsp;<br />\r\nزميل كلية الجراحيين الملكية البريطانية<br />\r\nزميل الأكاديمية الأمريكية لطب العيون</p>', '[\"\\u0645\\u0634\\u0631\\u0641 \\u0639\\u0627\\u0645 \\u0639\\u0644\\u0649 \\u062a\\u0642\\u0646\\u064a\\u0629 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0633 \\u0628\\u0648\\u064a\\u0646\\u062f\",\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0649\\u00a0\\u0641\\u0649 \\u062c\\u0631\\u0627\\u062d\\u0629 \\u0627\\u0644\\u062d\\u0648\\u0644 \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0627\\u0637\\u0641\\u0627\\u0644 \\u0648\\u0627\\u0644\\u0643\\u0628\\u0627\\u0631\\u00a0\",\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0649 \\u0641\\u0649 \\u0639\\u0644\\u0627\\u062c \\u0639\\u064a\\u0648\\u0646 \\u0627\\u0644\\u0623\\u0637\\u0641\\u0627\\u0644\"]', 'استشاري أول طب وجراحة الحول وعيون الأطفال', 'جراحة الحول وعيون الأطفال', 'من السبت الى الخميس', NULL, '2018-11-03 12:11:18', '2019-02-26 18:07:31'),
(3, 2, 'en', 'Consultant Retinal Surgery, White Water and Glaucoma', 'Fellow of the Royal College of Surgeons', 'Consultant Retinal Surgery, White Water and Glaucoma\r\nFellow of the Royal College of Surgeons\r\nConsultant, Lincoln County Hospital, UK\r\nMember of the American Society of Ophthalmology\r\nMember of the European Society of Retinal Surgeons\r\nMember of the European Association of Ophthalmic Research', '<p>Consultant Retinal Surgery, White Water and Glaucoma<br />\r\nFellow of the Royal College of Surgeons<br />\r\nConsultant, Lincoln County Hospital, UK<br />\r\nMember of the American Society of Ophthalmology<br />\r\nMember of the European Society of Retinal Surgeons<br />\r\nMember of the European Association of Ophthalmic Research</p>', '[\"Retinal Surgery\",\"White Water\",\"Glaucoma\"]', 'Consultant Retinal Surgery, White Water and Glaucoma', 'Consultant Retinal Surgery, White Water and Glaucoma', 'Saturday To Wednesday', NULL, '2018-11-03 12:11:38', '2018-12-01 10:56:00'),
(4, 2, 'ar', 'د/وضاح جلبي', 'زميل كلية الجراحين الملكية البريطانية', 'استشاري جراحة الشبكية والماء الأبيض و الجلوكوما \r\nزميل كلية الجراحين الملكية البريطانية\r\nاستشاري بمستشفى لينكولين كاونتي- بريطانيا-سابقاً\r\nعضو الجمعية الأمريكية لطب وجراحة العيون\r\nعضو بالجمعية الأوروبية لجراحي الشبكية\r\nعضو الجمعية الأوروبية لأبحاث العيون', '<p>استشاري جراحة الشبكية والماء الأبيض و الجلوكوما&nbsp;</p>\r\n\r\n<p>زميل كلية الجراحين الملكية البريطانية</p>\r\n\r\n<p>استشاري بمستشفى لينكولين كاونتي- بريطانيا-سابقاً</p>\r\n\r\n<p>عضو الجمعية الأمريكية لطب وجراحة العيون</p>\r\n\r\n<p>عضو بالجمعية الأوروبية لجراحي الشبكية</p>\r\n\r\n<p>عضو الجمعية الأوروبية لأبحاث العيون</p>', '[\"\\u062c\\u0631\\u0627\\u062d\\u0629 \\u0627\\u0644\\u0634\\u0628\\u0643\\u064a\\u0629\",\"\\u0627\\u0644\\u0645\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636\",\"\\u0627\\u0644\\u0645\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0632\\u0631\\u0642 (\\u0627\\u0644\\u062c\\u0644\\u0648\\u0643\\u0648\\u0645\\u0627)\"]', 'استشاري جراحة الشبكية والماء الأبيض و الجلوكوما', 'جراحة الشبكية و الزجاجي والماء الأبيض', 'السبت الى الخميس', NULL, '2018-11-03 12:11:38', '2019-02-26 18:00:25'),
(5, 3, 'en', 'Dr. Braa Faham', 'Consultant of corneal and LASIK surgery and vision correction', 'Consultant of corneal and LASIK surgery and vision correction\r\n He holds the Arab Board of Ophthalmology\r\nMember of the American Society of Ophthalmology\r\nDoctor in charge of femtomobile operations\r\nThe Presbyond process was performed\r\nWhich was conducted by Dr. Ahmed the hero on his hand', '<p>Consultant of corneal and LASIK surgery and vision correction<br />\r\n&nbsp;He holds the Arab Board of Ophthalmology<br />\r\nMember of the American Society of Ophthalmology<br />\r\nDoctor in charge of femtomobile operations<br />\r\nThe Presbyond process was performed<br />\r\nWhich was conducted by Dr. Ahmed the hero on his hand</p>', '[\"corneal and LASIK surgery and vision correction\",\"Doctor in charge of femtomobile operations\",\"The Presbyond process was performed\",\"Which was conducted by Dr. Ahmed the hero on his hand\"]', 'He holds the Arab Board of Ophthalmology', 'corneal and LASIK surgery and vision correction  Doctor in charge of femtomobile operations The Presbyond process was performed Which was conducted by Dr. Ahmed the hero on his hand', 'Saturday To Wednesday', NULL, '2018-11-03 12:12:22', '2018-12-01 11:02:50'),
(6, 3, 'ar', 'د/براء فحام', 'استشاري جراحة القرنية و الليزك و تصحيح البصر', 'استشاري جراحة القرنية و الليزك و تصحيح البصر\r\n حاصل على البورد العربي لطب العيون\r\nعضو الجمعية الأمريكية لطب العيون\r\nالمختص فى  عمليات الفيمتو سمايل \r\nوتمت عملية Presbyond \r\nالتي اجراها د. أحمد البطل على يده', '<p>استشاري جراحة القرنية و الليزك و تصحيح البصر<br />\r\n&nbsp;حاصل على البورد العربي لطب العيون<br />\r\nعضو الجمعية الأمريكية لطب العيون<br />\r\nالمختص عن عمليات الفيمتو سمايل&nbsp;<br />\r\nوتمت عملية Presbyond&nbsp;<br />\r\nالتي اجراها د. أحمد البطل على يده</p>', '[\"\\u062c\\u0631\\u0627\\u062d\\u0629 \\u0627\\u0644\\u0642\\u0631\\u0646\\u064a\\u0629\",\"\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0644\\u064a\\u0632\\u0643 \\u0648\\u062a\\u0635\\u062d\\u064a\\u062d \\u0627\\u0644\\u0628\\u0635\\u0631\",\"\\u0645\\u062a\\u062e\\u0635\\u0635 \\u0641\\u0649\\u00a0\\u062a\\u0642\\u0646\\u064a\\u0629 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0633 \\u0627\\u0644\\u0648\\u064a\\u0646\\u062f\"]', 'حاصل على البورد العربي لطب العيون', 'جراحة القرنية و الليزك و تصحيح البصر  الطبيب مختص فى عمليات الفيمتو سمايل  وتمت عملية Presbyond  التي اجراها د. أحمد البطل على يده', 'السبت الى الخميس', NULL, '2018-11-03 12:12:22', '2019-01-30 14:24:39'),
(7, 4, 'en', 'Dr. olaa alhassan', 'Senior Specialist, Ophthalmology', 'Senior Specialist, Ophthalmology\r\n Specialty in cosmetic eye surgery\r\nHe holds the Egyptian Board of Ophthalmology\r\nFellow of the Royal College of Surgeons of Glasgow', '<pre>\r\nSenior Specialist, Ophthalmology\r\n&nbsp;Specialty in cosmetic eye surgery\r\nHe holds the Egyptian Board of Ophthalmology\r\nFellow of the Royal College of Surgeons of Glasgow</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '[\"Senior Specialist, Ophthalmology\",\"\\u00a0Specialty in cosmetic eye surgery\",\"He holds the Egyptian Board of Ophthalmology\",\"Fellow of the Royal College of Surgeons of Glasgow\"]', 'Senior Specialist, Ophthalmology', ' Specialty in cosmetic eye surgery', 'Saturday To Wednesday', NULL, '2018-12-01 11:11:41', '2018-12-01 11:11:41'),
(8, 4, 'ar', 'د/ علا الحسن', 'أخصائي أول طب وجراحة العيون', 'أخصائي أول طب وجراحة العيون\r\n\r\nتخصص  دقيق في جراحة العيون التجميلية\r\n\r\nحاصله على البورد المصري لطب وجراحة العيون\r\n\r\nزميلة كلية الجراحين الملكية البريطانية بجلاسكو', '<p>أخصائي أول طب وجراحة العيون</p>\r\n\r\n<p>تخصص &nbsp;دقيق في جراحة العيون التجميلية</p>\r\n\r\n<p>حاصله على البورد المصري لطب وجراحة العيون</p>\r\n\r\n<p>زميلة كلية الجراحين الملكية البريطانية بجلاسكو</p>', '[\"\\u0623\\u062e\\u0635\\u0627\\u0626\\u064a \\u0623\\u0648\\u0644 \\u0637\\u0628 \\u0648\\u062c\\u0631\\u0627\\u062d\\u0629 \\u0627\\u0644\\u0639\\u064a\\u0648\\u0646\",\"\\u062a\\u062e\\u0635\\u0635 \\u00a0\\u062f\\u0642\\u064a\\u0642 \\u0641\\u064a \\u062c\\u0631\\u0627\\u062d\\u0629 \\u0627\\u0644\\u0639\\u064a\\u0648\\u0646 \\u0627\\u0644\\u062a\\u062c\\u0645\\u064a\\u0644\\u064a\\u0629\",\"\\u062d\\u0627\\u0635\\u0644\\u0647 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0628\\u0648\\u0631\\u062f \\u0627\\u0644\\u0645\\u0635\\u0631\\u064a \\u0644\\u0637\\u0628 \\u0648\\u062c\\u0631\\u0627\\u062d\\u0629 \\u0627\\u0644\\u0639\\u064a\\u0648\\u0646\",\"\\u0632\\u0645\\u064a\\u0644\\u0629 \\u0643\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0631\\u0627\\u062d\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a\\u0629 \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\\u0629 \\u0628\\u062c\\u0644\\u0627\\u0633\\u0643\\u0648\"]', 'حاصله على البورد المصري لطب وجراحة العيون', 'تخصص  دقيق في جراحة العيون التجميلية', 'من السبت الى الخميس', NULL, '2018-12-01 11:11:41', '2019-01-28 14:50:15'),
(9, 5, 'en', 'Manal Ahmed Gharaibeh', 'Optometrist and orthodontics', 'Optometrist and orthodontics', '<p>Optometrist and orthodontics</p>', '[\"Optometrist and orthodontics\"]', 'Optometrist and orthodontics', 'Optometrist and orthodontics', 'Saturday To Wednesday', NULL, '2018-12-01 11:28:50', '2018-12-02 09:07:45'),
(10, 5, 'ar', 'منال أحمد غرايبة', 'أخصائية بصريات وتقويم عضلات العين', 'أخصائية بصريات وتقويم عضلات العين', '<p>أخصائية بصريات وتقويم عضلات العين&nbsp;</p>', '[]', 'أخصائية بصريات وتقويم عضلات العين', 'بصريات وتقويم عضلات العين', 'من السبت الى الخميس', NULL, '2018-12-01 11:28:50', '2019-01-30 14:43:26'),
(13, 7, 'en', 'Marim Bin Khamis', 'Optometrist and orthodontics', 'Optometrist and orthodontics', '<p>Optometrist and orthodontics</p>', '[\"Optometrist and orthodontics\"]', 'Optometrist and orthodontics', 'Optometrist and orthodontics', 'Saturday To Wednesday', NULL, '2018-12-09 10:59:56', '2018-12-09 10:59:56'),
(14, 7, 'ar', 'مريم بن خميس', 'أخصائية بصريات وتقويم عضلات العين', 'أخصائية بصريات وتقويم عضلات العين', '<p>أخصائية بصريات وتقويم عضلات العين&nbsp;</p>', '[\"\\u0628\\u0635\\u0631\\u064a\\u0627\\u062a \\u0648\\u062a\\u0642\\u0648\\u064a\\u0645 \\u0639\\u0636\\u0644\\u0627\\u062a \\u0627\\u0644\\u0639\\u064a\\u0646\"]', 'أخصائية بصريات وتقويم عضلات العين', 'بصريات وتقويم عضلات العين', 'من السبت الى الخميس', NULL, '2018-12-09 10:59:56', '2019-01-27 12:57:56'),
(15, 8, 'en', 'raghdah Noureldin Ali', 'Optometrist and orthodontics', 'Optometrist and orthodontics', '<p>Optometrist and orthodontics</p>', '[\"Optometrist and orthodontics\"]', 'Optometrist and orthodontics', 'Optometrist and orthodontics', 'Saturday To Wednesday', NULL, '2018-12-09 11:07:11', '2018-12-09 11:07:11'),
(16, 8, 'ar', 'رغدة نور الدين على', 'أخصائية بصريات', 'أخصائية بصريات', '<p>أخصائية بصريات&nbsp;</p>', '[\"\\u0628\\u0635\\u0631\\u064a\\u0627\\u062a \\u0648\\u0627\\u0644\\u0639\\u062f\\u0633\\u0627\\u062a \\u0627\\u0644\\u0644\\u0627\\u0635\\u0642\\u0629\"]', 'أخصائية بصريات', 'بصريات والعدسات اللاصقة', 'من السبت الى الخميس', NULL, '2018-12-09 11:07:11', '2019-01-27 12:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `person_type`
--

CREATE TABLE `person_type` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_type`
--

INSERT INTO `person_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person_type_translation`
--

CREATE TABLE `person_type_translation` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_type_translation`
--

INSERT INTO `person_type_translation` (`id`, `locale`, `name`, `person_type_id`, `created_at`, `updated_at`) VALUES
(40, 'en', 'specialist', 1, NULL, NULL),
(41, 'ar', 'اخصائي', 1, NULL, NULL),
(42, 'en', 'doctor', 2, NULL, NULL),
(43, 'ar', 'دكتور', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `service_section_id` int(10) DEFAULT NULL,
  `service_type_id` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `show_in_homepage` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_section_id`, `service_type_id`, `name`, `short_description`, `long_description`, `image`, `active`, `show_in_homepage`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"17\",\"18\"]', NULL, NULL, NULL, '1156151edbaf79-79f6-4650-821e-7bd969f9e7da.jpg', 1, 1, 1, '2018-10-31 16:33:01', '2018-12-22 12:20:23'),
(2, 1, '[\"17\"]', NULL, NULL, NULL, '120059AMO-VISX-WaveScan-Wavefront-System.jpg', 1, 1, 1, '2018-11-02 22:12:53', '2018-12-01 12:01:26'),
(3, 1, '[\"17\"]', NULL, NULL, NULL, '120732corneal-Cross-linking-system-mm4396-uva365.png', 1, 1, 1, '2018-11-02 22:14:23', '2018-12-01 12:07:32'),
(4, 1, '[\"17\",\"18\"]', NULL, NULL, NULL, '121236004.jpg', 1, 1, 1, '2018-11-02 22:14:32', '2018-12-22 11:59:18'),
(5, 1, '[\"17\",\"18\"]', NULL, NULL, NULL, '121723oct.jpg', 1, 1, 1, '2018-11-02 22:14:41', '2018-12-22 12:00:27'),
(6, 1, '[\"17\",\"18\"]', NULL, NULL, NULL, '130556sonomed-a-scan-biometry-500x500.jpg', 1, 1, 1, '2018-11-02 22:14:49', '2018-12-22 12:02:43'),
(7, 1, '[\"17\",\"18\"]', NULL, NULL, NULL, '131449Main-AP-300.jpg', 1, 1, 1, '2018-11-02 22:14:58', '2018-12-22 12:04:40'),
(8, 1, '[\"17\",\"18\"]', NULL, NULL, NULL, '132145schwind-sirius-bg.jpeg', 1, 1, 1, '2018-11-02 22:15:10', '2018-12-22 11:58:37'),
(9, 1, '[\"17\",\"18\"]', NULL, NULL, NULL, '134110human_animal-31-800-600-93.jpg', 1, 1, 1, '2018-11-02 22:15:18', '2018-12-22 12:22:27'),
(10, 1, '[\"18\"]', NULL, NULL, NULL, '140927s268389120501495805_p162_i1_w500.jpeg', 1, 1, 1, '2018-11-02 22:24:27', '2018-12-22 12:23:03'),
(11, 1, '[\"18\"]', NULL, NULL, NULL, '140850d926f5d09bfd9bed3179e091766200ef9-500x500.jpg', 1, 1, 1, '2018-11-02 22:24:35', '2018-12-22 12:23:22'),
(12, 2, '[\"18\"]', NULL, NULL, NULL, '082019DV_S1443.JPG', 1, 1, 1, '2018-11-02 22:24:43', '2018-12-22 12:23:50'),
(13, 2, '[\"18\"]', NULL, NULL, NULL, '083258DV_S1440.JPG', 1, 1, 1, '2018-11-02 22:25:02', '2018-12-22 12:24:31'),
(20, 2, '[null]', NULL, NULL, NULL, '11354869bfa0ce-a1d1-401b-b823-cccdec247953.jpg', 1, 1, 1, '2019-01-28 11:35:48', '2019-02-03 10:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `services_translation`
--

CREATE TABLE `services_translation` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services_translation`
--

INSERT INTO `services_translation` (`id`, `service_id`, `locale`, `name`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Visx star S4 IR', 'Visx star S4 IR is one of the most advanced devices', '<p>Visx star S4 IR is one of the most advanced devices in the Wave Front for correction. Visx is one of the oldest and most famous American companies in the field of double vision correction where the process is done at a speed of less than 2.5 seconds for each degree of double vision.<br />\r\nVisx star S4 IR provides a wide range of visual correction techniques with PRK, LASIK and LASEK techniques, all of which are available at the Hero Center.<br />\r\nEye Tracker System (Eyex System) is characterized by high accuracy, efficiency and speed so that it can track the rapid eye movement in parts of the second if needed to achieve the most accurate and the best results.</p>', '2018-10-31 16:33:01', '2018-12-01 11:56:15'),
(2, 1, 'ar', 'جهاز (Visx star S4 IR)', 'جهاز (Visx star S4 IR) لتصحيح النظر', '<p dir=\"rtl\">جهاز (Visx star S4 IR) لتصحيح النظر هو أحد أحدث الأجهزة المتميزة بتقنية التصحيح بدراسة الأمواج الأمامية (Wave Front)من أجل نظر حاد مميز. شركة (Visx) من أعرق وأشهر الشركات الأمريكية في مجال تصحيح ضعف النظر حيث تتم العملية بسرعة فائقة تقل عن ثانيتن ونصف لكل درجة واحدة من ضعف الابصار.&nbsp;<br />\r\nجهاز(Visx star S4 IR) يوفر مجال واسع لأنواع عديدة من تصحيح البصر بتقنيات PRK , LASIK, LASEK, علماً أن كل هذه الأنواع متوفرة لدى مركزالدكتور البطل.&nbsp;<br />\r\nجهاز (Visx star S4 IR) يمتاز بتقنية متطورة في تتبع العين ( (Eye Tracker System يتميز بدقة شديدة وفاعلية وسرعة فائقة بحيث يستطيع تتبع حركة العين السريعة في اجزاء من الثانية اذا مادعت الحاجة لذلك بهدف الحصول على أدق وأفضل النتائج.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>', '2018-10-31 16:33:01', '2018-12-01 11:56:15'),
(3, 2, 'en', 'WaveScan Wave Front System', 'the leading refractive corneal study', '<pre>\r\nCorneal and WaveScan Wave Front System from Abbot, the leading refractive corneal study, allowing for detailed treatment of the patient&#39;s eye, providing the best results in laser vision correction.</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:12:53', '2018-12-01 12:00:59'),
(4, 2, 'ar', 'جهاز تصوير القرنية و دراسة الامواج الامامية', 'وهو الجهاز الرائد لدراسة القرنية الانكسارية', '<p dir=\"rtl\">جهاز تصوير القرنية و دراسة الامواج الامامية (WaveScan Wave Front System) من شركة Abbot الامريكية وهو الجهاز الرائد لدراسة القرنية الانكسارية مما يسمح باجراء معالجة مفصلة لعين المريض مما يعطي افضل النتائج في تصحيح البصر بالليزر.&nbsp;</p>', '2018-11-02 22:12:53', '2018-12-01 12:00:59'),
(5, 3, 'en', 'Corneal Cross Linking', 'A chemical phototherapy device (Corneal Cross Linking) to stabilize the cases of conical cornea and actasia.', '<p>A chemical phototherapy device (Corneal Cross Linking) to stabilize the cases of conical cornea and actasia.</p>', '2018-11-02 22:14:23', '2018-12-01 12:07:32'),
(6, 3, 'ar', 'جهاز العلاج الضوئي الكيميائي (Corneal Cross Linking)', 'لتثبيت حالات القرنية المخروطية والأكتازيا', '<p dir=\"rtl\">جهاز العلاج الضوئي الكيميائي (Corneal Cross Linking) وهي لتثبيت حالات القرنية المخروطية والأكتازيا.</p>', '2018-11-02 22:14:23', '2018-12-01 12:07:32'),
(7, 4, 'en', 'Photoreastography of the bottom of the eye', 'The details of the back of the eye and retina can be photographed and can be photographed', '<p>Photoreastography of the bottom of the eye. It is produced by TOPCON of Japan and allows to capture the details of the back of the eye and retina. The blood circulation can be photographed using the FLUORESCEIN ANGIOGRAPHY technique, and the INDOCYANINE GREEN ANGIOGRAPHY is available to identify the details of the membranes developed under the center of vision.</p>', '2018-11-02 22:14:32', '2018-12-01 12:12:36'),
(8, 4, 'ar', 'جهاز تصوير قاع العين بأشعة الفلورسين', 'يسمح بتصوير تفاصيل الجزء الخلفي من العين والشبكية ويمكن تصوير الدورة الدموية', '<p dir=\"rtl\">جهاز تصوير قاع العين بأشعة الفلورسين. وهو من انتاج شركة TOPCON اليابانية ويسمح بتصوير تفاصيل الجزء الخلفي من العين والشبكية ويمكن تصوير الدورة الدموية باستخدام تقنية FLUORESCEIN ANGIOGRAPHY كما توجد به خاصية تصوير العين INDOCYANINE GREEN ANGIOGRAPHY للتعرف على تفاصيل الأغشية المستحدثة أسفل مركز الإبصار.</p>', '2018-11-02 22:14:32', '2018-12-01 12:12:36'),
(9, 5, 'en', 'Ocular Coherence Tomography - OCT', 'new equipment short', '<pre>\r\nJapan&#39;s TOPCON (OCT) Ophthalmic Tomography (CTT) provides accurate cross-sectional retinal images to diagnose retinal diseases such as macular degeneration, diabetes, senescence, and other lesions such as the center of vision. This device also accurately studies the optic nerve and thickness of the nerve fiber layer to determine the extent of nerve damage Visual result of glaucoma (black water).</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:14:41', '2018-12-01 12:17:23'),
(10, 5, 'ar', 'جهاز التصوير المقطعي المحوسب الخاص بالعين OCT', 'يعطي صور مقطعية دقيقة للشبكية لتشخيص أمراض الشبكية', '<p dir=\"rtl\">جهاز التصوير المقطعي المحوسب الخاص بالعين OCT من شركة (TOPCON)اليابانية يعطي صور مقطعية دقيقة للشبكية لتشخيص أمراض الشبكية كاعتلال اللطخة الصفراء السكري و الشيخي و بعض الآفات الاخرى كثقوب مركز الإبصار كما يدرس هذا الجهاز بدقة متناهية العصب البصري وسماكة طبقة الالياف العصبية لتحديد مقدار تضرر العصب البصري نتيجة الاصابة بالزرق ( المياه السوداء) .</p>', '2018-11-02 22:14:41', '2018-12-22 12:00:27'),
(11, 6, 'en', 'Sonomed Ophthalmic Scan Unit', 'A Scan Pachymeter which is widely used for quick and easy examination of eye diseases', '<p><strong>A Scan Pachymeter</strong>&nbsp;which is widely used for quick and easy examination of eye diseases. In the supervision of our experienced professionals, this pachymeter is designed in strict compliance with set industry standards of quality and is available in varied specifications to cater diverse requirements of our clients. Widely acclaimed in the market for portable design and light weight, our offered pachymeter is available at budget friendly prices.</p>', '2018-11-02 22:14:49', '2018-12-01 13:05:56'),
(12, 6, 'ar', 'جهاز الموجات الصوتية واسعة المجال', 'أحدث جهاز للتصوير بالموجات فوق الصوتية', '<p dir=\"rtl\">يحتوي المركز على أحدث جهاز للتصوير بالموجات فوق الصوتية من انتاج شركة Sonomed الامريكية مزود بامكانيات فحص الجزء الأمامي من العين باستخدام مجسات خاصة ULTRASOUND BIOMICROSCOPY ، وتصوير الجزء الخلفي من العين لإعطاء تفاصيل عن الشبكية والجسم الزجاجي. كما يحتوي الجهاز على أحدث المعادلات العالمية لقياس قوة العدسة الخلفية والأمامية اللازمة للزرع داخل العين في حالات المياه البيضاء بدقة منقطعة النظير.</p>', '2018-11-02 22:14:49', '2018-12-22 12:02:43'),
(13, 7, 'en', 'OPTOS – AutoPerimeter300', 'The AutoPerimeter300 is the newest and most advanced Perimeter in the Optos family of visual field analyzers', '<p>The AutoPerimeter300 is the newest and most advanced Perimeter in the Optos family of visual field analyzers. Delivering reliable results and complying with Goldman standards, the AutoPerimeter300 was developed on an all new perimetry platform utilizing the latest technologies to suit the needs of demanding ophthalmologists and optometrists. It is a premium product that meets all international safety, quality and regulatory standards.</p>', '2018-11-02 22:14:58', '2018-12-01 13:14:49'),
(14, 7, 'ar', 'جهاز فحص المجال البصري OPTOS – AutoPerimeter300', 'جهاز لدراسة المجال البصري', '<pre>\r\nيعد AutoPerimeter300 هو أحدث وأحدث محيط في عائلة Optos لمحلل المجال البصري. من خلال تقديم نتائج موثوقة ومطابقة لمعايير جولدمان ، تم تطوير AutoPerimeter300 على منصة قياس جديدة بالكامل تستخدم أحدث التقنيات لتناسب احتياجات مطوري العيون وفاحصي النظر. إنه منتج متميز يلبي جميع معايير السلامة والجودة والمعايير الدولية.</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:14:58', '2018-12-22 12:04:40'),
(15, 8, 'en', 'SIRIUS TOPOGRAPHY', 'It studies the surface of the cornea and accurately diagnoses the cases of conical cornea in its advanced stages.', '<p>In just one step, this combination topograph and Scheimpflug camera performs a fast, three-dimensional analysis of the entire cornea and anterior eye segment.&nbsp;It&rsquo;s the perfect solution for refractive and therapeutic surgery and is also suitable for keratoconus screening.&nbsp;</p>\r\n\r\n<p>A unique feature of SCHWIND diagnostic devices is the inclusion of static cyclotorsion control in all treatment methods using&nbsp;<a href=\"https://www.eye-tech-solutions.com/en/products/laser-systems\">SCHWIND AMARIS</a></p>', '2018-11-02 22:15:10', '2018-12-01 13:21:45'),
(16, 8, 'ar', 'جهاز التصوير الطبوغرافي للقرنية Sirus topograaphy', 'يدرس سطح القرنية ويشخص بدقة حالات القرنية المخروطية في مراحلها المتقدمة.', '<p>يستخدم الجهاز&nbsp;</p>\r\n\r\n<pre>\r\nلتحليل القرنية على نطاق واسع ، ثلاثي الأبعاد</pre>\r\n\r\n<pre>\r\nفي خطوة واحدة فقط ، هذه التضاريس الطباعية وكاميرا Scheimpflug ينفذان تحليلاً سريعًا ثلاثي الأبعاد لكامل القرنية والجزء الأمامي للعين. إنه الحل المثالي للجراحة الانكسارية والعلاجية وهو مناسب أيضًا لفحص القرنية المخروطية.\r\n\r\nتتمثل إحدى الميزات الفريدة لأجهزة التشخيص من SCHWIND في تضمين التحكم المستمر في cyclotorsion في جميع طرق المعالجة باستخدام SCHWIND AMARIS</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:15:10', '2018-12-22 11:58:23'),
(17, 9, 'en', 'Roland ERG / mfERG', 'The device is used in special cases such as night sickness and optic nerve infections and is universally classified as the most accurate device for electrical retinal planning.', '<p>It accurately detects the condition of the optic nerve and retinal cells. This device is used in special cases such as night blindness and optic nerve infections and is universally classified as the most accurate device for electrical retinal planning.</p>\r\n\r\n<p>Electrophysiology include traditional electrophysiology and multifocal electrophysiology.<br />\r\nTraduitional electrophysiology include Electroretinogram（ERG）, Visual evoked potential（VEP），Electrooculogram（EOG）; Multifocal electrophusiology include multifocal ERG and multifocal VEP.</p>', '2018-11-02 22:15:18', '2018-12-01 13:41:10'),
(18, 9, 'ar', 'جهاز تخطيط الشبكية （ERG）والعصب البصري（VEP）', 'الجهاز يستخدم في حالات خاصة كأمراض العشى الليلي والتهابات العصب البصري و مصنف عالميا كأدق جهاز لتخطيط الشبكية الكهربائي.', '<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\">يكشف بدقة متناهية حالة العصب البصري وخلايا الشبكية وهذا الجهاز يستخدم في حالات خاصة كأمراض العشى الليلي والتهابات العصب البصري و مصنف عالميا كأدق جهاز لتخطيط الشبكية الكهربائي.</p>\r\n\r\n<p>يتضمن الفيزيولوجيا الكهربية الفيزيولوجيا الكهربية التقليدية والفيزيولوجيا الكهربية متعددة البؤر. يتضمن الفيزيولوجيا الكهربية المتدرجة تخطيط كهربية القلب （ERG） ، وإمكانيات مرئية محركة （VEP） ， Electrooculogram （EOG）؛ علم الفلك الكهربائي متعدد البؤر يتضمن ERG متعدد البؤر و VEP متعدد البؤر. يتضمن Roland Reti port / Scan21 حقل جانزفيلد LED كامل الحجم ذو 19 بوصة ملونة ، ومكبر للصوت DC مع قنوات مختلفة خاصة لطب العيون ، وإلكترود خاص لطب العيون ، والكمبيوتر والطابعة.</p>', '2018-11-02 22:15:18', '2018-12-22 12:22:27'),
(19, 10, 'en', 'Argon laser', 'Treatment of diabetic retinopathy', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Calibri Light&quot;,sans-serif\"><span style=\"color:#212121\">It is used to treat diabetic retinopathy and other retinal diseases such as ruptures and holes in the retina.</span></span></span></span></span></p>', '2018-11-02 22:24:27', '2018-12-02 07:25:33'),
(20, 10, 'ar', 'جهاز آرجون الليزر', 'علاج اعتلال الشبكية السكري', '<p dir=\"rtl\">يستخدم لعلاج حالات اعتلال الشبكية السكري وبعض أمراض الشبكية الاخرى كحالات التمزق والثقوب التي تحدث في شبكية العين.</p>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:24:27', '2018-12-01 14:14:05'),
(21, 11, 'en', 'Yag Laser', 'the posterior opacity of the transplanted lens', '<pre>\r\nIt is used to treat the posterior opacity of the transplanted lens and the iris of the iris in some cases of glaucoma (black water)</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:24:35', '2018-12-01 14:07:43'),
(22, 11, 'ar', 'جهاز ياج ليزر', 'علاج عتامة المحفظة الخلفية لعدسة العين', '<p dir=\"rtl\">يستعمل لعلاج عتامة المحفظة الخلفية لعدسة العين المزروعة و لخزع القزحية في بعض حالات الزرق ( الماء الاسود)</p>', '2018-11-02 22:24:35', '2018-12-01 14:07:43'),
(23, 12, 'en', 'Femto Smile', 'The latest technology for the manufacture of eyesight', '<pre>\r\nFemto Smile\r\nThe latest technology to correct the eyes from the age of 18 to 40 years in just 10 minutes in which no work is done at all and does not lift the cornea outside. The process is performed by penetrating the laser beam to the surface of the cornea through a small opening does not exceed 2 millimeters and the radiation work to modify the shape of the cornea according to need without pain</pre>\r\n\r\n<pre>\r\nFeatures of Femto Smile: -\r\nDo not use surgical scalpel\r\nWithout pain during or after surgery\r\nExposure to water and daily exercise is possible immediately after the procedure\r\nKeep the cornea intact without cutting\r\nThe operation can be done in cases of low-corneal cornea, which may not be suitable for the operation of LASIK or femtosecond\r\nMaintain the nerves of the cornea and responsible for regulating the secretion of tears\r\nPreserving membranes surrounding the cornea\r\nReduce eye dryness after surgery</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:24:43', '2018-12-02 08:20:21'),
(24, 12, 'ar', 'الفيمتو سمايل Femto smile', 'احدث تقنية عالمية لتصحيح الأبصار', '<p style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">الفيمتو سمايل</span></span></span></span></strong><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">احدث تقنية عالمية لتصحيح الأبصار </span></span></span></span><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">من عمر 18 حتى 40 عام في خلال 10 دقائق فقط وفيها لا يتم عمل أي قطع على الإطلاق ولا يتم رفع القرنية للخارج. وتتم العملية عن طريق اختراق اشعة الليزر لسطح القرنية من خلال فتحه صغيرة لا تتعدي 2 ملليمتر وتقوم الاشعة بالعمل على تعديل شكل القرنية طبقا للحاجة بدون ألم </span></span></span></span></span></span></p>\r\n\r\n<div style=\"border-bottom:solid windowtext 1.0pt; padding:0in 0in 1.0pt 0in\">\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">مميزات تقنية الفيمتو سمايل :-</span></span></span></span></strong><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">عدم استخدام مشرط جراحي</span></span></span></span><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">بدون ألم أثناء او بعد العملية</span></span></span></span><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">يمكن التعرض للماء وممارسة الحياة اليومية مباشرة بعد إجراء العملية</span></span></span></span><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">الحفاظ علي القرنية سليمة بدون قطع</span></span></span></span><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">يمكن إجراء العملية في حالات القرنية قليلة السمك، والتي قد لا تكون مناسبة لإجراء عملية الليزك أو الفيمتو ليزك</span></span></span></span><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">الحفاظ علي أعصاب القرنية والمسئولة عن تنظيم افراز الدموع</span></span></span></span><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">الحفاظ علي الأغشية الطلائية المحيطة بالقرنية</span></span></span></span><br />\r\n<span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">تقلل نسبة حدوث جفاف للعين بعد العملية</span></span></span></span></span></span></p>\r\n</div>', '2018-11-02 22:24:43', '2018-12-22 12:24:52'),
(25, 13, 'en', 'presbyond', 'The world\'s most advanced vision correction, double vision and over-eye treatment for people over 40 years of age', '<pre>\r\npresbyond\r\nThe world&#39;s most advanced vision correction, double vision and over-eye treatment for people over 40 years of age, increases visibility and gives the ability to see the eyes between distance, proximity and distance without any interference and with complete patient comfort.\r\n\r\nThis technique is available only in the specialist champion complex in the whole Arab world\r\n\r\nThe advantages of Brewing technology\r\nEnsuring that glasses are removed for life.\r\nWithout pain during and after the operation</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '2018-11-02 22:25:02', '2018-12-02 08:33:00'),
(26, 13, 'ar', 'البريس بويند presbeond', 'أحدث تقنية عالمية لتصحيح النظر وعلاج ضعف النظر وطول النظر لمن فوق ال 40 عام فقط', '<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">تقنية تصحيح الرؤية للقرب للمرضي فوق 40 سنة</span></span></span></strong></span></span></p>\r\n\r\n<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">ظهر في السنوات الأخيرة اهتمام كبير بالتصحيح الجراحي والليزري لحالات قصو النظر والذي يحدث فيه ضعف في الرؤية للأشياء القريبة مثل قراءة الكتاب او الجوال لمن هم فوق سن ال40</span></span></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">وتعددت الطرق العلاجية لكن دون الوصول لنتائج مرضية الي ان ظهرت تقنية مبتكرة لتصحيح النظر للبعد والقرب وكل المسافات وكان تقبل المرضي لها رائعا والنتائج مبهرة حتي ان اهم الأطباء الذين يجرون هذا النوع من العمليات قاموا بإجرائها علي انفسهم لشدة اقتناعهم بهذه التقنية ولما راوه من نتائج رائعة </span></span></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">تدعي هذه التقنية بريس بويند </span></span></span></span><span dir=\"LTR\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">( PRESBYOND ) </span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">&nbsp;من شركة </span></span></span></span><span dir=\"LTR\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">ZEISS</span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\"> الرائد في تقنيات تصحيح النظر , والتي تعمل علي اجراء تصحيح بصري يعمل علي زيادة عمق الرؤية (عمق حقل الرؤية ) عن طريق احداث زوغان كروي في العينين ضمن حدود مقبولة وإجراء </span></span></span></span>&nbsp;<span dir=\"LTR\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">micromonovision </span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">بمقدار لا يتجاوز 1.5 ديوبتر مما يعطي القدرة علي رؤية مشتركة بين العينين للبعد والقرب والمسافة بينهما دون حدوث اي تشويش ومع راحة تامة للمريض .&nbsp; </span></span></span></span></span></span></p>\r\n\r\n<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><br />\r\n<span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">البريس بويند</span></span></strong><br />\r\n<span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\">أحدث تقنية عالمية لتصحيح النظر وعلاج </span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">ضعف النظر وطول النظر لمن فوق ال 40 عام فقط وتعمل على زيادة عُمق الرؤية وتُعطى القدرة على رؤية مشتركة بين العينين للبعد والقرب والمسافة بينهما دون حدوث اي تشويش ومع راحة تامة للمريض .</span></span></span></span></span></span></p>\r\n\r\n<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#ffffff\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"background-color:#2980b9\">هذه التقنية متوفرة فقط في مجمع بطل التخصصي في كل الوطن العربي&nbsp;</span></span></span></span><br />\r\n<br />\r\n<strong><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">مميزات تقنية البريس بويند</span></span></span></span></strong><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">ضمان التخلي عن النظارة مدى الحياة</span></span></span></span><span dir=\"LTR\" style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1c1e21\">.</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Segoe UI&quot;,sans-serif\"><span style=\"color:#1d2129\">بدون ألم أثناء وبعد العملية</span></span></span></span></span></span></p>', '2018-11-02 22:25:02', '2019-01-14 09:53:21'),
(27, 14, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:12', '2018-11-02 22:25:12'),
(28, 14, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:12', '2018-11-02 22:25:12'),
(29, 15, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:20', '2018-11-02 22:25:20'),
(30, 15, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:20', '2018-11-02 22:25:20'),
(31, 16, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:35', '2018-11-02 22:25:35'),
(32, 16, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:35', '2018-11-02 22:25:35'),
(33, 17, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:43', '2018-11-02 22:25:43'),
(34, 17, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:43', '2018-11-02 22:25:43'),
(35, 18, 'en', 'dddddddddddd', 'dddddddddddddddd', '<p>ddddddddddddd</p>', '2018-12-20 10:11:44', '2018-12-20 10:11:44'),
(36, 18, 'ar', 'معرض عبق الماضي 2', 'dddddddddddddd', '<p>dddddddddddddd</p>', '2018-12-20 10:11:44', '2018-12-20 10:11:44'),
(37, 19, 'en', 'eeeeeee', 'eeeeeeeeeee', '<p>eeeeeeeeeeeee</p>', '2018-12-20 11:25:18', '2018-12-20 11:25:18'),
(38, 19, 'ar', 'rrrrrrrrrrrrr', 'eeeeeeeeee', '<p>eeeeeeeeee</p>', '2018-12-20 11:25:18', '2018-12-20 11:25:18'),
(39, 20, 'en', 'Micro Pluse', 'The latest technology in the Kingdom of Saudi Arabia in the treatment of diabetes', '<pre>\r\nThe latest technology in the Kingdom of Saudi Arabia in the treatment of diabetes</pre>\r\n\r\n<ul>\r\n	<li>\r\n	<pre>\r\nwithout pain</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nWithout leaving scars on the retina.\r\n</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nAn alternative to intraocular injections.</pre>\r\n\r\n	<pre>\r\n\r\n&nbsp;</pre>\r\n	</li>\r\n</ul>', '2019-01-28 11:35:48', '2019-01-28 12:18:44'),
(40, 20, 'ar', 'جهاز الليزر الاصفر مايكرو بلس', 'التقنية الاحدث فى المملكة العربية السعودية فى علاج اعتلال مركز الابصار السكرى', '<p dir=\"rtl\"><span style=\"font-size:14px\"><strong>التقنية الاحدث فى المملكة العربية السعودية فى علاج اعتلال مركز الابصار السكرى</strong></span></p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li><span style=\"font-size:14px\">بدون ألم<strong>&nbsp;.</strong></span></li>\r\n	<li><span style=\"font-size:14px\">بدون ترك ندبات على الشبكية .</span></li>\r\n	<li><span style=\"font-size:14px\">بديل للحقن الدوائى داخل العين .</span></li>\r\n</ul>', '2019-01-28 11:35:48', '2019-01-28 11:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `service_sections`
--

CREATE TABLE `service_sections` (
  `service_section_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'fa fa-book',
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_sections`
--

INSERT INTO `service_sections` (`service_section_id`, `name`, `description`, `image`, `class`, `icon`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'EQUIPMENTS - معدات', 'EQUIPMENTS - معدات', NULL, NULL, 'fa fa-book', NULL, 1, '2018-10-31 16:22:11', '2018-10-31 16:22:11'),
(2, 'TECHNOLOGIES - التقنيات المستخدمة', 'TECHNOLOGIES - التقنيات المستخدمة', NULL, NULL, 'fa fa-book', NULL, 1, '2018-10-31 16:24:21', '2018-10-31 16:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(17, NULL, NULL, NULL),
(18, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_type_translation`
--

CREATE TABLE `service_type_translation` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_type_translation`
--

INSERT INTO `service_type_translation` (`id`, `locale`, `name`, `service_type_id`, `created_at`, `updated_at`) VALUES
(32, 'en', 'Diagnostic equipment', 17, NULL, NULL),
(33, 'ar', 'الاجهزة العلاجية', 18, NULL, NULL),
(34, 'en', 'Therapeutic devices', 18, NULL, NULL),
(35, 'ar', 'الاجهزة التشخيصية', 17, NULL, '2018-12-22 07:24:28'),
(36, 'en', 'wwwwwwwwwwww', 19, '2018-12-22 07:32:16', '2018-12-22 07:32:16'),
(37, 'ar', 'wwwwwwwww', 19, '2018-12-22 07:32:16', '2018-12-22 07:32:16'),
(38, 'en', 'ثثثثثثث', 20, '2018-12-22 07:48:22', '2018-12-22 07:48:22'),
(39, 'ar', 'rrrrrrrrrrrrr', 20, '2018-12-22 07:48:22', '2018-12-22 07:48:22'),
(40, 'en', 'wwwwwwwww', 21, '2018-12-22 10:15:42', '2018-12-22 10:15:42'),
(41, 'ar', 'معرض عبق الماضي 2', 21, '2018-12-22 10:15:42', '2018-12-22 10:15:42'),
(42, 'en', 'test', 22, '2018-12-22 10:40:35', '2018-12-22 10:40:35'),
(43, 'ar', 'اختبار', 22, '2018-12-22 10:40:35', '2018-12-22 10:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_description` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci,
  `subscript_description` text COLLATE utf8mb4_unicode_ci,
  `email_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saturday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` decimal(10,8) DEFAULT NULL,
  `map_lng` decimal(11,8) DEFAULT NULL,
  `map_link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `site_title`, `site_description`, `phone`, `address_ar`, `address_en`, `subscript_description`, `email_1`, `email_2`, `facebook_link`, `twitter_link`, `youtube`, `whatsapp`, `instagram_link`, `google_link`, `about`, `created_at`, `updated_at`, `saturday_time`, `sunday_time`, `monday_time`, `tuesday_time`, `wednesday_time`, `thursday_time`, `map_lat`, `map_lng`, `map_link`) VALUES
(1, 'Dr Batal Center', 'EL BATAL CENTER', 'الرقم الموحد 920006659', 'جدة - حى الروضة - شارع الامير سلطان تقاطع شارع الكيال -برج المرجانة \r\n- مقابل محطة نفط-العيادات الاستشاريه فى الطابق السادس -مركز جراحة اليوم الواحد والعمليات فى الطابق التاسع', 'Jeddah, Saudi Arabia', 'كيفية الاشتراك هى ...', 'info@bataleyecenter.com', NULL, 'https://www.facebook.com/DrBatalCenter/?ref=br_rs', 'https://twitter.com/DrBatalClinics', 'https://www.youtube.com/channel/UCSmHtLKd3AedNaNYTCmPTRg', '9660555690310', 'https://www.instagram.com/drbatalcenter/', '#google', 'مجمع بطل التخصصى  لجراحات العين والليزر بجدة بالمملكة العربية السعودية -\r\nهو مجمع استشاري مُتخصص يضم عيادات استشارية باشراف الدكتور أحمد حسان البطل الطبيب المعروف والاستشاري في طب وجراحة عيون الاطفال والحول. \r\nو يتمتع مجمع د/بطل بخبرة كبيرة تزيد عن 7 سنوات', NULL, '2019-02-19 14:25:26', '08:00AM : 08:00PM', '08:00AM : 0800PM', '08:00AM : 08:00PM', '08:00AM : 08:00PM', '08:00AM : 08:00PM', '08:00AM : 02:00PM', '21.56761600', '39.14340900', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3710.497794338151!2d39.1444226!3d21.5664838!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xb9cc0446bfc52989!2sBatal+Eye+Center!5e0!3m2!1sen!2seg!4v1545736963252');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_items`
--

CREATE TABLE `sidebar_items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_access` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_items`
--

INSERT INTO `sidebar_items` (`item_id`, `menu_id`, `name`, `route`, `roles_access`, `icon`, `ordering`, `active`, `class`, `created_at`, `updated_at`) VALUES
(1, 1, 'allUsers', 'getAllUsers', '1', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(2, 1, 'addUser', 'getAddUser', '1', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(3, 2, 'all_settings', 'getSettings', '1', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(4, 3, 'all_message', 'getAllContacts', '1', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(5, 4, 'add_ads', 'ads_management.create', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(6, 4, 'all_ads', 'ads_management.index', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(7, 5, 'allPersons', 'getAllPersons', '15,', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(8, 5, 'addPerson', 'getAddPerson', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(9, 6, 'allsponsors', 'getAllSponsors', '15,', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(10, 6, 'addSponsor', 'getAddSponsor', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(11, 7, 'allChampionships', 'getAllChampionships', '1,2,3', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(12, 7, 'addChampionship', 'getAddChampionship', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(13, 8, 'all_images', 'imagesIndex', '15,', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(14, 8, 'add_images', 'addImages', '1,2,3', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(15, 8, 'videos', 'videosIndex', '1,2,3', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(16, 8, 'addVideo', 'addVideo', '15,', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(17, 9, 'allMatches', 'getAllMatches', '1,2,3', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(18, 9, 'addMatch', 'getAddMatch', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(19, 10, 'all_news', 'getAllBlogs', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(20, 10, 'add_news', 'getAddBlog', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(21, 11, 'all_links', 'getAllLinks', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(22, 11, 'add_links', 'getAddLink', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(23, 12, 'all_sliders', 'getAllSliders', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(24, 12, 'add_sliders', 'getAddSlider', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(25, 13, 'all_subscription', 'getAllSubscription', '1', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(26, 14, 'all_ticket', 'getAllTicket', '1,2', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(27, NULL, 'updateUser', 'getUserById', '1,2,3', NULL, 1, 1, NULL, NULL, NULL),
(29, NULL, 'getSliderById', 'getSliderById', NULL, NULL, 2, 1, NULL, NULL, NULL),
(30, 15, 'allServices', 'getAllServices', NULL, 'fa fa-sitemap', NULL, 1, NULL, NULL, NULL),
(31, 15, 'addService', 'getAddService', NULL, 'fa fa-sitemap', NULL, 1, NULL, NULL, NULL),
(32, NULL, 'updateService', 'getServiceById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(33, 16, 'sections_services', 'getAllServiceSections', NULL, 'fa fa-columns', NULL, 1, NULL, NULL, NULL),
(34, 16, 'addSectionServices', 'getAddServiceSection', NULL, 'fa fa-columns', NULL, 1, NULL, NULL, NULL),
(35, NULL, 'updateSectionServices', 'getServiceSectionById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(36, 1, 'getAllRoles', 'getAllRoles', NULL, NULL, 1, 1, NULL, NULL, NULL),
(37, 1, 'getAddRole', 'getAddRole', NULL, NULL, 1, 1, NULL, NULL, NULL),
(38, NULL, 'getRoleById', 'getRoleById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(39, 17, 'blog_categories', 'getAllBlogCategories', NULL, NULL, 1, 1, NULL, NULL, NULL),
(40, 17, 'add_blog_category', 'getAddBlogCategory', '1,1,3', NULL, 2, 1, NULL, NULL, NULL),
(41, NULL, 'update_blog_categories', 'getBlogsCategoriesById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(42, NULL, 'update_blog', 'getBlogById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(43, 18, 'allPages', 'getAllPages', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(44, 18, 'addPage', 'getAddPage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(45, NULL, 'updatePages', 'getPageById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(46, 19, 'all_images', 'imagesIndex', NULL, 'fa fa-images', 1, 1, NULL, NULL, NULL),
(47, 19, 'add_images', 'addImages', NULL, 'fa fa-images', 2, 1, NULL, NULL, NULL),
(48, 19, 'videos', 'videosIndex', NULL, 'fa fa-images', 3, 1, NULL, NULL, NULL),
(49, 19, 'addVideo', 'addVideo', NULL, 'fa fa-images', 4, 1, NULL, NULL, NULL),
(50, NULL, 'getImage', 'getImage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(51, NULL, 'getVideo', 'getVideo', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(52, NULL, 'getAlbumImage', 'getAlbumImage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(53, NULL, 'getVideoThumb', 'getVideoThumb', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(54, NULL, 'update_link', 'getLinkById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(55, NULL, 'update_person', 'getPersonById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(56, 2, 'languages_translations', 'backendLanguage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(57, NULL, 'getCommentsByPostId', 'getCommentsByPostId', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(58, 20, 'allClients', 'getAllClients', NULL, 'fa fa-users', NULL, 1, NULL, NULL, NULL),
(59, 20, 'addClient', 'getAddClient', NULL, 'fa fa-pencil', NULL, 1, NULL, NULL, NULL),
(60, NULL, 'updateClient', 'getClientById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(61, 2, 'Facebook', 'getFacebook', NULL, 'fa fa-users', NULL, 1, NULL, NULL, NULL),
(62, 15, 'AllServiceType', 'getAllServiceType', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(63, NULL, 'getAddServiceType', 'getAddServiceType', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(64, NULL, 'getServiceTypeById', 'getServiceTypeById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(65, 21, 'getAllJoinus', 'getAllJoinus', NULL, 'fa fa-users', NULL, 1, NULL, NULL, NULL),
(66, NULL, 'getAddJoinus', 'getAddJoinus', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(67, NULL, 'getJoinusById', 'getJoinusById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(68, 22, 'getAllLanding', 'getAllLanding', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(69, NULL, 'getLandingById', 'getLandingById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(70, 22, 'videosLandingIndex', 'videosLandingIndex', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(71, NULL, 'addLandingVideo', 'addLandingVideo', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(72, NULL, 'getLandingVideo', 'getLandingVideo', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(73, 22, 'getAllcontactLanding', 'getAllcontactLanding', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(74, 2, 'Instagram', 'getInstagram', '1', 'fa fa-users', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menus`
--

CREATE TABLE `sidebar_menus` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_access` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `have_header` int(11) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_menus`
--

INSERT INTO `sidebar_menus` (`menu_id`, `name`, `roles_access`, `icon`, `ordering`, `active`, `have_header`, `class`, `created_at`, `updated_at`) VALUES
(1, 'users', '1', 'fa fa-users', 1, 1, 1, NULL, NULL, NULL),
(2, 'settings', '1', 'fa fa-sitemap', 7, 1, 1, NULL, NULL, NULL),
(3, 'message', '1', 'fa fa-pencil', 6, 0, 1, NULL, NULL, NULL),
(4, 'ads', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(5, 'persons', '1', 'fa fa-users', 6, 1, 1, NULL, NULL, NULL),
(6, 'sponsors', '1', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(7, 'championships', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(8, 'Media', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(9, 'Matches', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(10, 'news', '1,2,3', 'fa fa-pencil', 6, 1, 1, NULL, NULL, NULL),
(11, 'links', '1,2,3', 'fa fa-pencil', 6, 1, 1, NULL, NULL, NULL),
(12, 'sliders', '1,2,3', 'fa fa-pencil', 6, 1, 1, NULL, NULL, NULL),
(13, 'subscription', '1', 'fa fa-sitemap', 7, 0, 1, NULL, NULL, NULL),
(14, 'ticket', '1,2', 'fa fa-sitemap', 7, 0, 1, NULL, NULL, NULL),
(15, 'services', '', 'fa fa-sitemap', 2, 1, 1, NULL, NULL, NULL),
(16, 'sections_services', '', 'fa fa-sitemap', 3, 1, 1, NULL, NULL, NULL),
(17, 'blog_categories', '1,2,3,4', 'fa fa-sitemap', 4, 1, 1, NULL, NULL, NULL),
(18, 'pages', '1,2', 'fa fa-book', 5, 1, 1, NULL, NULL, NULL),
(19, 'Media', '', 'fa fa-sitemap', 5, 1, 1, NULL, NULL, NULL),
(20, 'clients', '', 'fa fa-users', 8, 1, 1, NULL, NULL, NULL),
(21, 'Joinus', '', 'fa fa-users', 0, 1, 1, NULL, NULL, NULL),
(22, 'landing_page', '', 'fa fa-users', 0, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `data_transition` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'slideup',
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `image`, `data_transition`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '000215slide.png', 'slideup', 1, 1, 1, '2018-11-01 22:01:19', '2018-11-01 22:02:15'),
(5, '15091201.jpg', 'slideup', 1, 1, 1, '2019-01-27 14:17:02', '2019-01-30 15:09:12'),
(7, '145601Layer3.png', 'slideup', 1, 1, 1, '2019-01-31 14:40:36', '2019-01-31 14:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_translation`
--

CREATE TABLE `sliders_translation` (
  `id` int(11) NOT NULL,
  `slider_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders_translation`
--

INSERT INTO `sliders_translation` (`id`, `slider_id`, `locale`, `title`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'DR Ahmed Elbatal', '“We\'ll do our best to deliver the best possible healthcare and customer service to you!”', '“We\'ll do our best to deliver the best possible healthcare !”', '2018-11-01 22:01:19', '2018-11-05 16:08:56'),
(2, 1, 'ar', 'دكتور احمد بطل', '\"سنبذل قصارى جهدنا لتقديم أفضل رعاية صحية وخدمة عملاء ممكنة لك!\"', NULL, '2018-11-01 22:01:19', '2018-11-05 16:55:04'),
(3, 2, 'en', 'DR Ahmed Elbatal', '“We\'ll do our best to deliver the best possible healthcare !”', NULL, '2018-11-05 16:50:31', '2018-11-05 16:53:39'),
(4, 2, 'ar', 'دكتور احمد بطل', '\"سنبذل قصارى جهدنا لتقديم أفضل رعاية صحية !\"', '“We\'ll do our best to deliver the best possible healthcare !”', '2018-11-05 16:50:31', '2018-11-05 16:55:29'),
(5, 3, 'en', NULL, NULL, NULL, '2018-11-11 17:03:24', '2018-11-11 17:03:24'),
(6, 3, 'ar', NULL, NULL, NULL, '2018-11-11 17:03:24', '2018-11-11 17:03:24'),
(7, 4, 'en', NULL, NULL, NULL, '2019-01-27 14:03:35', '2019-01-27 14:03:35'),
(8, 4, 'ar', 'مجمع بطل التخصصى', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', '2019-01-27 14:03:35', '2019-01-27 14:05:29'),
(9, 5, 'en', 'Batal Specialist Center', 'Welcome to Batal Specialist Center  through a qualified and distinguished medical staff', NULL, '2019-01-27 14:17:02', '2019-01-31 14:07:53'),
(10, 5, 'ar', 'مجمع بطل التخصصى', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز', NULL, '2019-01-27 14:17:02', '2019-01-27 14:18:54'),
(11, 6, 'en', 'Batal Specialist Center', '\" For Your Eyes \"', NULL, '2019-01-31 14:13:04', '2019-01-31 14:14:55'),
(12, 6, 'ar', 'مجمع بطل التخصصى', '\" مجمع لاجل عيونكم \"', NULL, '2019-01-31 14:13:04', '2019-01-31 14:13:04'),
(13, 7, 'en', 'Batal Specialist Center', '\" For Your Eyes \"', NULL, '2019-01-31 14:40:36', '2019-01-31 14:40:36'),
(14, 7, 'ar', 'مجمع بطل التخصصى', '\" مجمع لاجل عيونكم \"', NULL, '2019-01-31 14:40:36', '2019-01-31 14:40:36'),
(15, 8, 'en', NULL, NULL, NULL, '2019-01-31 18:27:53', '2019-01-31 18:27:53'),
(16, 8, 'ar', 'test', 'test', 'test', '2019-01-31 18:27:53', '2019-01-31 18:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'جهينه', 'Vw6ZcXHTfZ1522746513.png', '2018-04-03 14:08:33', '2018-04-03 14:08:33'),
(2, 'حديد المصرين', 'o2i1IqClMa1522746534.png', '2018-04-03 14:08:54', '2018-04-03 14:08:54'),
(3, 'دومتى', 'WTgBc4K2a91522746734.png', '2018-04-03 14:12:14', '2018-04-03 14:12:14'),
(4, 'shell helix', '82UOiEA9ns1522746942.png', '2018-04-03 14:15:42', '2018-04-03 14:15:42'),
(5, 'دومينوز', 'ym2bYmltM81522746965.png', '2018-04-03 14:16:05', '2018-04-03 14:16:05'),
(6, 'راعى', 'nwcUB4MyGi1522842620.png', '2018-04-04 16:50:20', '2018-04-04 16:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'احمد محمد بكرى', 'ahmed@yahoo.com', '01149671770', '2018-05-14 20:28:02', '2018-05-14 20:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'البطل سنتر', '2018-05-06 14:43:26', '2018-05-06 14:43:26'),
(2, 'حمل', '2018-05-07 18:57:01', '2018-05-07 18:57:01'),
(3, 'تكنولوجيا', '2018-06-01 17:51:29', '2018-06-01 17:51:29'),
(4, 'سعادة', '2018-06-05 14:08:50', '2018-06-05 14:08:50'),
(5, 'طفل', '2018-06-05 14:10:25', '2018-06-05 14:10:25'),
(6, 'طبيب', '2018-10-15 21:56:35', '2018-10-15 21:56:35'),
(7, 'رعاية', '2018-10-16 06:42:05', '2018-10-16 06:42:05'),
(8, 'حديثى الولادة', '2018-10-16 06:48:28', '2018-10-16 06:48:28'),
(9, 'تفاصيل', '2018-10-27 13:09:59', '2018-10-27 13:09:59'),
(10, 'الأم', '2018-10-29 14:31:09', '2018-10-29 14:31:09'),
(11, 'الأطفال', '2018-10-29 14:35:39', '2018-10-29 14:35:39'),
(12, 'معدات حديثة', '2018-10-29 15:39:46', '2018-10-29 15:39:46'),
(13, 'أجهزة طبية', '2018-11-29 17:00:35', '2018-11-29 17:00:35'),
(14, 'خاص', '2018-11-29 17:07:53', '2018-11-29 17:07:53'),
(15, 'طفلك', '2018-10-30 12:23:37', '2018-10-30 12:23:37'),
(16, 'صحة', '2018-10-30 12:24:40', '2018-10-30 12:24:40'),
(17, 'رعاية', '2018-10-30 12:28:48', '2018-10-30 12:28:48'),
(18, 'بيبى', '2018-10-30 12:55:26', '2018-10-30 12:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `tag_post`
--

CREATE TABLE `tag_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_post`
--

INSERT INTO `tag_post` (`id`, `post_id`, `tag_id`) VALUES
(75, 4, 17),
(2, 29, 2),
(3, 33, 3),
(4, 33, 2),
(6, 37, 5),
(72, 1, 2),
(71, 1, 1),
(67, 2, 13),
(66, 2, 14),
(74, 3, 3),
(73, 3, 16),
(77, 5, 17),
(27, 6, 11),
(28, 7, 11),
(29, 8, 11),
(43, 5, 2),
(70, 1, 15),
(76, 4, 2),
(78, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `full_name`, `email`, `phone`, `ticket_name`, `created_at`, `updated_at`) VALUES
(1, 'أحمد محمد بكرى', 'ahmed@yahoo.com', '01149671770', 'شرم الشيخ', '2018-05-14 20:28:37', '2018-05-14 20:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `word` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `word`, `translation`, `created_at`, `updated_at`) VALUES
(1, 'ar', 'about_us', 'من نحن', NULL, NULL),
(2, 'en', 'about_us', 'About Us', NULL, NULL),
(3, 'ar', 'expertise', 'التخصصات', NULL, NULL),
(4, 'en', 'expertise', 'EXPERTISE', NULL, NULL),
(5, 'ar', 'meet_our', 'أطباءنا', NULL, NULL),
(6, 'en', 'meet_our', 'meet_our', NULL, NULL),
(7, 'ar', 'doctors', 'الاطباء', NULL, NULL),
(8, 'en', 'doctors', 'doctors', NULL, NULL),
(9, 'ar', 'doctors_second_title', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', NULL, NULL),
(10, 'en', 'doctors_second_title', 'Welcome to Specialized Batal complex through a qualified and distinguished medical staff trained in a special care and care to provide advanced and satisfactory services for the center\'s pioneers', NULL, NULL),
(11, 'ar', 'gallery', 'المعرض', NULL, NULL),
(12, 'en', 'gallery', 'gallery', NULL, NULL),
(13, 'ar', 'gallery_second_title', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', NULL, NULL),
(14, 'en', 'gallery_second_title', 'Welcome to Dr. Champion of eye and laser surgery through a qualified and distinguished medical staff trained in a special care and care to provide advanced and satisfactory services for the center\'s pioneers', NULL, NULL),
(15, 'ar', 'welcome_to_our', 'مرحباً بك فى', NULL, NULL),
(16, 'en', 'welcome_to_our', 'welcome_to_our', NULL, NULL),
(17, 'ar', 'we_are_experts_doctor', 'استشاريون و خبراء في طب العيون', NULL, NULL),
(18, 'en', 'we_are_experts_doctor', 'We are Expert doctors in Ophthalmology', NULL, NULL),
(19, 'ar', 'we_will_be_happy', 'سنكون سعداء للاتصال بك', NULL, NULL),
(20, 'en', 'we_will_be_happy', 'We will be happy to contact you', NULL, NULL),
(21, 'ar', 'ask_your_doctor', 'إسأل طبيبك', NULL, NULL),
(22, 'en', 'ask_your_doctor', 'ASK YOUR DOCTOR', NULL, NULL),
(23, 'ar', 'our_mission', 'مهمتنا', NULL, NULL),
(24, 'en', 'our_mission', 'Our Mission', NULL, NULL),
(25, 'ar', 'our_vision', 'رؤيتنا', NULL, NULL),
(26, 'en', 'our_vision', 'our vision', NULL, NULL),
(27, 'ar', 'our_doctors', 'فريقنا الطبى', NULL, NULL),
(28, 'en', 'our_doctors', 'MEDICAL TEAM', NULL, NULL),
(29, 'ar', 'home_page', 'الرئيسية', NULL, NULL),
(30, 'en', 'home_page', 'Home Page', NULL, NULL),
(31, 'ar', 'equipments', 'الاجهزه  الطبية', NULL, NULL),
(32, 'en', 'equipments', 'equipments', NULL, NULL),
(33, 'ar', 'equipments_second_title', 'وصف قصير للمعدات', NULL, NULL),
(34, 'en', 'equipments_second_title', 'equipments_second_title', NULL, NULL),
(35, 'ar', 'technologies', 'أحدث التقنيات', NULL, NULL),
(36, 'en', 'technologies', 'technologies', NULL, NULL),
(37, 'ar', 'our_technologies', 'احدث التقنيات', NULL, NULL),
(38, 'en', 'our_technologies', 'our technologies', NULL, NULL),
(39, 'ar', 'technologies_second_title', 'أحدث التقنيات الموجودة بمجمع بطل التخصصى', NULL, NULL),
(40, 'en', 'technologies_second_title', 'technologies_second_title', NULL, NULL),
(41, 'ar', 'contactus', 'اتصل بنا', NULL, NULL),
(42, 'en', 'contactus', 'contactus', NULL, NULL),
(43, 'ar', 'contactus_second_title', 'للتواصل ، أكمل هذا النموذج وسنوافيك بالرد بأسرع وقت ممكن.', NULL, NULL),
(44, 'en', 'contactus_second_title', 'To get in touch, complete this form and we\'ll get back to you as quickly as possible.', NULL, NULL),
(45, 'ar', 'send_message', 'إرسال', NULL, NULL),
(46, 'en', 'send_message', 'Send Message', NULL, NULL),
(47, 'ar', 'contact_name', 'من فضلك ادخل اسمك بالكامل', NULL, NULL),
(48, 'en', 'contact_name', 'Please Enter Your Full Name', NULL, NULL),
(49, 'ar', 'contact_email', 'من فضلك أدخل بريدك الألكترونى', NULL, NULL),
(50, 'en', 'contact_email', 'Please Enter Your E-mail', NULL, NULL),
(51, 'ar', 'contact_phone', 'من فضلك أدخل رقم تليقونك', NULL, NULL),
(52, 'en', 'contact_phone', 'Please Enter Your Phone', NULL, NULL),
(53, 'ar', 'contact_message', 'الرسالة المراد إرسالها', NULL, NULL),
(54, 'en', 'contact_message', 'Message', NULL, NULL),
(55, 'ar', 'online_appointment', 'حجز عبر الانترنت', NULL, NULL),
(56, 'en', 'online_appointment', 'ONLINE APPOINTMENT', NULL, NULL),
(57, 'ar', 'read_more', 'قراءة المزيد', NULL, NULL),
(58, 'en', 'read_more', 'Read More', NULL, NULL),
(59, 'ar', 'go_to_external_link', 'قراءة المزيد', NULL, NULL),
(60, 'en', 'go_to_external_link', 'See More', NULL, NULL),
(61, 'ar', 'we_are_here', 'نحن هنا من اجلك', NULL, NULL),
(62, 'en', 'we_are_here', 'we are here for you', NULL, NULL),
(63, 'ar', 'book_an_appintment', 'احجز اونلاين من هنا', NULL, NULL),
(64, 'en', 'book_an_appintment', 'book an appintment', NULL, NULL),
(65, 'ar', 'book_now', 'احجز الان', NULL, NULL),
(66, 'en', 'book_now', 'Book Now', NULL, NULL),
(67, 'ar', 'booking_message', 'لقد تم ارسال طلبك بنجاح', NULL, NULL),
(68, 'en', 'booking_message', 'Sent Successfully', NULL, NULL),
(69, 'ar', 'press_ok_to_hide_msg', 'اضغط  ok لتختفى الرسالة', NULL, NULL),
(70, 'en', 'press_ok_to_hide_msg', 'press ok to hide msg', NULL, NULL),
(71, 'ar', 'blogs', 'الأخبار', NULL, NULL),
(72, 'en', 'blogs', 'Blogs', NULL, NULL),
(73, 'ar', 'recent_blogs', 'أحدث الأخبار', NULL, NULL),
(74, 'en', 'recent_blogs', 'Recent News', NULL, NULL),
(75, 'ar', 'blog_categories', 'الفئات', NULL, NULL),
(76, 'en', 'blog_categories', 'categories', NULL, NULL),
(77, 'ar', 'recent_comments', 'أحدث التعليقات', NULL, NULL),
(78, 'en', 'recent_comments', 'Recent Comments\r\n', NULL, NULL),
(79, 'ar', 'search', 'بحث', NULL, NULL),
(80, 'en', 'search', 'search', NULL, NULL),
(81, 'ar', 'post_comment', 'نشر التعليق', NULL, NULL),
(82, 'en', 'post_comment', 'Post Comment', NULL, NULL),
(83, 'ar', 'comment', 'التعليق', NULL, NULL),
(84, 'en', 'comment', 'Comment', NULL, NULL),
(85, 'ar', 'let_comment', 'اترك تعليق', NULL, NULL),
(86, 'en', 'let_comment', 'Leave a Comment', NULL, NULL),
(87, 'ar', 'comment_second_title', 'وصف قصير للتعليق', NULL, NULL),
(88, 'en', 'comment_second_title', 'Your email address will not be published. Required fields are marked *', NULL, NULL),
(89, 'ar', 'tags', 'التاجات', NULL, NULL),
(90, 'en', 'tags', 'Tags', NULL, NULL),
(91, 'ar', 'saturday', 'السبت', NULL, NULL),
(92, 'en', 'saturday', 'Saturday', NULL, NULL),
(93, 'ar', 'sunday', 'الأحد', NULL, NULL),
(94, 'en', 'sunday', 'Sunday', NULL, NULL),
(95, 'ar', 'monday', 'الأثنين', NULL, NULL),
(96, 'en', 'monday', 'Monday', NULL, NULL),
(97, 'ar', 'tuesday', 'الثلاثاء', NULL, NULL),
(98, 'en', 'tuesday', 'Tuesday', NULL, NULL),
(99, 'ar', 'wednesday', 'الأربعاء', NULL, NULL),
(100, 'en', 'wednesday', 'Wednesday', NULL, NULL),
(101, 'ar', 'thursday', 'الخميس', NULL, NULL),
(102, 'en', 'thursday', 'Thursday', NULL, NULL),
(103, 'ar', 'morjan_tower', 'العنوان', NULL, NULL),
(104, 'en', 'morjan_tower', 'Address', NULL, NULL),
(105, 'ar', 'online_appointment_second_title', 'نرحب بكم في مجمع بطل التخصصي من خلال طاقم طبي متمكن ومتميز تم تدريبه بأسلوب وعناية خاصة لتوفير خدمات متطورة ومرضية لرواد المجمع', NULL, NULL),
(106, 'en', 'online_appointment_second_title', 'Welcome to Dr. Champion of eye and laser surgery through a qualified and distinguished medical staff trained in a special care and care to provide advanced and satisfactory services for the center\'s pioneers', NULL, NULL),
(107, 'ar', 'doctor_time', 'توقيت الكشف (المفضل)', NULL, NULL),
(108, 'en', 'doctor_time', 'Time', NULL, NULL),
(109, 'en', 'lateast-news-tit', 'Lateast News Title', NULL, NULL),
(110, 'ar', 'lateast-news-tit', 'أحدث الاخبار', NULL, NULL),
(111, 'en', 'lateast-news-disc', 'lateast-news-disc', NULL, NULL),
(112, 'ar', 'lateast-news-disc', 'أحدث أخبار مجمع بطل التخصصى', NULL, NULL),
(113, 'en', 'lateast-twitts', 'Lateast Twitts', NULL, NULL),
(114, 'ar', 'lateast-twitts', 'اخر التغريدات', NULL, NULL),
(115, 'en', 'please_select', 'please_select', NULL, NULL),
(116, 'ar', 'please_select', 'اختر من فضلك', NULL, NULL),
(117, 'en', 'service_type', 'service_type', NULL, NULL),
(118, 'ar', 'service_type', 'نوع الخدمه', NULL, NULL),
(119, 'en', 'medical equipments', 'medical equipments', NULL, NULL),
(120, 'ar', 'medical equipments', 'الأجهزه الطبيه', NULL, NULL),
(121, 'en', 'specialist', 'specialist', NULL, NULL),
(122, 'ar', 'specialist', 'التخصص', NULL, NULL),
(123, 'en', 'degree', 'degree', NULL, NULL),
(124, 'ar', 'degree', 'الدرجه العلميه', NULL, NULL),
(125, 'en', 'contact_info', 'contact_info', NULL, NULL),
(126, 'ar', 'contact_info', 'بيانات التواصل', NULL, NULL),
(127, 'en', 'work_days', 'work_days', NULL, NULL),
(128, 'ar', 'work_days', 'ايام العمل', NULL, NULL),
(129, 'en', 'about', 'about', NULL, NULL),
(130, 'ar', 'about', 'عن', NULL, NULL),
(131, 'en', 'person_type', 'person_type', NULL, NULL),
(132, 'ar', 'person_type', 'person_type', NULL, NULL),
(133, 'en', 'medical team', 'medical team', NULL, NULL),
(134, 'ar', 'medical team', 'فريقنا الطبى', NULL, NULL),
(135, 'en', 'ask_now', 'ask_now', NULL, NULL),
(136, 'ar', 'ask_now', 'إسأل الان', NULL, NULL),
(137, 'en', 'joinus', 'Join Us', NULL, NULL),
(138, 'ar', 'joinus', 'انضم الينا', NULL, NULL),
(139, 'en', 'sorry', 'sorry', NULL, NULL),
(140, 'ar', 'sorry', 'عفوا', NULL, NULL),
(141, 'en', 'The Page Your Looking for Does Not Exist.', 'The Page Your Looking for Does Not Exist.', NULL, NULL),
(142, 'ar', 'The Page Your Looking for Does Not Exist.', 'الصفحه المطلوبه غير موجوده.', NULL, NULL),
(143, 'en', 'EL BATAL CENTER', 'EL BATAL CENTER', NULL, NULL),
(144, 'ar', 'EL BATAL CENTER', 'مجمع بطل التخصصي', NULL, NULL),
(145, 'en', 'Instgram', 'Instagram', NULL, NULL),
(146, 'ar', 'Instgram', 'انستجرام', NULL, NULL),
(147, 'en', 'commenting_message', 'commenting_message', NULL, NULL),
(148, 'ar', 'commenting_message', 'commenting_message', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_access` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `active` int(11) DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `items_access`, `password`, `created_by`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super', 'super@elbatal.com', NULL, '$2y$10$2IcFBQFddbE365YaLdNEDuNQ18zV7cpRW05r.WMvKgffr.hCJIIcy', 1, 1, 'q9lBhTF1ckbcGnYPQlAKYkkHgyDhvpfRjhSYUm26OnXSwc3vxxLDSruNTWO6', NULL, NULL),
(3, 2, 'test', 'test@test.com', NULL, '$2y$10$VF2EBYH5lxGXp8EAxxjZZupfZDQZUMIufotAKrgAx6HISFgTcEosG', 1, 1, NULL, '2019-02-18 15:05:36', '2019-02-18 15:05:36'),
(5, 12, 'callcenter', 'callcenter@elbatal.com', NULL, '$2y$10$3s.IFSqHxUbj2E4I9rRspuxXH2YOi860QcmmDy8zKwGnzX7o3snbG', 1, 1, '0bCX8SpqHc05Il6v0Ysnm5ssHa9j9TstRuySG6bQ77BdKuURSDtyABJWpwK3', '2019-02-18 16:01:52', '2019-02-18 16:01:52'),
(6, 3, 'Moaaz Ajjan', 'moaazaj@gmail.com', NULL, '$2y$10$aGB6ttL9vm/Lax1d6TAS4eEXMSiiPkVI7l8D0vwnU/LlhN91xeQwy', 1, 1, NULL, '2019-02-24 14:51:12', '2019-02-24 14:51:12'),
(7, 2, 'DrWadah', 'DrWadah@elbatal.com', NULL, '$2y$10$Z0CrftzYcOHz93C6AyyJpOIDqmG84V2B6Fk55rP5QVpb.XUdt7wr2', 1, 1, 'BqiBPIT2AKjEKSlguLdVfWHJ7HyWrsQSJ9VEXy1G8OdGZPJL8AW0Hokhp0dy', '2019-02-26 17:32:29', '2019-02-26 17:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_access` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `items_access`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'a:73:{i:0;s:11:\"getAllUsers\";i:1;s:10:\"getAddUser\";i:2;s:11:\"getSettings\";i:3;s:14:\"getAllContacts\";i:4;s:21:\"ads_management.create\";i:5;s:20:\"ads_management.index\";i:6;s:13:\"getAllPersons\";i:7;s:12:\"getAddPerson\";i:8;s:14:\"getAllSponsors\";i:9;s:13:\"getAddSponsor\";i:10;s:19:\"getAllChampionships\";i:11;s:18:\"getAddChampionship\";i:12;s:11:\"imagesIndex\";i:13;s:9:\"addImages\";i:14;s:11:\"videosIndex\";i:15;s:8:\"addVideo\";i:16;s:13:\"getAllMatches\";i:17;s:11:\"getAddMatch\";i:18;s:11:\"getAllBlogs\";i:19;s:10:\"getAddBlog\";i:20;s:11:\"getAllLinks\";i:21;s:10:\"getAddLink\";i:22;s:13:\"getAllSliders\";i:23;s:12:\"getAddSlider\";i:24;s:18:\"getAllSubscription\";i:25;s:12:\"getAllTicket\";i:26;s:11:\"getUserById\";i:27;s:13:\"getSliderById\";i:28;s:14:\"getAllServices\";i:29;s:13:\"getAddService\";i:30;s:14:\"getServiceById\";i:31;s:21:\"getAllServiceSections\";i:32;s:20:\"getAddServiceSection\";i:33;s:21:\"getServiceSectionById\";i:34;s:11:\"getAllRoles\";i:35;s:10:\"getAddRole\";i:36;s:11:\"getRoleById\";i:37;s:20:\"getAllBlogCategories\";i:38;s:18:\"getAddBlogCategory\";i:39;s:22:\"getBlogsCategoriesById\";i:40;s:11:\"getBlogById\";i:41;s:11:\"getAllPages\";i:42;s:10:\"getAddPage\";i:43;s:11:\"getPageById\";i:44;s:11:\"imagesIndex\";i:45;s:9:\"addImages\";i:46;s:11:\"videosIndex\";i:47;s:8:\"addVideo\";i:48;s:8:\"getImage\";i:49;s:8:\"getVideo\";i:50;s:13:\"getAlbumImage\";i:51;s:13:\"getVideoThumb\";i:52;s:11:\"getLinkById\";i:53;s:13:\"getPersonById\";i:54;s:15:\"backendLanguage\";i:55;s:19:\"getCommentsByPostId\";i:56;s:13:\"getAllClients\";i:57;s:12:\"getAddClient\";i:58;s:13:\"getClientById\";i:59;s:11:\"getFacebook\";i:60;s:17:\"getAllServiceType\";i:61;s:17:\"getAddServiceType\";i:62;s:18:\"getServiceTypeById\";i:63;s:12:\"getAllJoinus\";i:64;s:12:\"getAddJoinus\";i:65;s:13:\"getJoinusById\";i:66;s:13:\"getAllLanding\";i:67;s:14:\"getLandingById\";i:68;s:18:\"videosLandingIndex\";i:69;s:15:\"addLandingVideo\";i:70;s:15:\"getLandingVideo\";i:71;s:20:\"getAllcontactLanding\";i:72;s:12:\"getInstagram\";}', NULL, '2019-02-16 11:59:07'),
(2, 'Admin', 'a:41:{i:0;s:11:\"getSettings\";i:1;s:14:\"getAllContacts\";i:2;s:21:\"ads_management.create\";i:3;s:20:\"ads_management.index\";i:4;s:13:\"getAllPersons\";i:5;s:12:\"getAddPerson\";i:6;s:14:\"getAllSponsors\";i:7;s:11:\"imagesIndex\";i:8;s:9:\"addImages\";i:9;s:11:\"videosIndex\";i:10;s:8:\"addVideo\";i:11;s:11:\"getAllBlogs\";i:12;s:10:\"getAddBlog\";i:13;s:13:\"getAllSliders\";i:14;s:12:\"getAddSlider\";i:15;s:13:\"getSliderById\";i:16;s:14:\"getAllServices\";i:17;s:13:\"getAddService\";i:18;s:14:\"getServiceById\";i:19;s:21:\"getAllServiceSections\";i:20;s:20:\"getAddServiceSection\";i:21;s:21:\"getServiceSectionById\";i:22;s:20:\"getAllBlogCategories\";i:23;s:18:\"getAddBlogCategory\";i:24;s:22:\"getBlogsCategoriesById\";i:25;s:11:\"getBlogById\";i:26;s:11:\"getAllPages\";i:27;s:11:\"getPageById\";i:28;s:11:\"imagesIndex\";i:29;s:9:\"addImages\";i:30;s:11:\"videosIndex\";i:31;s:8:\"addVideo\";i:32;s:13:\"getPersonById\";i:33;s:15:\"backendLanguage\";i:34;s:13:\"getAllClients\";i:35;s:12:\"getAddClient\";i:36;s:13:\"getClientById\";i:37;s:17:\"getAllServiceType\";i:38;s:13:\"getAllLanding\";i:39;s:18:\"videosLandingIndex\";i:40;s:20:\"getAllcontactLanding\";}', NULL, '2019-02-26 17:58:24'),
(3, 'Writer', 'a:17:{i:0;s:11:\"getSettings\";i:1;s:21:\"ads_management.create\";i:2;s:20:\"ads_management.index\";i:3;s:13:\"getAllPersons\";i:4;s:12:\"getAddPerson\";i:5;s:11:\"getAllBlogs\";i:6;s:10:\"getAddBlog\";i:7;s:13:\"getAllSliders\";i:8;s:12:\"getAddSlider\";i:9;s:13:\"getSliderById\";i:10;s:14:\"getAllServices\";i:11;s:14:\"getServiceById\";i:12;s:20:\"getAddServiceSection\";i:13;s:11:\"getAllPages\";i:14;s:17:\"getAllServiceType\";i:15;s:13:\"getAllLanding\";i:16;s:18:\"videosLandingIndex\";}', NULL, '2019-02-26 17:30:27'),
(5, 'abdalaa', 'a:6:{i:0;s:11:\"getAllUsers\";i:1;s:10:\"getAddUser\";i:2;s:14:\"getAllContacts\";i:3;s:21:\"ads_management.create\";i:4;s:13:\"getAllPersons\";i:5;s:12:\"getAddPerson\";}', '2018-10-24 15:56:57', '2018-10-24 16:08:14'),
(6, 'test', 'a:2:{i:0;s:10:\"getAddUser\";i:1;s:12:\"getAddSlider\";}', '2018-10-25 05:53:00', '2018-10-25 05:53:00'),
(7, 'safwat', 'a:3:{i:0;s:11:\"getAllUsers\";i:1;s:11:\"getSettings\";i:2;s:21:\"ads_management.create\";}', '2018-10-25 05:57:00', '2018-10-25 05:57:00'),
(8, 'كاتب اسليدر', 'a:2:{i:0;s:13:\"getAllSliders\";i:1;s:12:\"getAddSlider\";}', '2018-10-25 07:27:29', '2018-10-25 07:27:29'),
(9, 'يكتب اسليدر', 'a:1:{i:0;s:12:\"getAddSlider\";}', '2018-10-25 10:16:38', '2018-10-25 10:18:46'),
(10, 'mostapha', 'a:37:{i:0;s:11:\"getAllUsers\";i:1;s:10:\"getAddUser\";i:2;s:11:\"getSettings\";i:3;s:14:\"getAllContacts\";i:4;s:21:\"ads_management.create\";i:5;s:20:\"ads_management.index\";i:6;s:13:\"getAllPersons\";i:7;s:12:\"getAddPerson\";i:8;s:14:\"getAllSponsors\";i:9;s:13:\"getAddSponsor\";i:10;s:19:\"getAllChampionships\";i:11;s:18:\"getAddChampionship\";i:12;s:11:\"imagesIndex\";i:13;s:9:\"addImages\";i:14;s:11:\"videosIndex\";i:15;s:8:\"addVideo\";i:16;s:13:\"getAllMatches\";i:17;s:11:\"getAddMatch\";i:18;s:11:\"getAllBlogs\";i:19;s:10:\"getAddBlog\";i:20;s:11:\"getAllLinks\";i:21;s:10:\"getAddLink\";i:22;s:13:\"getAllSliders\";i:23;s:12:\"getAddSlider\";i:24;s:18:\"getAllSubscription\";i:25;s:12:\"getAllTicket\";i:26;s:11:\"getUserById\";i:27;s:13:\"getSliderById\";i:28;s:14:\"getAllServices\";i:29;s:13:\"getAddService\";i:30;s:14:\"getServiceById\";i:31;s:21:\"getAllServiceSections\";i:32;s:20:\"getAddServiceSection\";i:33;s:21:\"getServiceSectionById\";i:34;s:11:\"getAllRoles\";i:35;s:10:\"getAddRole\";i:36;s:11:\"getRoleById\";}', '2018-10-25 12:08:06', '2018-10-25 12:09:37'),
(11, 'كاتب', 'a:3:{i:0;s:14:\"getAllServices\";i:1;s:13:\"getAddService\";i:2;s:14:\"getServiceById\";}', '2018-10-25 12:22:03', '2018-10-25 12:22:03'),
(12, 'callcenter', 'a:2:{i:0;s:14:\"getAllContacts\";i:1;s:20:\"getAllcontactLanding\";}', '2019-02-18 15:02:38', '2019-02-18 15:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `type_page` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `type`, `video`, `thumbnail`, `type_page`, `created_at`, `updated_at`) VALUES
(10, 'لأجل الوطن .. لأجل عيونكم', 'إذا كنت ممن يعشقون تراب هذا الوطن و تنوي الالتحاق بأحد الكليات العسكرية و يمنعك ضعف النظر فنحن سندعمك . . . للاستعلام الرجاء الاتصال \r\n920006659', 'youtube', 'https://www.youtube.com/watch?v=9ddriK2wW2E', NULL, NULL, '2018-12-02 10:34:28', '2018-12-02 10:34:28'),
(9, 'جفاف العين', 'فيديو لدكتور بطل لشرح جفاف العين', 'youtube', 'https://www.youtube.com/watch?v=hoJR539ZjfM', NULL, NULL, '2018-12-02 10:33:32', '2018-12-02 10:33:32'),
(6, 'presbyond', 'presbyond  \r\nتقنية تعالج ضعف النظر وطول النظر لمن فوق ال 40 عام مع ضمان التخلص من نظارة القراءة للأبد  وتعمل  التقنية على زيادة عُمق الرؤية وتُعطى القدرة على رؤية مشتركة بين العينين للبعد والقرب والمسافة بينهما دون حدوث اي تشويش ومع راحة تامة للمريض', 'youtube', 'https://www.youtube.com/watch?v=q4ZrxsYFMiU', NULL, NULL, '2018-12-02 10:23:20', '2018-12-02 10:23:20'),
(7, 'تخصصات مركز بطل للعيون', 'Dr Batal Specialties\r\n تخصصات مركز بطل للعيون', 'youtube', 'https://www.youtube.com/watch?v=JmGmOEtVrbY', NULL, NULL, '2018-12-02 10:30:00', '2018-12-02 10:30:00'),
(8, 'اليوم العالمى للبصر', 'اليوم العالمى للبصر 2016\r\nالوقاية من العمى و علاج أفات النظر هي أفضل أنواع العناية الصحية مردوداً على المجتمع', 'youtube', 'https://www.youtube.com/watch?v=2UtEHfG5YVw', NULL, NULL, '2018-12-02 10:31:23', '2018-12-02 10:31:23'),
(11, 'أحجز موعد مع طبيبك في مركز د. بطل', 'أحجز موعد مع طبيبك في مركز د. بطل', 'youtube', 'https://www.youtube.com/watch?v=mFkZEoyi1RU', NULL, NULL, '2018-12-02 10:36:49', '2018-12-02 10:36:49'),
(12, 'كسل العين', 'ماذا تعرف عن كسل العين ؟', 'youtube', 'https://www.youtube.com/watch?v=tlRABJ9gqmI', NULL, NULL, '2018-12-02 10:39:15', '2018-12-02 10:39:15'),
(13, 'عملية', 'مُجمع بطل التخصُصى', 'youtube', 'https://www.youtube.com/watch?v=ZKPdB6h1b3Y', NULL, NULL, '2018-12-02 10:41:25', '2018-12-02 10:41:25'),
(14, 'كيف تعمل القمرة', 'كيف تعمل القمرة', 'youtube', 'https://www.youtube.com/watch?v=P0nP4dGlQVo', NULL, NULL, '2018-12-02 10:42:39', '2018-12-02 10:42:39'),
(15, 'الدكتور محمد حنتيرة يجري عملية ليزك', 'الدكتور محمد حنتيرة يجري عملية ليزك', 'youtube', 'https://www.youtube.com/watch?v=aSH9B5tVSmo', NULL, NULL, '2018-12-02 10:43:54', '2018-12-02 10:43:54'),
(16, 'تاثير التغذية السليمة على العين', 'تاثير التغذية السليمة على العين', 'youtube', 'https://www.youtube.com/watch?v=ymR1CE67KjU', NULL, NULL, '2018-12-02 10:46:43', '2018-12-02 10:46:43'),
(17, 'تاثير التغذية السليمة على العين 2 1', 'تاثير التغذية السليمة على العين 2 1', 'youtube', 'https://www.youtube.com/watch?v=hkF688j6akI', NULL, NULL, '2018-12-02 10:47:49', '2018-12-02 10:47:49'),
(18, 'الليزك وتصحيح عيوب الابصار', 'الليزك وتصحيح عيوب الابصار', 'youtube', 'https://www.youtube.com/watch?v=000UlqygpUQ', NULL, NULL, '2018-12-02 10:48:44', '2018-12-02 10:48:44'),
(19, 'حتى الاطفال معرضون للمياه الزرقاء', 'حتى الاطفال معرضون للمياه الزرقاء', 'youtube', 'https://www.youtube.com/watch?v=XpDLXsDXkqg', NULL, NULL, '2018-12-02 10:54:12', '2018-12-02 10:54:12'),
(27, 'عيون طفلك الرضيع امانه', 'عيون طفلك الرضيع امانه', 'youtube', 'https://www.youtube.com/watch?v=26qVs8cdjeo', NULL, NULL, '2018-12-02 11:17:54', '2018-12-02 11:17:54'),
(21, 'حول العين واضرابات عضلات العين', 'حول العين واضرابات عضلات العين', 'youtube', 'https://www.youtube.com/watch?v=_39CqQk7p9s', NULL, NULL, '2018-12-02 10:56:52', '2018-12-02 10:56:52'),
(22, 'حول الاطفال اليك آخر ما توصل اليه العلم', 'حول الاطفال اليك آخر ما توصل اليه العلم', 'youtube', 'https://www.youtube.com/watch?v=6yARFH7rDpc', NULL, NULL, '2018-12-02 10:57:58', '2018-12-02 10:57:58'),
(23, 'علاج الحول ، د أحمد البطل مع قناة العربية برنامج صباح العربية', 'علاج الحول ، د أحمد البطل مع قناة العربية برنامج صباح العربية', 'youtube', 'https://www.youtube.com/watch?v=FgyBIOxutx0', NULL, NULL, '2018-12-02 11:13:16', '2018-12-02 11:13:16'),
(24, 'عمليات تصحيح البصر هل تنجح مع الاطفال', 'عمليات تصحيح البصر هل تنجح مع الاطفال', 'youtube', 'https://www.youtube.com/watch?v=otMokM349pc', NULL, NULL, '2018-12-02 11:14:13', '2018-12-02 11:14:13'),
(25, 'شرح مصور لتركيب العين مركز الدكتور أحمد حسان البطل', 'شرح مصور لتركيب العين مركز الدكتور أحمد حسان البطل', 'youtube', 'https://www.youtube.com/watch?v=aLZuVqbz8Uw', NULL, NULL, '2018-12-02 11:14:53', '2018-12-02 11:14:53'),
(26, 'عيون طفلك الرضيع امانه', 'عيون طفلك الرضيع امانه', 'youtube', 'https://www.youtube.com/watch?v=26qVs8cdjeo', NULL, NULL, '2018-12-02 11:15:38', '2018-12-02 11:15:38'),
(28, 'ماهو الفرق بين عمليات تصحيح البصر ؟ يجبب أن تعرف', 'ماهو الفرق بين عمليات تصحيح البصر ؟ يجبب أن تعرف', 'youtube', 'https://www.youtube.com/watch?v=kP-UfuzH4Eg', NULL, NULL, '2018-12-02 11:18:39', '2018-12-02 11:18:39'),
(29, 'قصة غلا رحلة علاج ناجحة بعد حول شديد', 'قصة غلا رحلة علاج ناجحة بعد حول شديد', 'youtube', 'https://www.youtube.com/watch?v=daZe8TqZP7g', NULL, NULL, '2018-12-02 11:19:15', '2018-12-02 11:19:15'),
(30, 'كيف ترى العين', 'كيف ترى العين', 'youtube', 'https://www.youtube.com/watch?v=9tRCp7gLiuk', NULL, NULL, '2018-12-02 11:20:12', '2018-12-02 11:20:12'),
(31, 'كيف تؤثر الوراثة في عيون اطفالك', 'كيف تؤثر الوراثة في عيون اطفالك', 'youtube', 'https://www.youtube.com/watch?v=y84_gDPjIow', NULL, NULL, '2018-12-02 11:21:17', '2018-12-02 11:21:17'),
(32, 'لقاء مع الدكتور أحمد البطل على قناة البحرين 1 5', 'لقاء مع الدكتور أحمد البطل على قناة البحرين 1 5', 'youtube', 'https://www.youtube.com/watch?v=5COmL0snMos', NULL, NULL, '2018-12-02 11:21:55', '2018-12-02 11:21:55'),
(33, 'لقاء مع الدكتور أحمد البطل على قناة البحرين 2 5', 'لقاء مع الدكتور أحمد البطل على قناة البحرين 2 5', 'youtube', 'https://www.youtube.com/watch?v=N8H150Muggo', NULL, NULL, '2018-12-02 11:23:01', '2018-12-02 11:23:01'),
(34, 'لقاء مع الدكتور أحمد البطل على قناة البحرين 3 5', 'لقاء مع الدكتور أحمد البطل على قناة البحرين 3 5', 'youtube', 'https://www.youtube.com/watch?v=9K3fh0rMQEs', NULL, NULL, '2018-12-02 11:23:41', '2018-12-02 11:23:41'),
(35, 'لقاء مع الدكتور أحمد البطل على قناة البحرين 5 5', 'لقاء مع الدكتور أحمد البطل على قناة البحرين 5 5', 'youtube', 'https://www.youtube.com/watch?v=69qA3oHdfDc', NULL, NULL, '2018-12-02 11:24:12', '2018-12-02 11:24:12'),
(36, 'ماذا تعرف عن رأرأة العين ؟', 'ماذا تعرف عن رأرأة العين ؟', 'youtube', 'https://www.youtube.com/watch?v=BZAYyHtPowU', NULL, NULL, '2018-12-02 11:24:45', '2018-12-02 11:24:45'),
(37, 'اعملها لا تتردد .. فيمتو سمايل', 'اعملها لا تتردد .. فيمتو سمايل', 'youtube', 'https://www.youtube.com/watch?v=IjWeGc6eQJ4', NULL, NULL, '2018-12-02 11:26:21', '2018-12-02 11:26:21'),
(38, 'عملية الـ presbyond لدكتور أحمد البطل', 'تقنية تعالج ضعف النظر وطول النظر لمن فوق ال 40 عام مع ضمان التخلص من نظارة القراءة للأبد  وتعمل  التقنية على زيادة عُمق الرؤية وتُعطى القدرة على رؤية مشتركة بين العينين للبعد والقرب والمسافة بينهما دون حدوث اي تشويش ومع راحة تامة للمريض', 'youtube', 'https://www.youtube.com/watch?v=q4ZrxsYFMiU', NULL, NULL, '2019-01-14 08:39:03', '2019-01-14 08:39:03'),
(39, 'زيارة د .خالد إدريس لمجمع بطل التخصصي لجراحات العين والليزر', 'زيارة دكتور خالد ادريس استشاري طب وجراحة القدم والكاحل لفحص عيونه للتخلص من نظارة القراءة', 'youtube', 'https://www.youtube.com/watch?v=rmrWlKEfkwA', NULL, NULL, '2019-01-14 08:43:13', '2019-01-14 08:43:13'),
(40, 'حكايات طفشت من نظارتى - 1', 'أول حكاية من #حكايات_طفشت_من_نظارتي\r\nكل يوم ابغى اسوي مكياجي لكن دائما نظارتي بتعيقني ايش اسوي', 'youtube', 'https://www.youtube.com/watch?v=xvUf9yBG3A4', NULL, NULL, '2019-01-14 08:44:34', '2019-01-14 08:44:34'),
(41, 'حكايات طفشت من نظارتى - 2', 'ثاني حكاية من #حكايات_طفشت_من_نظارتي\r\nتحتار النساء دائماً في اختيار النظارة اللي تناسب وجههم وتُبرز جمالهم؟', 'youtube', 'https://www.youtube.com/watch?v=JlGsmFibhyE', NULL, NULL, '2019-01-14 08:46:47', '2019-01-14 08:46:47'),
(42, 'لقاء الدكتور أحمد البطل في صباح العربية', 'في برنامج صباح العربية .. و لقاء  الدكتور أحمد البطل ، استشاري أول طب و جراحة العيون  ، و حديث مميز عن التقنية الفريدة للتخلص من نظارة القراءة لمن فوق الـ 40 عام - بريس بيوند .. لأول مرة في المملكة العربية السعودية ..', 'youtube', 'https://www.youtube.com/watch?v=-ZL4B2406lA', NULL, NULL, '2019-01-14 08:47:26', '2019-01-14 08:47:26'),
(43, 'لأنها خلصتني من نظارة القراءة | It has saved me from reading glasses 😇', 'تقنية presbyond بريس بيوند التقنية الأحدث عالمياً للتخلص من نظارة القراءة ، لأول مرة في المملكة العربية السعودية و حصرياً في مجمع بطل التخصصي بجدة .', 'youtube', 'https://www.youtube.com/watch?v=hhrl_sDHxM4', NULL, NULL, '2019-01-14 08:48:07', '2019-01-14 08:48:07'),
(44, 'لأنها خلصتني من نظارة القراءة | It has saved me from reading glasses 😇', 'تقنية presbyond بريس بيوند التقنية الأحدث عالمياً للتخلص من نظارة القراءة ، لأول مرة في المملكة العربية السعودية و حصرياً في مجمع بطل التخصصي بجدة .', 'youtube', 'https://www.youtube.com/watch?v=q4ZrxsYFMiU', NULL, 'landing_page', '2019-01-23 08:58:33', '2019-01-23 13:42:48'),
(45, 'presbyond', 'presbyond  \r\nتقنية تعالج ضعف النظر وطول النظر لمن فوق ال 40 عام مع ضمان التخلص من نظارة القراءة للأبد  وتعمل  التقنية على زيادة عُمق الرؤية وتُعطى القدرة على رؤية مشتركة بين العينين للبعد والقرب والمسافة بينهما دون حدوث اي تشويش ومع راحة تامة للمريض', 'youtube', 'https://www.youtube.com/watch?v=hhrl_sDHxM4', NULL, 'landing_page', '2019-01-23 08:59:52', '2019-01-23 13:43:17'),
(46, 'حكايات طفشت من نظارتى - 3', 'دايماُ يتعرض ذوى النظارات الطبية لتعليقات سخيفة 😔\r\n الآن مجمع بطل يقولك أفضل شى يناسب جمالك هو وجهك من دون نظارة \r\n\r\nتخلصي الآن من نظارتك مع تقنية الفيمتو سمايل او الفيمتو ليزك لتصحيح النظر', 'youtube', 'https://www.youtube.com/watch?v=KbbiS7myTuE', NULL, NULL, '2019-02-19 15:33:52', '2019-02-19 15:33:52'),
(47, 'حكايات طفشت من نظارتي - 4', 'كثيراً ما يضيع من ذوي النظارات الطبية لحظات المتعة والمرح\r\nلذا مجمع بطل يقولك استمتعي بلحظاتك من دون نظارة😳\r\nتخلصي من نظارتك الآن بأحدث التقنيات( الفيمتو ليزك - الفيمتو سمايل - بريس بويند )', 'youtube', 'https://www.youtube.com/watch?v=w7ZvRcnIAoU', NULL, NULL, '2019-02-19 15:35:02', '2019-02-19 15:35:02'),
(48, 'أحدث علاج لإعتلال الشبكية السكري د. احمد البطل', 'حديث دكتور أحمد البطل  (استشارى اول طب وجراحة العيون ) فى برنامج صباح العربية\r\nعن العلاج الجديد لاعتلال الشبكية لدى مرض السكري\r\n\r\nحديث مميز عن العلاج وفيه بعض الاجابات من دكتور أحمد البطل على أسئلة المشاهدين فى طب العيون\r\n\r\nمجمع بطل لأجل عيونكم', 'youtube', 'https://www.youtube.com/watch?v=zs2F0Zkl2-k', NULL, NULL, '2019-02-20 14:24:52', '2019-02-20 14:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `date`, `hits`, `visit_time`, `created_at`, `updated_at`) VALUES
(1, '197.44.234.107', '2019-02-17', '3', '14:52:00', '2019-02-17 20:50:04', '2019-02-17 20:52:00'),
(2, '191.96.97.58', '2019-02-17', '2', '14:51:32', '2019-02-17 20:51:32', '2019-02-17 20:51:32'),
(3, '31.166.118.110', '2019-02-17', '2', '14:52:19', '2019-02-17 20:52:19', '2019-02-17 20:52:19'),
(4, '60.191.38.77', '2019-02-17', '5', '15:39:32', '2019-02-17 20:59:05', '2019-02-17 21:39:32'),
(5, '5.244.116.206', '2019-02-17', '5', '15:07:22', '2019-02-17 20:59:29', '2019-02-17 21:07:22'),
(6, '18.220.176.8', '2019-02-17', '2', '15:05:06', '2019-02-17 21:05:06', '2019-02-17 21:05:06'),
(7, '138.197.111.184', '2019-02-17', '2', '15:13:05', '2019-02-17 21:13:05', '2019-02-17 21:13:05'),
(8, '34.192.116.178', '2019-02-17', '5', '15:17:05', '2019-02-17 21:16:52', '2019-02-17 21:17:05'),
(9, '35.196.216.98', '2019-02-17', '3', '16:32:11', '2019-02-17 21:51:32', '2019-02-17 22:32:11'),
(10, '18.191.222.205', '2019-02-17', '2', '16:03:47', '2019-02-17 22:03:47', '2019-02-17 22:03:47'),
(11, '180.76.15.8', '2019-02-17', '2', '16:11:04', '2019-02-17 22:11:04', '2019-02-17 22:11:04'),
(12, '89.237.181.38', '2019-02-17', '3', '16:48:52', '2019-02-17 22:40:28', '2019-02-17 22:48:52'),
(13, '18.222.130.166', '2019-02-17', '2', '17:04:17', '2019-02-17 23:04:17', '2019-02-17 23:04:17'),
(14, '105.156.68.210', '2019-02-17', '2', '17:56:56', '2019-02-17 23:56:56', '2019-02-17 23:56:56'),
(15, '3.16.128.13', '2019-02-17', '2', '18:03:47', '2019-02-18 00:03:47', '2019-02-18 00:03:47'),
(16, '95.184.69.13', '2019-02-17', '3', '18:07:48', '2019-02-18 00:07:29', '2019-02-18 00:07:48'),
(17, '5.110.198.90', '2019-02-17', '2', '18:09:35', '2019-02-18 00:09:35', '2019-02-18 00:09:35'),
(18, '31.167.15.228', '2019-02-17', '2', '18:12:22', '2019-02-18 00:12:22', '2019-02-18 00:12:22'),
(19, '18.191.12.231', '2019-02-17', '2', '19:03:15', '2019-02-18 01:03:15', '2019-02-18 01:03:15'),
(20, '128.234.230.220', '2019-02-17', '4', '19:37:22', '2019-02-18 01:24:04', '2019-02-18 01:37:22'),
(21, '66.249.83.209', '2019-02-17', '2', '19:36:21', '2019-02-18 01:36:21', '2019-02-18 01:36:21'),
(22, '66.249.93.207', '2019-02-17', '2', '19:58:17', '2019-02-18 01:58:17', '2019-02-18 01:58:17'),
(23, '52.14.172.201', '2019-02-17', '2', '20:04:46', '2019-02-18 02:04:46', '2019-02-18 02:04:46'),
(24, '90.148.196.251', '2019-02-17', '2', '20:26:54', '2019-02-18 02:26:54', '2019-02-18 02:26:54'),
(25, '3.16.25.235', '2019-02-17', '2', '21:03:09', '2019-02-18 03:03:09', '2019-02-18 03:03:09'),
(26, '5.108.183.50', '2019-02-17', '2', '21:06:15', '2019-02-18 03:06:15', '2019-02-18 03:06:15'),
(27, '5.244.240.222', '2019-02-17', '2', '21:06:26', '2019-02-18 03:06:26', '2019-02-18 03:06:26'),
(28, '107.178.194.124', '2019-02-17', '2', '21:06:50', '2019-02-18 03:06:50', '2019-02-18 03:06:50'),
(29, '5.244.82.121', '2019-02-17', '2', '21:15:06', '2019-02-18 03:15:06', '2019-02-18 03:15:06'),
(30, '18.217.199.81', '2019-02-17', '2', '22:03:47', '2019-02-18 04:03:47', '2019-02-18 04:03:47'),
(31, '85.10.201.122', '2019-02-17', '2', '22:06:05', '2019-02-18 04:06:05', '2019-02-18 04:06:05'),
(32, '51.36.248.9', '2019-02-17', '2', '22:44:02', '2019-02-18 04:44:02', '2019-02-18 04:44:02'),
(33, '3.17.151.223', '2019-02-17', '2', '23:03:24', '2019-02-18 05:03:24', '2019-02-18 05:03:24'),
(34, '37.9.87.163', '2019-02-17', '2', '23:26:11', '2019-02-18 05:26:11', '2019-02-18 05:26:11'),
(35, '77.88.47.77', '2019-02-17', '2', '23:26:11', '2019-02-18 05:26:11', '2019-02-18 05:26:11'),
(36, '148.251.4.136', '2019-02-17', '2', '23:30:16', '2019-02-18 05:30:16', '2019-02-18 05:30:16'),
(37, '52.14.172.201', '2019-02-18', '2', '00:03:55', '2019-02-18 06:03:55', '2019-02-18 06:03:55'),
(38, '13.59.15.248', '2019-02-18', '2', '01:03:11', '2019-02-18 07:03:11', '2019-02-18 07:03:11'),
(39, '157.55.39.210', '2019-02-18', '2', '01:50:12', '2019-02-18 07:50:12', '2019-02-18 07:50:12'),
(40, '18.223.23.251', '2019-02-18', '3', '10:03:11', '2019-02-18 08:03:22', '2019-02-18 16:03:11'),
(41, '207.46.13.169', '2019-02-18', '2', '02:54:09', '2019-02-18 08:54:09', '2019-02-18 08:54:09'),
(42, '3.17.58.50', '2019-02-18', '3', '22:03:29', '2019-02-18 09:03:53', '2019-02-19 04:03:29'),
(43, '145.249.104.111', '2019-02-18', '2', '03:56:25', '2019-02-18 09:56:25', '2019-02-18 09:56:25'),
(44, '207.46.13.236', '2019-02-18', '2', '03:56:41', '2019-02-18 09:56:41', '2019-02-18 09:56:41'),
(45, '18.223.135.142', '2019-02-18', '4', '13:02:55', '2019-02-18 10:03:31', '2019-02-18 19:02:55'),
(46, '66.249.73.223', '2019-02-18', '2', '04:09:01', '2019-02-18 10:09:01', '2019-02-18 10:09:01'),
(47, '46.166.190.175', '2019-02-18', '2', '04:13:59', '2019-02-18 10:13:59', '2019-02-18 10:13:59'),
(48, '220.181.108.75', '2019-02-18', '2', '04:29:08', '2019-02-18 10:29:08', '2019-02-18 10:29:08'),
(49, '31.167.237.154', '2019-02-18', '3', '04:30:27', '2019-02-18 10:29:39', '2019-02-18 10:30:27'),
(50, '18.219.245.160', '2019-02-18', '2', '05:03:13', '2019-02-18 11:03:13', '2019-02-18 11:03:13'),
(51, '18.191.27.77', '2019-02-18', '4', '17:03:35', '2019-02-18 12:04:54', '2019-02-18 23:03:35'),
(52, '82.118.170.237', '2019-02-18', '3', '06:15:53', '2019-02-18 12:15:00', '2019-02-18 12:15:53'),
(53, '51.253.135.224', '2019-02-18', '3', '06:34:07', '2019-02-18 12:21:00', '2019-02-18 12:34:07'),
(54, '5.244.216.188', '2019-02-18', '13', '09:28:00', '2019-02-18 12:34:08', '2019-02-18 15:28:00'),
(55, '52.14.145.245', '2019-02-18', '2', '07:03:02', '2019-02-18 13:03:02', '2019-02-18 13:03:02'),
(56, '213.166.148.126', '2019-02-18', '7', '11:14:18', '2019-02-18 13:06:18', '2019-02-18 17:14:18'),
(57, '185.25.12.189', '2019-02-18', '2', '07:10:52', '2019-02-18 13:10:52', '2019-02-18 13:10:52'),
(58, '203.133.169.25', '2019-02-18', '2', '07:11:52', '2019-02-18 13:11:52', '2019-02-18 13:11:52'),
(59, '41.238.42.48', '2019-02-18', '8', '11:05:27', '2019-02-18 13:29:32', '2019-02-18 17:05:27'),
(60, '197.44.234.107', '2019-02-18', '4', '11:46:22', '2019-02-18 13:29:55', '2019-02-18 17:46:22'),
(61, '45.35.190.46', '2019-02-18', '6', '09:11:58', '2019-02-18 13:30:04', '2019-02-18 15:11:58'),
(62, '45.245.250.104', '2019-02-18', '4', '11:07:09', '2019-02-18 13:44:52', '2019-02-18 17:07:09'),
(63, '3.80.168.17', '2019-02-18', '2', '08:00:40', '2019-02-18 14:00:40', '2019-02-18 14:00:40'),
(64, '35.168.7.209', '2019-02-18', '2', '09:20:34', '2019-02-18 15:20:34', '2019-02-18 15:20:34'),
(65, '188.138.9.180', '2019-02-18', '18', '14:15:31', '2019-02-18 15:26:17', '2019-02-18 20:15:31'),
(66, '66.249.73.200', '2019-02-18', '2', '09:45:56', '2019-02-18 15:45:56', '2019-02-18 15:45:56'),
(67, '151.254.72.13', '2019-02-18', '2', '09:47:52', '2019-02-18 15:47:52', '2019-02-18 15:47:52'),
(68, '188.138.9.236', '2019-02-18', '7', '15:02:48', '2019-02-18 15:50:04', '2019-02-18 21:02:48'),
(69, '31.167.26.56', '2019-02-18', '3', '09:56:59', '2019-02-18 15:56:20', '2019-02-18 15:56:59'),
(70, '5.244.170.18', '2019-02-18', '3', '10:05:31', '2019-02-18 16:03:39', '2019-02-18 16:05:31'),
(71, '197.53.217.244', '2019-02-18', '5', '14:08:58', '2019-02-18 16:05:43', '2019-02-18 20:08:58'),
(72, '66.102.8.79', '2019-02-18', '2', '10:05:52', '2019-02-18 16:05:52', '2019-02-18 16:05:52'),
(73, '188.49.31.224', '2019-02-18', '2', '10:08:44', '2019-02-18 16:08:44', '2019-02-18 16:08:44'),
(74, '104.236.59.33', '2019-02-18', '4', '10:10:58', '2019-02-18 16:10:12', '2019-02-18 16:10:58'),
(75, '66.249.93.207', '2019-02-18', '4', '11:07:51', '2019-02-18 16:16:34', '2019-02-18 17:07:51'),
(76, '188.117.89.93', '2019-02-18', '2', '10:30:32', '2019-02-18 16:30:32', '2019-02-18 16:30:32'),
(77, '188.52.161.33', '2019-02-18', '2', '10:42:00', '2019-02-18 16:42:00', '2019-02-18 16:42:00'),
(78, '95.186.204.242', '2019-02-18', '2', '11:02:21', '2019-02-18 17:02:21', '2019-02-18 17:02:21'),
(79, '18.191.12.231', '2019-02-18', '2', '11:03:42', '2019-02-18 17:03:42', '2019-02-18 17:03:42'),
(80, '87.101.248.114', '2019-02-18', '2', '11:06:40', '2019-02-18 17:06:40', '2019-02-18 17:06:40'),
(81, '35.187.132.30', '2019-02-18', '2', '11:07:46', '2019-02-18 17:07:46', '2019-02-18 17:07:46'),
(82, '216.145.17.190', '2019-02-18', '2', '11:08:27', '2019-02-18 17:08:27', '2019-02-18 17:08:27'),
(83, '66.249.93.206', '2019-02-18', '2', '11:08:53', '2019-02-18 17:08:53', '2019-02-18 17:08:53'),
(84, '90.148.211.51', '2019-02-18', '6', '11:56:12', '2019-02-18 17:20:56', '2019-02-18 17:56:12'),
(85, '95.186.131.88', '2019-02-18', '2', '11:56:09', '2019-02-18 17:56:09', '2019-02-18 17:56:09'),
(86, '18.191.182.120', '2019-02-18', '2', '12:03:44', '2019-02-18 18:03:44', '2019-02-18 18:03:44'),
(87, '51.253.177.88', '2019-02-18', '2', '12:04:30', '2019-02-18 18:04:30', '2019-02-18 18:04:30'),
(88, '95.187.27.4', '2019-02-18', '2', '12:04:57', '2019-02-18 18:04:57', '2019-02-18 18:04:57'),
(89, '95.187.211.201', '2019-02-18', '3', '12:11:26', '2019-02-18 18:10:57', '2019-02-18 18:11:26'),
(90, '188.49.152.58', '2019-02-18', '2', '12:48:26', '2019-02-18 18:48:26', '2019-02-18 18:48:26'),
(91, '5.108.128.147', '2019-02-18', '2', '13:13:52', '2019-02-18 19:13:52', '2019-02-18 19:13:52'),
(92, '188.50.109.5', '2019-02-18', '2', '13:14:33', '2019-02-18 19:14:33', '2019-02-18 19:14:33'),
(93, '136.243.104.222', '2019-02-18', '2', '13:25:50', '2019-02-18 19:25:50', '2019-02-18 19:25:50'),
(94, '188.117.100.5', '2019-02-18', '2', '13:42:07', '2019-02-18 19:42:07', '2019-02-18 19:42:07'),
(95, '3.16.79.196', '2019-02-18', '2', '14:02:49', '2019-02-18 20:02:49', '2019-02-18 20:02:49'),
(96, '176.224.173.14', '2019-02-18', '2', '14:08:48', '2019-02-18 20:08:48', '2019-02-18 20:08:48'),
(97, '5.111.131.58', '2019-02-18', '2', '14:10:16', '2019-02-18 20:10:16', '2019-02-18 20:10:16'),
(98, '31.166.83.122', '2019-02-18', '2', '14:12:08', '2019-02-18 20:12:08', '2019-02-18 20:12:08'),
(99, '66.249.93.16', '2019-02-18', '2', '14:16:27', '2019-02-18 20:16:27', '2019-02-18 20:16:27'),
(100, '5.110.197.248', '2019-02-18', '3', '15:03:11', '2019-02-18 20:52:08', '2019-02-18 21:03:11'),
(101, '18.236.213.229', '2019-02-18', '3', '14:53:00', '2019-02-18 20:52:58', '2019-02-18 20:53:00'),
(102, '35.229.32.148', '2019-02-18', '3', '15:40:02', '2019-02-18 20:54:08', '2019-02-18 21:40:02'),
(103, '18.217.199.81', '2019-02-18', '2', '15:03:57', '2019-02-18 21:03:57', '2019-02-18 21:03:57'),
(104, '66.102.7.231', '2019-02-18', '2', '15:16:39', '2019-02-18 21:16:39', '2019-02-18 21:16:39'),
(105, '66.102.7.235', '2019-02-18', '2', '15:16:40', '2019-02-18 21:16:40', '2019-02-18 21:16:40'),
(106, '199.30.231.2', '2019-02-18', '2', '15:19:43', '2019-02-18 21:19:43', '2019-02-18 21:19:43'),
(107, '31.166.85.126', '2019-02-18', '2', '15:21:41', '2019-02-18 21:21:41', '2019-02-18 21:21:41'),
(108, '137.226.113.26', '2019-02-18', '2', '15:35:33', '2019-02-18 21:35:33', '2019-02-18 21:35:33'),
(109, '95.185.171.71', '2019-02-18', '2', '15:37:13', '2019-02-18 21:37:13', '2019-02-18 21:37:13'),
(110, '207.46.13.46', '2019-02-18', '2', '15:58:54', '2019-02-18 21:58:54', '2019-02-18 21:58:54'),
(111, '18.222.208.48', '2019-02-18', '2', '16:03:26', '2019-02-18 22:03:26', '2019-02-18 22:03:26'),
(112, '95.187.191.115', '2019-02-18', '2', '16:12:52', '2019-02-18 22:12:52', '2019-02-18 22:12:52'),
(113, '34.73.239.30', '2019-02-18', '3', '17:30:08', '2019-02-18 23:16:21', '2019-02-18 23:30:08'),
(114, '188.55.234.107', '2019-02-18', '2', '17:17:06', '2019-02-18 23:17:06', '2019-02-18 23:17:06'),
(115, '18.223.108.8', '2019-02-18', '3', '19:04:24', '2019-02-19 00:04:29', '2019-02-19 01:04:24'),
(116, '107.21.1.8', '2019-02-18', '2', '18:11:41', '2019-02-19 00:11:41', '2019-02-19 00:11:41'),
(117, '54.208.102.37', '2019-02-18', '2', '18:11:43', '2019-02-19 00:11:43', '2019-02-19 00:11:43'),
(118, '5.244.216.164', '2019-02-18', '2', '18:15:29', '2019-02-19 00:15:29', '2019-02-19 00:15:29'),
(119, '128.234.134.180', '2019-02-18', '2', '18:20:24', '2019-02-19 00:20:24', '2019-02-19 00:20:24'),
(120, '35.237.144.145', '2019-02-18', '3', '19:15:33', '2019-02-19 00:36:12', '2019-02-19 01:15:33'),
(121, '197.52.129.211', '2019-02-18', '2', '19:09:07', '2019-02-19 01:09:07', '2019-02-19 01:09:07'),
(122, '151.254.44.132', '2019-02-18', '2', '19:24:52', '2019-02-19 01:24:52', '2019-02-19 01:24:52'),
(123, '156.222.172.133', '2019-02-18', '2', '19:31:57', '2019-02-19 01:31:57', '2019-02-19 01:31:57'),
(124, '5.108.19.181', '2019-02-18', '2', '19:41:45', '2019-02-19 01:41:45', '2019-02-19 01:41:45'),
(125, '3.16.128.13', '2019-02-18', '2', '20:03:30', '2019-02-19 02:03:30', '2019-02-19 02:03:30'),
(126, '94.99.118.251', '2019-02-18', '2', '20:16:50', '2019-02-19 02:16:50', '2019-02-19 02:16:50'),
(127, '18.191.222.205', '2019-02-18', '2', '21:03:58', '2019-02-19 03:03:58', '2019-02-19 03:03:58'),
(128, '34.73.145.126', '2019-02-18', '3', '21:33:15', '2019-02-19 03:20:15', '2019-02-19 03:33:15'),
(129, '5.110.198.230', '2019-02-18', '2', '21:22:56', '2019-02-19 03:22:56', '2019-02-19 03:22:56'),
(130, '176.31.101.204', '2019-02-18', '3', '23:58:11', '2019-02-19 04:36:48', '2019-02-19 05:58:11'),
(131, '18.221.14.40', '2019-02-18', '2', '23:03:54', '2019-02-19 05:03:54', '2019-02-19 05:03:54'),
(132, '2.89.164.202', '2019-02-18', '2', '23:23:53', '2019-02-19 05:23:53', '2019-02-19 05:23:53'),
(133, '66.249.81.196', '2019-02-18', '2', '23:30:13', '2019-02-19 05:30:13', '2019-02-19 05:30:13'),
(134, '85.10.201.122', '2019-02-18', '2', '23:44:21', '2019-02-19 05:44:21', '2019-02-19 05:44:21'),
(135, '23.101.169.3', '2019-02-19', '5', '06:40:44', '2019-02-19 06:03:06', '2019-02-19 12:40:44'),
(136, '18.191.222.205', '2019-02-19', '2', '00:03:47', '2019-02-19 06:03:47', '2019-02-19 06:03:47'),
(137, '66.249.73.200', '2019-02-19', '2', '00:28:46', '2019-02-19 06:28:46', '2019-02-19 06:28:46'),
(138, '209.17.97.18', '2019-02-19', '2', '00:37:16', '2019-02-19 06:37:16', '2019-02-19 06:37:16'),
(139, '52.14.172.201', '2019-02-19', '2', '01:04:10', '2019-02-19 07:04:10', '2019-02-19 07:04:10'),
(140, '166.87.28.246', '2019-02-19', '2', '01:07:55', '2019-02-19 07:07:55', '2019-02-19 07:07:55'),
(141, '178.255.215.67', '2019-02-19', '2', '01:37:52', '2019-02-19 07:37:52', '2019-02-19 07:37:52'),
(142, '40.77.167.12', '2019-02-19', '2', '01:55:34', '2019-02-19 07:55:34', '2019-02-19 07:55:34'),
(143, '18.223.135.142', '2019-02-19', '2', '02:03:38', '2019-02-19 08:03:38', '2019-02-19 08:03:38'),
(144, '109.201.154.247', '2019-02-19', '2', '02:08:28', '2019-02-19 08:08:28', '2019-02-19 08:08:28'),
(145, '203.133.169.25', '2019-02-19', '2', '02:14:58', '2019-02-19 08:14:58', '2019-02-19 08:14:58'),
(146, '209.17.96.26', '2019-02-19', '2', '02:19:53', '2019-02-19 08:19:53', '2019-02-19 08:19:53'),
(147, '18.191.182.120', '2019-02-19', '2', '03:03:52', '2019-02-19 09:03:52', '2019-02-19 09:03:52'),
(148, '209.17.97.106', '2019-02-19', '2', '03:09:59', '2019-02-19 09:09:59', '2019-02-19 09:09:59'),
(149, '3.80.119.23', '2019-02-19', '2', '03:42:05', '2019-02-19 09:42:05', '2019-02-19 09:42:05'),
(150, '40.77.167.101', '2019-02-19', '2', '03:58:59', '2019-02-19 09:58:59', '2019-02-19 09:58:59'),
(151, '95.187.238.136', '2019-02-19', '2', '04:00:43', '2019-02-19 10:00:43', '2019-02-19 10:00:43'),
(152, '18.191.27.77', '2019-02-19', '6', '21:04:50', '2019-02-19 10:04:11', '2019-02-20 03:04:50'),
(153, '95.216.0.185', '2019-02-19', '2', '04:04:57', '2019-02-19 10:04:57', '2019-02-19 10:04:57'),
(154, '128.234.156.19', '2019-02-19', '2', '04:50:49', '2019-02-19 10:50:49', '2019-02-19 10:50:49'),
(155, '217.131.86.10', '2019-02-19', '3', '04:54:47', '2019-02-19 10:51:56', '2019-02-19 10:54:47'),
(156, '18.191.12.231', '2019-02-19', '2', '05:03:37', '2019-02-19 11:03:37', '2019-02-19 11:03:37'),
(157, '180.76.15.34', '2019-02-19', '2', '05:26:06', '2019-02-19 11:26:06', '2019-02-19 11:26:06'),
(158, '207.46.13.118', '2019-02-19', '2', '05:31:04', '2019-02-19 11:31:04', '2019-02-19 11:31:04'),
(159, '18.223.108.8', '2019-02-19', '2', '06:04:30', '2019-02-19 12:04:30', '2019-02-19 12:04:30'),
(160, '18.216.12.224', '2019-02-19', '2', '07:03:34', '2019-02-19 13:03:34', '2019-02-19 13:03:34'),
(161, '188.138.9.180', '2019-02-19', '14', '09:27:10', '2019-02-19 13:11:20', '2019-02-19 15:27:10'),
(162, '66.102.7.231', '2019-02-19', '2', '07:13:05', '2019-02-19 13:13:05', '2019-02-19 13:13:05'),
(163, '66.102.7.235', '2019-02-19', '2', '07:13:05', '2019-02-19 13:13:05', '2019-02-19 13:13:05'),
(164, '191.96.97.58', '2019-02-19', '22', '09:52:46', '2019-02-19 13:24:41', '2019-02-19 15:52:46'),
(165, '41.238.42.48', '2019-02-19', '4', '08:26:00', '2019-02-19 13:45:13', '2019-02-19 14:26:00'),
(166, '45.245.250.104', '2019-02-19', '3', '08:25:53', '2019-02-19 13:45:18', '2019-02-19 14:25:53'),
(167, '18.219.245.160', '2019-02-19', '3', '16:03:43', '2019-02-19 14:02:30', '2019-02-19 22:03:43'),
(168, '188.138.9.236', '2019-02-19', '6', '09:45:00', '2019-02-19 14:20:15', '2019-02-19 15:45:00'),
(169, '5.244.216.188', '2019-02-19', '5', '09:48:54', '2019-02-19 14:20:29', '2019-02-19 15:48:54'),
(170, '66.249.93.210', '2019-02-19', '2', '08:43:08', '2019-02-19 14:43:08', '2019-02-19 14:43:08'),
(171, '128.234.220.115', '2019-02-19', '2', '08:57:04', '2019-02-19 14:57:04', '2019-02-19 14:57:04'),
(172, '213.166.148.126', '2019-02-19', '7', '09:31:37', '2019-02-19 14:59:48', '2019-02-19 15:31:37'),
(173, '18.188.69.138', '2019-02-19', '2', '09:03:44', '2019-02-19 15:03:44', '2019-02-19 15:03:44'),
(174, '66.249.81.223', '2019-02-19', '5', '19:03:16', '2019-02-19 15:14:04', '2019-02-20 01:03:16'),
(175, '5.41.172.148', '2019-02-19', '2', '09:14:06', '2019-02-19 15:14:06', '2019-02-19 15:14:06'),
(176, '3.89.247.241', '2019-02-19', '2', '09:16:20', '2019-02-19 15:16:20', '2019-02-19 15:16:20'),
(177, '66.249.81.221', '2019-02-19', '3', '16:12:33', '2019-02-19 15:17:28', '2019-02-19 22:12:33'),
(178, '197.53.217.244', '2019-02-19', '6', '10:06:21', '2019-02-19 15:22:43', '2019-02-19 16:06:21'),
(179, '52.14.145.245', '2019-02-19', '2', '10:03:09', '2019-02-19 16:03:09', '2019-02-19 16:03:09'),
(180, '77.88.47.77', '2019-02-19', '2', '10:03:47', '2019-02-19 16:03:47', '2019-02-19 16:03:47'),
(181, '176.31.101.204', '2019-02-19', '2', '10:05:00', '2019-02-19 16:05:00', '2019-02-19 16:05:00'),
(182, '212.12.175.171', '2019-02-19', '2', '10:34:34', '2019-02-19 16:34:34', '2019-02-19 16:34:34'),
(183, '66.249.73.223', '2019-02-19', '2', '10:39:51', '2019-02-19 16:39:51', '2019-02-19 16:39:51'),
(184, '188.50.130.228', '2019-02-19', '2', '10:41:33', '2019-02-19 16:41:33', '2019-02-19 16:41:33'),
(185, '3.16.79.196', '2019-02-19', '2', '11:02:42', '2019-02-19 17:02:42', '2019-02-19 17:02:42'),
(186, '42.120.160.69', '2019-02-19', '2', '11:15:19', '2019-02-19 17:15:19', '2019-02-19 17:15:19'),
(187, '159.0.231.173', '2019-02-19', '2', '12:43:35', '2019-02-19 18:43:35', '2019-02-19 18:43:35'),
(188, '95.185.144.83', '2019-02-19', '2', '12:53:04', '2019-02-19 18:53:04', '2019-02-19 18:53:04'),
(189, '18.222.130.166', '2019-02-19', '3', '19:04:23', '2019-02-19 19:04:25', '2019-02-20 01:04:23'),
(190, '2.91.240.194', '2019-02-19', '2', '13:22:42', '2019-02-19 19:22:42', '2019-02-19 19:22:42'),
(191, '5.108.16.28', '2019-02-19', '2', '13:48:52', '2019-02-19 19:48:52', '2019-02-19 19:48:52'),
(192, '3.16.48.71', '2019-02-19', '3', '17:04:28', '2019-02-19 20:04:34', '2019-02-19 23:04:28'),
(193, '66.249.73.202', '2019-02-19', '2', '14:07:56', '2019-02-19 20:07:56', '2019-02-19 20:07:56'),
(194, '85.10.201.122', '2019-02-19', '2', '14:27:21', '2019-02-19 20:27:21', '2019-02-19 20:27:22'),
(195, '18.237.192.163', '2019-02-19', '3', '14:33:50', '2019-02-19 20:33:47', '2019-02-19 20:33:50'),
(196, '31.167.61.42', '2019-02-19', '4', '14:56:15', '2019-02-19 20:39:53', '2019-02-19 20:56:15'),
(197, '5.41.237.116', '2019-02-19', '2', '14:54:03', '2019-02-19 20:54:03', '2019-02-19 20:54:03'),
(198, '46.38.90.68', '2019-02-19', '5', '15:02:31', '2019-02-19 20:55:22', '2019-02-19 21:02:31'),
(199, '199.16.157.182', '2019-02-19', '2', '15:00:41', '2019-02-19 21:00:41', '2019-02-19 21:00:41'),
(200, '18.221.14.40', '2019-02-19', '2', '15:03:47', '2019-02-19 21:03:47', '2019-02-19 21:03:47'),
(201, '212.62.109.214', '2019-02-19', '3', '15:10:08', '2019-02-19 21:09:16', '2019-02-19 21:10:08'),
(202, '34.73.184.187', '2019-02-19', '3', '15:29:03', '2019-02-19 21:24:03', '2019-02-19 21:29:03'),
(203, '188.48.213.247', '2019-02-19', '3', '16:23:17', '2019-02-19 21:41:49', '2019-02-19 22:23:17'),
(204, '66.249.81.194', '2019-02-19', '3', '16:12:10', '2019-02-19 22:10:27', '2019-02-19 22:12:10'),
(205, '31.166.144.251', '2019-02-19', '2', '17:14:55', '2019-02-19 23:14:55', '2019-02-19 23:14:55'),
(206, '209.17.96.50', '2019-02-19', '2', '17:51:31', '2019-02-19 23:51:31', '2019-02-19 23:51:31'),
(207, '51.36.77.44', '2019-02-19', '2', '18:25:02', '2019-02-20 00:25:02', '2019-02-20 00:25:02'),
(208, '151.255.36.216', '2019-02-19', '2', '18:26:25', '2019-02-20 00:26:25', '2019-02-20 00:26:25'),
(209, '35.227.49.189', '2019-02-19', '3', '18:48:41', '2019-02-20 00:29:06', '2019-02-20 00:48:41'),
(210, '95.187.111.86', '2019-02-19', '2', '18:30:10', '2019-02-20 00:30:10', '2019-02-20 00:30:10'),
(211, '66.249.81.193', '2019-02-19', '2', '18:30:22', '2019-02-20 00:30:22', '2019-02-20 00:30:22'),
(212, '95.187.239.115', '2019-02-19', '2', '18:54:38', '2019-02-20 00:54:38', '2019-02-20 00:54:38'),
(213, '31.166.73.83', '2019-02-19', '10', '19:19:35', '2019-02-20 01:19:17', '2019-02-20 01:19:35'),
(214, '31.167.70.125', '2019-02-19', '2', '20:48:40', '2019-02-20 02:48:40', '2019-02-20 02:48:40'),
(215, '34.73.124.105', '2019-02-19', '3', '21:02:19', '2019-02-20 02:57:07', '2019-02-20 03:02:19'),
(216, '188.49.32.241', '2019-02-19', '2', '21:01:28', '2019-02-20 03:01:28', '2019-02-20 03:01:28'),
(217, '51.253.184.178', '2019-02-19', '4', '21:11:22', '2019-02-20 03:10:46', '2019-02-20 03:11:22'),
(218, '129.208.109.117', '2019-02-19', '3', '21:40:11', '2019-02-20 03:38:03', '2019-02-20 03:40:11'),
(219, '157.55.39.102', '2019-02-19', '2', '21:48:33', '2019-02-20 03:48:33', '2019-02-20 03:48:33'),
(220, '40.77.167.183', '2019-02-19', '2', '21:56:55', '2019-02-20 03:56:55', '2019-02-20 03:56:55'),
(221, '18.224.136.166', '2019-02-19', '2', '22:03:17', '2019-02-20 04:03:17', '2019-02-20 04:03:17'),
(222, '54.39.176.250', '2019-02-19', '2', '22:19:07', '2019-02-20 04:19:07', '2019-02-20 04:19:07'),
(223, '13.57.233.99', '2019-02-19', '2', '22:46:55', '2019-02-20 04:46:55', '2019-02-20 04:46:55'),
(224, '54.185.128.104', '2019-02-19', '2', '22:51:29', '2019-02-20 04:51:29', '2019-02-20 04:51:29'),
(225, '3.17.151.223', '2019-02-19', '2', '23:04:22', '2019-02-20 05:04:22', '2019-02-20 05:04:22'),
(226, '176.47.126.114', '2019-02-19', '2', '23:26:39', '2019-02-20 05:26:39', '2019-02-20 05:26:39'),
(227, '51.235.52.37', '2019-02-19', '2', '23:32:54', '2019-02-20 05:32:54', '2019-02-20 05:32:54'),
(228, '209.17.97.42', '2019-02-19', '2', '23:56:10', '2019-02-20 05:56:10', '2019-02-20 05:56:10'),
(229, '18.222.208.48', '2019-02-20', '3', '16:03:38', '2019-02-20 06:04:15', '2019-02-20 22:03:38'),
(230, '137.226.113.26', '2019-02-20', '2', '00:11:12', '2019-02-20 06:11:12', '2019-02-20 06:11:12'),
(231, '3.17.151.223', '2019-02-20', '5', '17:03:42', '2019-02-20 07:03:38', '2019-02-20 23:03:42'),
(232, '85.10.201.122', '2019-02-20', '2', '02:00:47', '2019-02-20 08:00:47', '2019-02-20 08:00:47'),
(233, '176.224.119.5', '2019-02-20', '3', '02:03:53', '2019-02-20 08:03:50', '2019-02-20 08:03:53'),
(234, '52.90.126.216', '2019-02-20', '2', '02:27:26', '2019-02-20 08:27:26', '2019-02-20 08:27:26'),
(235, '18.191.12.231', '2019-02-20', '2', '03:03:21', '2019-02-20 09:03:21', '2019-02-20 09:03:21'),
(236, '3.82.100.31', '2019-02-20', '2', '03:08:38', '2019-02-20 09:08:38', '2019-02-20 09:08:38'),
(237, '66.249.73.85', '2019-02-20', '2', '04:06:50', '2019-02-20 10:06:50', '2019-02-20 10:06:50'),
(238, '52.53.201.78', '2019-02-20', '2', '04:20:39', '2019-02-20 10:20:39', '2019-02-20 10:20:39'),
(239, '209.17.97.66', '2019-02-20', '2', '04:30:53', '2019-02-20 10:30:53', '2019-02-20 10:30:53'),
(240, '18.223.135.142', '2019-02-20', '2', '05:03:39', '2019-02-20 11:03:39', '2019-02-20 11:03:39'),
(241, '66.160.140.184', '2019-02-20', '2', '05:21:14', '2019-02-20 11:21:14', '2019-02-20 11:21:14'),
(242, '137.226.113.34', '2019-02-20', '2', '05:22:16', '2019-02-20 11:22:16', '2019-02-20 11:22:16'),
(243, '93.169.232.34', '2019-02-20', '3', '06:49:55', '2019-02-20 11:36:56', '2019-02-20 12:49:55'),
(244, '188.49.21.212', '2019-02-20', '2', '05:41:50', '2019-02-20 11:41:50', '2019-02-20 11:41:50'),
(245, '18.216.12.224', '2019-02-20', '2', '06:03:11', '2019-02-20 12:03:11', '2019-02-20 12:03:11'),
(246, '51.39.89.79', '2019-02-20', '2', '06:08:35', '2019-02-20 12:08:35', '2019-02-20 12:08:35'),
(247, '128.234.99.8', '2019-02-20', '2', '06:32:11', '2019-02-20 12:32:11', '2019-02-20 12:32:11'),
(248, '209.17.96.242', '2019-02-20', '2', '07:00:03', '2019-02-20 13:00:03', '2019-02-20 13:00:03'),
(249, '18.217.199.81', '2019-02-20', '5', '21:03:54', '2019-02-20 13:03:14', '2019-02-21 03:03:54'),
(250, '109.201.154.216', '2019-02-20', '2', '07:56:18', '2019-02-20 13:56:18', '2019-02-20 13:56:18'),
(251, '13.59.196.155', '2019-02-20', '2', '08:04:20', '2019-02-20 14:04:20', '2019-02-20 14:04:20'),
(252, '95.184.45.12', '2019-02-20', '2', '08:32:40', '2019-02-20 14:32:40', '2019-02-20 14:32:40'),
(253, '5.244.216.188', '2019-02-20', '2', '08:49:40', '2019-02-20 14:49:40', '2019-02-20 14:49:40'),
(254, '52.15.139.194', '2019-02-20', '3', '12:03:45', '2019-02-20 15:03:37', '2019-02-20 18:03:45'),
(255, '209.17.97.90', '2019-02-20', '2', '09:08:40', '2019-02-20 15:08:40', '2019-02-20 15:08:40'),
(256, '91.202.248.10', '2019-02-20', '2', '09:14:10', '2019-02-20 15:14:10', '2019-02-20 15:14:10'),
(257, '31.167.192.46', '2019-02-20', '2', '11:45:45', '2019-02-20 17:45:45', '2019-02-20 17:45:45'),
(258, '209.17.96.26', '2019-02-20', '2', '12:05:24', '2019-02-20 18:05:24', '2019-02-20 18:05:24'),
(259, '34.222.147.14', '2019-02-20', '3', '12:24:39', '2019-02-20 18:24:36', '2019-02-20 18:24:39'),
(260, '18.223.23.251', '2019-02-20', '3', '22:02:51', '2019-02-20 19:03:22', '2019-02-21 04:02:51'),
(261, '95.218.104.25', '2019-02-20', '2', '13:43:49', '2019-02-20 19:43:49', '2019-02-20 19:43:49'),
(262, '109.201.154.130', '2019-02-20', '2', '13:56:15', '2019-02-20 19:56:15', '2019-02-20 19:56:15'),
(263, '18.222.109.213', '2019-02-20', '2', '14:03:08', '2019-02-20 20:03:08', '2019-02-20 20:03:08'),
(264, '31.167.233.164', '2019-02-20', '2', '14:05:49', '2019-02-20 20:05:49', '2019-02-20 20:05:49'),
(265, '162.243.69.215', '2019-02-20', '2', '14:17:26', '2019-02-20 20:17:26', '2019-02-20 20:17:26'),
(266, '151.255.24.24', '2019-02-20', '3', '14:51:35', '2019-02-20 20:27:01', '2019-02-20 20:51:35'),
(267, '207.46.13.97', '2019-02-20', '2', '14:29:48', '2019-02-20 20:29:48', '2019-02-20 20:29:48'),
(268, '180.76.15.151', '2019-02-20', '2', '14:30:59', '2019-02-20 20:30:59', '2019-02-20 20:30:59'),
(269, '66.102.7.235', '2019-02-20', '2', '14:39:05', '2019-02-20 20:39:05', '2019-02-20 20:39:05'),
(270, '3.16.128.13', '2019-02-20', '2', '15:03:46', '2019-02-20 21:03:46', '2019-02-20 21:03:46'),
(271, '34.253.21.226', '2019-02-20', '2', '16:07:08', '2019-02-20 22:07:08', '2019-02-20 22:07:08'),
(272, '95.187.60.111', '2019-02-20', '2', '16:18:10', '2019-02-20 22:18:10', '2019-02-20 22:18:10'),
(273, '34.73.95.171', '2019-02-20', '2', '16:56:19', '2019-02-20 22:56:19', '2019-02-20 22:56:19'),
(274, '5.41.129.226', '2019-02-20', '2', '16:56:57', '2019-02-20 22:56:57', '2019-02-20 22:56:57'),
(275, '62.210.111.66', '2019-02-20', '2', '16:57:25', '2019-02-20 22:57:25', '2019-02-20 22:57:25'),
(276, '66.249.93.206', '2019-02-20', '2', '17:00:40', '2019-02-20 23:00:40', '2019-02-20 23:00:40'),
(277, '198.199.89.166', '2019-02-20', '3', '17:07:08', '2019-02-20 23:07:06', '2019-02-20 23:07:08'),
(278, '34.73.239.30', '2019-02-20', '3', '17:13:07', '2019-02-20 23:08:08', '2019-02-20 23:13:07'),
(279, '188.50.252.165', '2019-02-20', '3', '17:47:23', '2019-02-20 23:31:44', '2019-02-20 23:47:23'),
(280, '176.18.170.77', '2019-02-20', '2', '17:32:23', '2019-02-20 23:32:23', '2019-02-20 23:32:23'),
(281, '51.39.211.110', '2019-02-20', '2', '17:52:56', '2019-02-20 23:52:56', '2019-02-20 23:52:56'),
(282, '18.224.2.67', '2019-02-20', '2', '18:03:21', '2019-02-21 00:03:21', '2019-02-21 00:03:21'),
(283, '153.126.173.202', '2019-02-20', '2', '18:13:48', '2019-02-21 00:13:48', '2019-02-21 00:13:48'),
(284, '51.39.129.156', '2019-02-20', '3', '19:01:34', '2019-02-21 01:00:15', '2019-02-21 01:01:34'),
(285, '3.16.48.71', '2019-02-20', '2', '19:04:39', '2019-02-21 01:04:39', '2019-02-21 01:04:39'),
(286, '188.49.19.101', '2019-02-20', '2', '19:26:13', '2019-02-21 01:26:13', '2019-02-21 01:26:13'),
(287, '139.162.72.149', '2019-02-20', '2', '19:33:33', '2019-02-21 01:33:33', '2019-02-21 01:33:33'),
(288, '66.249.93.212', '2019-02-20', '2', '19:51:54', '2019-02-21 01:51:54', '2019-02-21 01:51:54'),
(289, '3.17.58.50', '2019-02-20', '2', '20:04:25', '2019-02-21 02:04:25', '2019-02-21 02:04:25'),
(290, '35.237.182.135', '2019-02-20', '3', '20:24:30', '2019-02-21 02:06:32', '2019-02-21 02:24:30'),
(291, '37.9.87.163', '2019-02-20', '3', '20:52:54', '2019-02-21 02:52:50', '2019-02-21 02:52:54'),
(292, '148.251.4.136', '2019-02-20', '2', '22:36:55', '2019-02-21 04:36:55', '2019-02-21 04:36:55'),
(293, '18.219.245.160', '2019-02-20', '2', '23:03:43', '2019-02-21 05:03:43', '2019-02-21 05:03:43'),
(294, '159.0.194.19', '2019-02-20', '2', '23:14:05', '2019-02-21 05:14:05', '2019-02-21 05:14:05'),
(295, '35.227.56.236', '2019-02-20', '2', '23:57:11', '2019-02-21 05:57:11', '2019-02-21 05:57:11'),
(296, '18.191.27.77', '2019-02-21', '3', '07:04:50', '2019-02-21 06:04:30', '2019-02-21 13:04:50'),
(297, '35.227.56.236', '2019-02-21', '2', '00:14:40', '2019-02-21 06:14:40', '2019-02-21 06:14:40'),
(298, '66.249.66.142', '2019-02-21', '2', '00:28:20', '2019-02-21 06:28:20', '2019-02-21 06:28:20'),
(299, '158.46.174.14', '2019-02-21', '2', '00:30:23', '2019-02-21 06:30:23', '2019-02-21 06:30:23'),
(300, '164.132.54.81', '2019-02-21', '3', '00:58:27', '2019-02-21 06:58:25', '2019-02-21 06:58:27'),
(301, '52.14.145.245', '2019-02-21', '4', '20:02:28', '2019-02-21 07:03:12', '2019-02-22 02:02:28'),
(302, '195.3.144.185', '2019-02-21', '2', '01:11:01', '2019-02-21 07:11:01', '2019-02-21 07:11:01'),
(303, '46.4.120.42', '2019-02-21', '2', '01:28:26', '2019-02-21 07:28:26', '2019-02-21 07:28:26'),
(304, '38.100.21.61', '2019-02-21', '2', '01:37:13', '2019-02-21 07:37:13', '2019-02-21 07:37:13'),
(305, '66.249.66.156', '2019-02-21', '4', '20:03:19', '2019-02-21 07:37:16', '2019-02-22 02:03:19'),
(306, '18.191.222.205', '2019-02-21', '2', '02:03:31', '2019-02-21 08:03:31', '2019-02-21 08:03:31'),
(307, '217.69.143.217', '2019-02-21', '2', '02:58:54', '2019-02-21 08:58:54', '2019-02-21 08:58:54'),
(308, '18.222.109.213', '2019-02-21', '4', '14:09:57', '2019-02-21 09:01:34', '2019-02-21 20:09:57'),
(309, '18.216.12.224', '2019-02-21', '2', '04:05:14', '2019-02-21 10:05:14', '2019-02-21 10:05:14'),
(310, '188.166.114.112', '2019-02-21', '2', '04:22:46', '2019-02-21 10:22:46', '2019-02-21 10:22:46'),
(311, '144.217.5.52', '2019-02-21', '2', '04:43:50', '2019-02-21 10:43:50', '2019-02-21 10:43:50'),
(312, '68.183.147.177', '2019-02-21', '2', '05:28:14', '2019-02-21 11:28:14', '2019-02-21 11:28:14'),
(313, '66.249.66.157', '2019-02-21', '2', '05:42:03', '2019-02-21 11:42:03', '2019-02-21 11:42:03'),
(314, '78.93.120.101', '2019-02-21', '3', '05:55:38', '2019-02-21 11:47:24', '2019-02-21 11:55:38'),
(315, '3.16.79.196', '2019-02-21', '2', '06:01:52', '2019-02-21 12:01:52', '2019-02-21 12:01:52'),
(316, '157.55.39.118', '2019-02-21', '2', '06:41:52', '2019-02-21 12:41:52', '2019-02-21 12:41:52'),
(317, '180.76.15.143', '2019-02-21', '2', '07:01:06', '2019-02-21 13:01:06', '2019-02-21 13:01:06'),
(318, '213.166.148.126', '2019-02-21', '3', '10:55:11', '2019-02-21 14:02:45', '2019-02-21 16:55:11'),
(319, '5.244.192.205', '2019-02-21', '2', '08:35:06', '2019-02-21 14:35:06', '2019-02-21 14:35:06'),
(320, '5.108.227.125', '2019-02-21', '2', '08:35:09', '2019-02-21 14:35:09', '2019-02-21 14:35:09'),
(321, '212.138.84.26', '2019-02-21', '2', '08:42:52', '2019-02-21 14:42:52', '2019-02-21 14:42:52'),
(322, '66.249.66.154', '2019-02-21', '2', '08:54:09', '2019-02-21 14:54:09', '2019-02-21 14:54:09'),
(323, '18.220.176.8', '2019-02-21', '3', '13:03:57', '2019-02-21 15:04:17', '2019-02-21 19:03:57'),
(324, '46.32.122.0', '2019-02-21', '2', '09:30:12', '2019-02-21 15:30:12', '2019-02-21 15:30:12'),
(325, '147.135.36.175', '2019-02-21', '2', '09:31:28', '2019-02-21 15:31:28', '2019-02-21 15:31:28'),
(326, '188.50.107.219', '2019-02-21', '2', '09:46:58', '2019-02-21 15:46:58', '2019-02-21 15:46:58'),
(327, '3.16.48.71', '2019-02-21', '3', '15:04:17', '2019-02-21 16:04:38', '2019-02-21 21:04:17'),
(328, '199.16.157.180', '2019-02-21', '2', '10:24:05', '2019-02-21 16:24:05', '2019-02-21 16:24:05'),
(329, '165.227.174.128', '2019-02-21', '3', '10:52:20', '2019-02-21 16:51:55', '2019-02-21 16:52:20'),
(330, '95.185.100.54', '2019-02-21', '5', '11:07:58', '2019-02-21 16:57:34', '2019-02-21 17:07:58'),
(331, '95.187.99.140', '2019-02-21', '3', '11:56:41', '2019-02-21 16:58:45', '2019-02-21 17:56:41'),
(332, '198.36.40.185', '2019-02-21', '2', '11:02:54', '2019-02-21 17:02:54', '2019-02-21 17:02:54'),
(333, '166.87.17.249', '2019-02-21', '2', '11:03:23', '2019-02-21 17:03:23', '2019-02-21 17:03:23'),
(334, '18.223.108.8', '2019-02-21', '2', '11:04:45', '2019-02-21 17:04:45', '2019-02-21 17:04:45'),
(335, '195.66.129.76', '2019-02-21', '3', '11:36:24', '2019-02-21 17:36:21', '2019-02-21 17:36:24'),
(336, '18.222.208.48', '2019-02-21', '2', '12:03:26', '2019-02-21 18:03:26', '2019-02-21 18:03:26'),
(337, '37.224.70.82', '2019-02-21', '2', '12:20:50', '2019-02-21 18:20:50', '2019-02-21 18:20:50'),
(338, '128.234.130.193', '2019-02-21', '2', '12:29:25', '2019-02-21 18:29:25', '2019-02-21 18:29:25'),
(339, '66.249.83.221', '2019-02-21', '2', '12:37:23', '2019-02-21 18:37:23', '2019-02-21 18:37:23'),
(340, '66.249.93.207', '2019-02-21', '4', '14:32:01', '2019-02-21 19:01:32', '2019-02-21 20:32:01'),
(341, '95.185.48.84', '2019-02-21', '2', '13:32:31', '2019-02-21 19:32:31', '2019-02-21 19:32:31'),
(342, '66.249.93.209', '2019-02-21', '2', '13:46:11', '2019-02-21 19:46:11', '2019-02-21 19:46:11'),
(343, '142.93.184.166', '2019-02-21', '2', '14:13:08', '2019-02-21 20:13:08', '2019-02-21 20:13:08'),
(344, '37.224.16.109', '2019-02-21', '2', '14:16:38', '2019-02-21 20:16:38', '2019-02-21 20:16:38'),
(345, '2.89.191.108', '2019-02-21', '3', '14:22:22', '2019-02-21 20:21:04', '2019-02-21 20:22:22'),
(346, '66.249.93.208', '2019-02-21', '4', '22:43:21', '2019-02-21 20:31:49', '2019-02-22 04:43:21'),
(347, '178.255.215.67', '2019-02-21', '2', '14:51:54', '2019-02-21 20:51:54', '2019-02-21 20:51:54'),
(348, '18.188.69.138', '2019-02-21', '3', '19:03:23', '2019-02-21 22:03:16', '2019-02-22 01:03:23'),
(349, '51.253.190.12', '2019-02-21', '3', '16:15:36', '2019-02-21 22:14:13', '2019-02-21 22:15:36'),
(350, '209.17.96.50', '2019-02-21', '2', '16:43:54', '2019-02-21 22:43:54', '2019-02-21 22:43:54'),
(351, '35.227.16.80', '2019-02-21', '3', '17:05:17', '2019-02-21 22:44:30', '2019-02-21 23:05:17'),
(352, '18.223.23.251', '2019-02-21', '3', '18:03:12', '2019-02-21 23:02:42', '2019-02-22 00:03:12'),
(353, '54.191.241.171', '2019-02-21', '3', '17:29:25', '2019-02-21 23:29:22', '2019-02-21 23:29:25'),
(354, '66.249.66.80', '2019-02-21', '2', '17:37:23', '2019-02-21 23:37:23', '2019-02-21 23:37:23'),
(355, '78.188.202.12', '2019-02-21', '2', '18:06:28', '2019-02-22 00:06:28', '2019-02-22 00:06:28'),
(356, '95.187.45.231', '2019-02-21', '2', '18:17:01', '2019-02-22 00:17:01', '2019-02-22 00:17:01'),
(357, '188.48.249.29', '2019-02-21', '2', '19:03:38', '2019-02-22 01:03:38', '2019-02-22 01:03:38'),
(358, '66.249.93.218', '2019-02-21', '2', '19:26:27', '2019-02-22 01:26:27', '2019-02-22 01:26:27'),
(359, '45.56.74.154', '2019-02-21', '2', '19:40:35', '2019-02-22 01:40:35', '2019-02-22 01:40:35'),
(360, '209.17.96.66', '2019-02-21', '2', '20:02:24', '2019-02-22 02:02:24', '2019-02-22 02:02:24'),
(361, '54.208.102.37', '2019-02-21', '2', '20:08:51', '2019-02-22 02:08:51', '2019-02-22 02:08:51'),
(362, '107.21.1.8', '2019-02-21', '2', '20:08:53', '2019-02-22 02:08:53', '2019-02-22 02:08:53'),
(363, '138.246.253.5', '2019-02-21', '2', '20:51:28', '2019-02-22 02:51:28', '2019-02-22 02:51:28'),
(364, '52.15.139.194', '2019-02-21', '2', '21:03:24', '2019-02-22 03:03:24', '2019-02-22 03:03:24'),
(365, '51.39.108.1', '2019-02-21', '2', '21:42:29', '2019-02-22 03:42:29', '2019-02-22 03:42:29'),
(366, '13.59.196.155', '2019-02-21', '2', '22:04:26', '2019-02-22 04:04:26', '2019-02-22 04:04:26'),
(367, '5.41.255.199', '2019-02-21', '2', '22:44:00', '2019-02-22 04:44:00', '2019-02-22 04:44:00'),
(368, '18.217.199.81', '2019-02-21', '2', '23:03:32', '2019-02-22 05:03:32', '2019-02-22 05:03:32'),
(369, '94.98.117.60', '2019-02-21', '3', '23:09:35', '2019-02-22 05:08:11', '2019-02-22 05:09:35'),
(370, '93.168.37.93', '2019-02-21', '2', '23:32:35', '2019-02-22 05:32:35', '2019-02-22 05:32:35'),
(371, '3.17.151.223', '2019-02-22', '3', '05:03:43', '2019-02-22 06:03:48', '2019-02-22 11:03:43'),
(372, '209.17.97.2', '2019-02-22', '2', '00:11:08', '2019-02-22 06:11:08', '2019-02-22 06:11:08'),
(373, '85.10.201.122', '2019-02-22', '2', '00:28:32', '2019-02-22 06:28:32', '2019-02-22 06:28:32'),
(374, '207.46.13.45', '2019-02-22', '2', '01:01:49', '2019-02-22 07:01:49', '2019-02-22 07:01:49'),
(375, '18.219.245.160', '2019-02-22', '2', '01:04:03', '2019-02-22 07:04:03', '2019-02-22 07:04:03'),
(376, '209.17.96.58', '2019-02-22', '2', '02:01:22', '2019-02-22 08:01:22', '2019-02-22 08:01:22'),
(377, '13.59.15.248', '2019-02-22', '4', '18:03:08', '2019-02-22 08:03:51', '2019-02-23 00:03:08'),
(378, '18.222.208.48', '2019-02-22', '4', '07:01:51', '2019-02-22 09:03:36', '2019-02-22 13:01:51'),
(379, '94.23.203.157', '2019-02-22', '2', '03:44:56', '2019-02-22 09:44:56', '2019-02-22 09:44:56'),
(380, '18.191.12.231', '2019-02-22', '2', '04:03:40', '2019-02-22 10:03:40', '2019-02-22 10:03:40'),
(381, '66.249.73.87', '2019-02-22', '2', '04:17:22', '2019-02-22 10:17:22', '2019-02-22 10:17:22'),
(382, '18.191.178.152', '2019-02-22', '6', '04:58:02', '2019-02-22 10:58:00', '2019-02-22 10:58:02'),
(383, '129.208.60.20', '2019-02-22', '2', '07:11:09', '2019-02-22 13:11:09', '2019-02-22 13:11:09'),
(384, '217.73.208.155', '2019-02-22', '2', '08:01:36', '2019-02-22 14:01:36', '2019-02-22 14:01:36'),
(385, '18.221.14.40', '2019-02-22', '3', '14:03:10', '2019-02-22 14:03:34', '2019-02-22 20:03:10'),
(386, '209.17.97.98', '2019-02-22', '2', '08:04:45', '2019-02-22 14:04:45', '2019-02-22 14:04:45'),
(387, '209.17.96.202', '2019-02-22', '2', '08:53:54', '2019-02-22 14:53:54', '2019-02-22 14:53:54'),
(388, '52.14.145.245', '2019-02-22', '3', '13:04:32', '2019-02-22 15:05:29', '2019-02-22 19:04:32'),
(389, '39.52.128.115', '2019-02-22', '3', '10:02:57', '2019-02-22 16:02:45', '2019-02-22 16:02:57'),
(390, '3.16.79.196', '2019-02-22', '2', '10:03:06', '2019-02-22 16:03:06', '2019-02-22 16:03:06'),
(391, '51.77.52.160', '2019-02-22', '2', '10:04:13', '2019-02-22 16:04:13', '2019-02-22 16:04:13'),
(392, '51.36.162.6', '2019-02-22', '2', '10:11:30', '2019-02-22 16:11:30', '2019-02-22 16:11:30'),
(393, '95.186.9.35', '2019-02-22', '2', '10:34:58', '2019-02-22 16:34:58', '2019-02-22 16:34:58'),
(394, '18.223.23.251', '2019-02-22', '2', '11:03:58', '2019-02-22 17:03:58', '2019-02-22 17:03:58'),
(395, '35.163.235.12', '2019-02-22', '3', '12:01:25', '2019-02-22 18:01:23', '2019-02-22 18:01:25'),
(396, '18.188.69.138', '2019-02-22', '2', '12:03:52', '2019-02-22 18:03:52', '2019-02-22 18:03:52'),
(397, '52.53.201.78', '2019-02-22', '2', '12:42:47', '2019-02-22 18:42:47', '2019-02-22 18:42:47'),
(398, '51.253.254.165', '2019-02-22', '2', '12:48:00', '2019-02-22 18:48:00', '2019-02-22 18:48:00'),
(399, '17.58.99.126', '2019-02-22', '2', '13:18:13', '2019-02-22 19:18:13', '2019-02-22 19:18:13'),
(400, '66.249.93.209', '2019-02-22', '2', '14:04:23', '2019-02-22 20:04:23', '2019-02-22 20:04:23'),
(401, '60.191.38.77', '2019-02-22', '2', '14:22:44', '2019-02-22 20:22:44', '2019-02-22 20:22:44'),
(402, '192.241.130.186', '2019-02-22', '2', '14:26:26', '2019-02-22 20:26:26', '2019-02-22 20:26:26'),
(403, '198.199.77.34', '2019-02-22', '2', '14:26:29', '2019-02-22 20:26:29', '2019-02-22 20:26:29'),
(404, '198.211.105.109', '2019-02-22', '2', '14:26:37', '2019-02-22 20:26:37', '2019-02-22 20:26:37'),
(405, '66.249.73.85', '2019-02-22', '2', '14:35:55', '2019-02-22 20:35:55', '2019-02-22 20:35:55'),
(406, '18.191.222.205', '2019-02-22', '2', '15:03:57', '2019-02-22 21:03:57', '2019-02-22 21:03:57'),
(407, '66.249.73.198', '2019-02-22', '2', '15:10:12', '2019-02-22 21:10:12', '2019-02-22 21:10:12'),
(408, '208.70.31.93', '2019-02-22', '2', '15:15:14', '2019-02-22 21:15:14', '2019-02-22 21:15:14'),
(409, '123.125.71.49', '2019-02-22', '2', '15:30:04', '2019-02-22 21:30:04', '2019-02-22 21:30:04'),
(410, '207.46.13.197', '2019-02-22', '2', '15:47:06', '2019-02-22 21:47:06', '2019-02-22 21:47:06'),
(411, '66.249.81.221', '2019-02-22', '2', '16:17:45', '2019-02-22 22:17:45', '2019-02-22 22:17:45'),
(412, '107.178.194.126', '2019-02-22', '2', '17:01:13', '2019-02-22 23:01:13', '2019-02-22 23:01:13'),
(413, '18.220.176.8', '2019-02-22', '3', '20:04:49', '2019-02-22 23:01:27', '2019-02-23 02:04:49'),
(414, '180.76.15.142', '2019-02-22', '2', '17:05:38', '2019-02-22 23:05:38', '2019-02-22 23:05:38'),
(415, '176.47.93.205', '2019-02-22', '6', '17:18:38', '2019-02-22 23:17:09', '2019-02-22 23:18:38'),
(416, '95.186.218.57', '2019-02-22', '2', '17:28:23', '2019-02-22 23:28:23', '2019-02-22 23:28:23'),
(417, '3.17.146.116', '2019-02-22', '3', '22:42:47', '2019-02-22 23:38:08', '2019-02-23 04:42:47'),
(418, '125.209.235.176', '2019-02-22', '3', '17:44:48', '2019-02-22 23:44:36', '2019-02-22 23:44:48'),
(419, '5.108.14.191', '2019-02-22', '2', '18:07:40', '2019-02-23 00:07:40', '2019-02-23 00:07:40'),
(420, '66.249.93.207', '2019-02-22', '2', '18:45:34', '2019-02-23 00:45:34', '2019-02-23 00:45:34'),
(421, '35.185.104.155', '2019-02-22', '3', '19:16:06', '2019-02-23 00:57:39', '2019-02-23 01:16:06'),
(422, '52.15.139.194', '2019-02-22', '2', '19:03:06', '2019-02-23 01:03:06', '2019-02-23 01:03:06'),
(423, '95.186.148.51', '2019-02-22', '2', '19:26:38', '2019-02-23 01:26:38', '2019-02-23 01:26:38'),
(424, '209.17.96.26', '2019-02-22', '2', '19:49:01', '2019-02-23 01:49:01', '2019-02-23 01:49:01'),
(425, '178.255.215.67', '2019-02-22', '2', '19:56:06', '2019-02-23 01:56:06', '2019-02-23 01:56:06'),
(426, '37.9.87.163', '2019-02-22', '2', '20:00:23', '2019-02-23 02:00:23', '2019-02-23 02:00:23'),
(427, '77.88.47.77', '2019-02-22', '2', '20:00:23', '2019-02-23 02:00:23', '2019-02-23 02:00:23'),
(428, '52.14.172.201', '2019-02-22', '2', '21:03:52', '2019-02-23 03:03:52', '2019-02-23 03:03:52'),
(429, '209.17.96.234', '2019-02-22', '2', '21:34:18', '2019-02-23 03:34:18', '2019-02-23 03:34:18'),
(430, '66.249.93.218', '2019-02-22', '2', '21:39:55', '2019-02-23 03:39:55', '2019-02-23 03:39:55'),
(431, '18.191.27.77', '2019-02-22', '2', '22:04:53', '2019-02-23 04:04:53', '2019-02-23 04:04:53'),
(432, '176.44.18.213', '2019-02-22', '2', '22:08:03', '2019-02-23 04:08:03', '2019-02-23 04:08:03'),
(433, '18.224.136.166', '2019-02-22', '2', '23:03:05', '2019-02-23 05:03:05', '2019-02-23 05:03:05'),
(434, '173.193.191.200', '2019-02-22', '2', '23:46:52', '2019-02-23 05:46:52', '2019-02-23 05:46:52'),
(435, '136.243.104.222', '2019-02-22', '2', '23:58:26', '2019-02-23 05:58:26', '2019-02-23 05:58:26'),
(436, '18.191.27.77', '2019-02-23', '3', '20:04:29', '2019-02-23 06:02:42', '2019-02-24 02:04:29'),
(437, '178.17.170.135', '2019-02-23', '2', '00:43:15', '2019-02-23 06:43:15', '2019-02-23 06:43:15'),
(438, '157.55.39.153', '2019-02-23', '2', '00:59:32', '2019-02-23 06:59:32', '2019-02-23 06:59:32'),
(439, '18.223.23.251', '2019-02-23', '2', '01:02:36', '2019-02-23 07:02:36', '2019-02-23 07:02:36'),
(440, '52.15.139.194', '2019-02-23', '2', '02:03:57', '2019-02-23 08:03:57', '2019-02-23 08:03:57'),
(441, '207.46.13.87', '2019-02-23', '2', '02:11:41', '2019-02-23 08:11:41', '2019-02-23 08:11:41'),
(442, '46.4.22.136', '2019-02-23', '2', '02:51:22', '2019-02-23 08:51:22', '2019-02-23 08:51:22'),
(443, '66.249.73.87', '2019-02-23', '2', '02:54:45', '2019-02-23 08:54:45', '2019-02-23 08:54:45'),
(444, '18.224.2.67', '2019-02-23', '2', '03:03:44', '2019-02-23 09:03:44', '2019-02-23 09:03:44'),
(445, '95.216.9.125', '2019-02-23', '3', '23:37:35', '2019-02-23 09:17:28', '2019-02-24 05:37:35'),
(446, '208.70.31.93', '2019-02-23', '2', '03:54:16', '2019-02-23 09:54:16', '2019-02-23 09:54:16'),
(447, '3.16.48.71', '2019-02-23', '4', '11:03:40', '2019-02-23 10:04:04', '2019-02-23 17:03:40'),
(448, '18.191.12.231', '2019-02-23', '5', '23:03:44', '2019-02-23 11:03:43', '2019-02-24 05:03:44'),
(449, '46.118.157.179', '2019-02-23', '3', '05:44:20', '2019-02-23 11:44:17', '2019-02-23 11:44:20'),
(450, '95.186.227.41', '2019-02-23', '2', '06:06:11', '2019-02-23 12:06:11', '2019-02-23 12:06:11'),
(451, '45.55.239.150', '2019-02-23', '4', '06:09:26', '2019-02-23 12:07:36', '2019-02-23 12:09:26'),
(452, '51.253.247.197', '2019-02-23', '3', '06:25:08', '2019-02-23 12:17:03', '2019-02-23 12:25:08'),
(453, '3.17.151.223', '2019-02-23', '2', '07:02:59', '2019-02-23 13:02:59', '2019-02-23 13:02:59'),
(454, '13.57.233.99', '2019-02-23', '2', '07:26:27', '2019-02-23 13:26:27', '2019-02-23 13:26:27'),
(455, '197.44.234.107', '2019-02-23', '2', '08:03:01', '2019-02-23 14:03:01', '2019-02-23 14:03:01'),
(456, '18.223.117.68', '2019-02-23', '2', '08:06:24', '2019-02-23 14:06:24', '2019-02-23 14:06:24'),
(457, '5.108.207.17', '2019-02-23', '4', '08:17:37', '2019-02-23 14:15:22', '2019-02-23 14:17:37'),
(458, '5.110.200.230', '2019-02-23', '2', '08:38:07', '2019-02-23 14:38:07', '2019-02-23 14:38:07'),
(459, '54.37.234.66', '2019-02-23', '2', '08:45:24', '2019-02-23 14:45:24', '2019-02-23 14:45:24'),
(460, '40.77.167.64', '2019-02-23', '2', '08:50:55', '2019-02-23 14:50:55', '2019-02-23 14:50:55'),
(461, '52.14.172.201', '2019-02-23', '2', '09:03:56', '2019-02-23 15:03:56', '2019-02-23 15:03:56'),
(462, '95.187.99.140', '2019-02-23', '2', '09:19:49', '2019-02-23 15:19:49', '2019-02-23 15:19:49'),
(463, '188.52.192.228', '2019-02-23', '3', '09:42:25', '2019-02-23 15:40:03', '2019-02-23 15:42:25'),
(464, '176.224.82.78', '2019-02-23', '3', '10:19:33', '2019-02-23 16:17:06', '2019-02-23 16:19:33'),
(465, '209.17.96.210', '2019-02-23', '2', '10:25:31', '2019-02-23 16:25:31', '2019-02-23 16:25:31'),
(466, '66.249.81.215', '2019-02-23', '3', '14:41:50', '2019-02-23 16:36:28', '2019-02-23 20:41:50'),
(467, '66.249.93.217', '2019-02-23', '3', '10:37:44', '2019-02-23 16:37:08', '2019-02-23 16:37:44'),
(468, '151.80.141.125', '2019-02-23', '2', '11:13:37', '2019-02-23 17:13:37', '2019-02-23 17:13:37'),
(469, '147.135.36.175', '2019-02-23', '4', '12:56:45', '2019-02-23 17:20:23', '2019-02-23 18:56:45'),
(470, '188.138.9.180', '2019-02-23', '5', '13:39:16', '2019-02-23 17:20:48', '2019-02-23 19:39:16'),
(471, '157.55.39.252', '2019-02-23', '2', '11:24:25', '2019-02-23 17:24:25', '2019-02-23 17:24:25'),
(472, '66.249.93.216', '2019-02-23', '2', '11:30:51', '2019-02-23 17:30:51', '2019-02-23 17:30:51'),
(473, '188.138.9.236', '2019-02-23', '2', '11:35:00', '2019-02-23 17:35:00', '2019-02-23 17:35:00'),
(474, '213.166.148.126', '2019-02-23', '6', '12:43:30', '2019-02-23 17:36:43', '2019-02-23 18:43:30'),
(475, '66.249.83.220', '2019-02-23', '2', '12:09:21', '2019-02-23 18:09:21', '2019-02-23 18:09:21'),
(476, '66.249.83.221', '2019-02-23', '2', '12:09:21', '2019-02-23 18:09:21', '2019-02-23 18:09:21'),
(477, '42.156.137.112', '2019-02-23', '2', '12:18:07', '2019-02-23 18:18:07', '2019-02-23 18:18:07'),
(478, '66.249.93.218', '2019-02-23', '2', '12:34:29', '2019-02-23 18:34:29', '2019-02-23 18:34:29'),
(479, '13.59.196.155', '2019-02-23', '4', '16:02:05', '2019-02-23 19:04:20', '2019-02-23 22:02:05'),
(480, '18.217.199.81', '2019-02-23', '3', '21:03:27', '2019-02-23 20:04:13', '2019-02-24 03:03:27'),
(481, '151.255.89.129', '2019-02-23', '2', '14:53:17', '2019-02-23 20:53:17', '2019-02-23 20:53:17'),
(482, '31.167.114.181', '2019-02-23', '2', '15:00:28', '2019-02-23 21:00:28', '2019-02-23 21:00:28'),
(483, '66.249.93.208', '2019-02-23', '2', '15:25:48', '2019-02-23 21:25:48', '2019-02-23 21:25:48'),
(484, '35.167.177.5', '2019-02-23', '3', '15:28:00', '2019-02-23 21:27:58', '2019-02-23 21:28:00'),
(485, '95.187.198.89', '2019-02-23', '3', '15:42:19', '2019-02-23 21:39:32', '2019-02-23 21:42:19'),
(486, '35.243.142.104', '2019-02-23', '3', '16:16:17', '2019-02-23 21:55:58', '2019-02-23 22:16:17'),
(487, '151.255.46.107', '2019-02-23', '2', '16:20:45', '2019-02-23 22:20:45', '2019-02-23 22:20:45'),
(488, '18.219.245.160', '2019-02-23', '2', '17:03:41', '2019-02-23 23:03:41', '2019-02-23 23:03:41'),
(489, '51.36.69.89', '2019-02-23', '3', '17:11:09', '2019-02-23 23:10:09', '2019-02-23 23:11:09'),
(490, '18.220.176.8', '2019-02-23', '2', '18:02:34', '2019-02-24 00:02:34', '2019-02-24 00:02:34'),
(491, '188.50.251.165', '2019-02-23', '4', '18:05:49', '2019-02-24 00:04:33', '2019-02-24 00:05:49'),
(492, '66.249.73.200', '2019-02-23', '2', '18:07:01', '2019-02-24 00:07:01', '2019-02-24 00:07:01'),
(493, '178.255.215.67', '2019-02-23', '2', '18:56:56', '2019-02-24 00:56:56', '2019-02-24 00:56:56'),
(494, '195.3.144.185', '2019-02-23', '2', '19:00:24', '2019-02-24 01:00:24', '2019-02-24 01:00:24'),
(495, '18.221.14.40', '2019-02-23', '2', '19:03:40', '2019-02-24 01:03:40', '2019-02-24 01:03:40'),
(496, '66.249.73.196', '2019-02-23', '2', '19:19:41', '2019-02-24 01:19:41', '2019-02-24 01:19:41'),
(497, '37.56.47.238', '2019-02-23', '2', '19:27:35', '2019-02-24 01:27:35', '2019-02-24 01:27:35'),
(498, '87.109.225.217', '2019-02-23', '3', '19:42:32', '2019-02-24 01:41:09', '2019-02-24 01:42:32'),
(499, '176.45.208.56', '2019-02-23', '3', '21:20:28', '2019-02-24 03:17:11', '2019-02-24 03:20:28'),
(500, '23.237.4.26', '2019-02-23', '2', '21:55:52', '2019-02-24 03:55:52', '2019-02-24 03:55:52'),
(501, '3.16.25.235', '2019-02-23', '2', '22:05:15', '2019-02-24 04:05:15', '2019-02-24 04:05:15'),
(502, '66.249.93.209', '2019-02-23', '2', '22:49:01', '2019-02-24 04:49:01', '2019-02-24 04:49:01'),
(503, '95.187.23.140', '2019-02-23', '2', '23:08:50', '2019-02-24 05:08:50', '2019-02-24 05:08:50'),
(504, '13.59.15.248', '2019-02-24', '2', '00:03:11', '2019-02-24 06:03:11', '2019-02-24 06:03:11'),
(505, '51.36.93.102', '2019-02-24', '2', '00:06:23', '2019-02-24 06:06:23', '2019-02-24 06:06:23');
INSERT INTO `visitors` (`id`, `ip`, `date`, `hits`, `visit_time`, `created_at`, `updated_at`) VALUES
(506, '107.178.194.96', '2019-02-24', '2', '00:14:30', '2019-02-24 06:14:30', '2019-02-24 06:14:30'),
(507, '18.223.135.142', '2019-02-24', '3', '08:03:38', '2019-02-24 07:03:33', '2019-02-24 14:03:38'),
(508, '46.4.120.42', '2019-02-24', '3', '19:50:52', '2019-02-24 07:20:48', '2019-02-25 01:50:52'),
(509, '94.48.19.15', '2019-02-24', '5', '02:04:49', '2019-02-24 07:45:39', '2019-02-24 08:04:49'),
(510, '3.17.151.223', '2019-02-24', '2', '02:03:11', '2019-02-24 08:03:11', '2019-02-24 08:03:11'),
(511, '95.186.28.171', '2019-02-24', '3', '04:34:18', '2019-02-24 08:58:01', '2019-02-24 10:34:18'),
(512, '3.17.58.50', '2019-02-24', '3', '16:03:46', '2019-02-24 09:04:09', '2019-02-24 22:03:46'),
(513, '5.111.94.70', '2019-02-24', '2', '03:07:30', '2019-02-24 09:07:30', '2019-02-24 09:07:30'),
(514, '95.187.63.54', '2019-02-24', '2', '03:11:31', '2019-02-24 09:11:31', '2019-02-24 09:11:31'),
(515, '101.100.165.98', '2019-02-24', '2', '03:23:28', '2019-02-24 09:23:28', '2019-02-24 09:23:28'),
(516, '95.186.252.62', '2019-02-24', '4', '03:39:43', '2019-02-24 09:38:09', '2019-02-24 09:39:43'),
(517, '3.16.25.235', '2019-02-24', '3', '23:03:07', '2019-02-24 10:02:56', '2019-02-25 05:03:07'),
(518, '157.55.39.163', '2019-02-24', '2', '04:48:14', '2019-02-24 10:48:14', '2019-02-24 10:48:14'),
(519, '18.223.117.68', '2019-02-24', '3', '07:04:17', '2019-02-24 11:03:45', '2019-02-24 13:04:17'),
(520, '89.147.0.196', '2019-02-24', '3', '05:34:28', '2019-02-24 11:34:24', '2019-02-24 11:34:28'),
(521, '180.76.15.27', '2019-02-24', '2', '05:46:49', '2019-02-24 11:46:49', '2019-02-24 11:46:49'),
(522, '95.185.142.23', '2019-02-24', '4', '05:47:40', '2019-02-24 11:46:50', '2019-02-24 11:47:40'),
(523, '18.221.14.40', '2019-02-24', '2', '06:03:39', '2019-02-24 12:03:39', '2019-02-24 12:03:39'),
(524, '51.39.67.213', '2019-02-24', '2', '07:02:04', '2019-02-24 13:02:04', '2019-02-24 13:02:04'),
(525, '31.166.224.44', '2019-02-24', '2', '07:47:31', '2019-02-24 13:47:31', '2019-02-24 13:47:31'),
(526, '185.130.78.23', '2019-02-24', '2', '08:00:35', '2019-02-24 14:00:35', '2019-02-24 14:00:35'),
(527, '66.249.73.198', '2019-02-24', '2', '08:15:50', '2019-02-24 14:15:50', '2019-02-24 14:15:50'),
(528, '51.36.86.241', '2019-02-24', '2', '08:29:58', '2019-02-24 14:29:58', '2019-02-24 14:29:58'),
(529, '213.166.148.126', '2019-02-24', '2', '08:45:12', '2019-02-24 14:45:12', '2019-02-24 14:45:12'),
(530, '87.101.248.114', '2019-02-24', '2', '09:01:17', '2019-02-24 15:01:17', '2019-02-24 15:01:17'),
(531, '18.224.136.166', '2019-02-24', '2', '09:04:17', '2019-02-24 15:04:17', '2019-02-24 15:04:17'),
(532, '5.108.128.97', '2019-02-24', '2', '09:33:52', '2019-02-24 15:33:52', '2019-02-24 15:33:52'),
(533, '207.46.13.71', '2019-02-24', '2', '09:38:21', '2019-02-24 15:38:21', '2019-02-24 15:38:21'),
(534, '66.249.81.194', '2019-02-24', '2', '09:57:57', '2019-02-24 15:57:57', '2019-02-24 15:57:57'),
(535, '66.249.81.221', '2019-02-24', '4', '12:54:31', '2019-02-24 15:58:25', '2019-02-24 18:54:31'),
(536, '3.16.79.196', '2019-02-24', '2', '10:03:04', '2019-02-24 16:03:04', '2019-02-24 16:03:04'),
(537, '5.41.40.145', '2019-02-24', '3', '10:13:31', '2019-02-24 16:11:48', '2019-02-24 16:13:31'),
(538, '107.178.194.124', '2019-02-24', '2', '10:28:56', '2019-02-24 16:28:56', '2019-02-24 16:28:56'),
(539, '31.167.27.117', '2019-02-24', '2', '10:42:34', '2019-02-24 16:42:34', '2019-02-24 16:42:34'),
(540, '40.77.167.95', '2019-02-24', '2', '10:54:42', '2019-02-24 16:54:42', '2019-02-24 16:54:42'),
(541, '3.16.48.71', '2019-02-24', '3', '17:04:13', '2019-02-24 17:04:41', '2019-02-24 23:04:13'),
(542, '188.55.240.6', '2019-02-24', '2', '11:08:23', '2019-02-24 17:08:23', '2019-02-24 17:08:23'),
(543, '51.36.142.91', '2019-02-24', '3', '11:43:24', '2019-02-24 17:30:22', '2019-02-24 17:43:24'),
(544, '66.249.93.218', '2019-02-24', '3', '12:01:42', '2019-02-24 17:52:11', '2019-02-24 18:01:42'),
(545, '188.138.9.180', '2019-02-24', '2', '11:53:44', '2019-02-24 17:53:44', '2019-02-24 17:53:44'),
(546, '66.249.93.216', '2019-02-24', '2', '11:54:19', '2019-02-24 17:54:19', '2019-02-24 17:54:19'),
(547, '18.188.69.138', '2019-02-24', '4', '18:03:53', '2019-02-24 18:04:46', '2019-02-25 00:03:53'),
(548, '5.41.136.21', '2019-02-24', '2', '12:24:34', '2019-02-24 18:24:34', '2019-02-24 18:24:34'),
(549, '176.15.19.105', '2019-02-24', '2', '12:39:57', '2019-02-24 18:39:57', '2019-02-24 18:39:57'),
(550, '18.223.23.251', '2019-02-24', '3', '22:02:07', '2019-02-24 19:03:15', '2019-02-25 04:02:07'),
(551, '54.200.72.157', '2019-02-24', '3', '13:11:35', '2019-02-24 19:11:32', '2019-02-24 19:11:35'),
(552, '37.115.191.132', '2019-02-24', '3', '13:13:20', '2019-02-24 19:13:15', '2019-02-24 19:13:20'),
(553, '180.76.15.137', '2019-02-24', '2', '13:16:06', '2019-02-24 19:16:06', '2019-02-24 19:16:06'),
(554, '87.101.179.132', '2019-02-24', '2', '13:36:18', '2019-02-24 19:36:18', '2019-02-24 19:36:18'),
(555, '5.244.77.144', '2019-02-24', '2', '13:44:52', '2019-02-24 19:44:52', '2019-02-24 19:44:52'),
(556, '18.219.245.160', '2019-02-24', '2', '14:03:12', '2019-02-24 20:03:12', '2019-02-24 20:03:12'),
(557, '31.166.115.22', '2019-02-24', '2', '14:14:54', '2019-02-24 20:14:54', '2019-02-24 20:14:54'),
(558, '5.108.64.179', '2019-02-24', '2', '15:22:35', '2019-02-24 21:22:35', '2019-02-24 21:22:35'),
(559, '5.108.183.20', '2019-02-24', '2', '15:34:15', '2019-02-24 21:34:15', '2019-02-24 21:34:15'),
(560, '5.244.235.208', '2019-02-24', '2', '15:41:33', '2019-02-24 21:41:33', '2019-02-24 21:41:33'),
(561, '94.48.26.254', '2019-02-24', '3', '16:38:26', '2019-02-24 22:37:33', '2019-02-24 22:38:26'),
(562, '5.41.173.222', '2019-02-24', '2', '17:03:26', '2019-02-24 23:03:26', '2019-02-24 23:03:26'),
(563, '185.249.197.229', '2019-02-24', '2', '17:15:38', '2019-02-24 23:15:38', '2019-02-24 23:15:38'),
(564, '66.249.93.209', '2019-02-24', '2', '17:21:40', '2019-02-24 23:21:40', '2019-02-24 23:21:40'),
(565, '5.41.53.153', '2019-02-24', '2', '17:44:11', '2019-02-24 23:44:11', '2019-02-24 23:44:11'),
(566, '51.39.213.58', '2019-02-24', '2', '18:12:44', '2019-02-25 00:12:44', '2019-02-25 00:12:44'),
(567, '3.17.158.185', '2019-02-24', '2', '18:27:50', '2019-02-25 00:27:50', '2019-02-25 00:27:50'),
(568, '18.222.130.166', '2019-02-24', '2', '19:03:39', '2019-02-25 01:03:39', '2019-02-25 01:03:39'),
(569, '35.243.191.168', '2019-02-24', '3', '19:43:39', '2019-02-25 01:25:01', '2019-02-25 01:43:39'),
(570, '18.222.109.213', '2019-02-24', '2', '20:02:42', '2019-02-25 02:02:42', '2019-02-25 02:02:42'),
(571, '95.187.3.23', '2019-02-24', '2', '20:04:29', '2019-02-25 02:04:29', '2019-02-25 02:04:29'),
(572, '52.53.201.78', '2019-02-24', '2', '20:22:43', '2019-02-25 02:22:43', '2019-02-25 02:22:43'),
(573, '31.167.204.168', '2019-02-24', '2', '20:43:21', '2019-02-25 02:43:21', '2019-02-25 02:43:21'),
(574, '37.105.68.192', '2019-02-24', '2', '21:02:25', '2019-02-25 03:02:25', '2019-02-25 03:02:25'),
(575, '52.14.145.245', '2019-02-24', '2', '21:03:34', '2019-02-25 03:03:34', '2019-02-25 03:03:34'),
(576, '176.45.253.228', '2019-02-24', '2', '21:21:50', '2019-02-25 03:21:50', '2019-02-25 03:21:50'),
(577, '188.50.151.124', '2019-02-24', '3', '21:50:11', '2019-02-25 03:48:38', '2019-02-25 03:50:11'),
(578, '149.202.86.127', '2019-02-24', '2', '22:28:14', '2019-02-25 04:28:14', '2019-02-25 04:28:14'),
(579, '66.249.73.200', '2019-02-24', '2', '22:32:22', '2019-02-25 04:32:22', '2019-02-25 04:32:22'),
(580, '66.249.93.207', '2019-02-24', '2', '22:37:59', '2019-02-25 04:37:59', '2019-02-25 04:37:59'),
(581, '60.191.38.77', '2019-02-24', '4', '22:52:55', '2019-02-25 04:46:18', '2019-02-25 04:52:55'),
(582, '18.221.14.40', '2019-02-25', '2', '00:03:37', '2019-02-25 06:03:37', '2019-02-25 06:03:37'),
(583, '95.216.18.217', '2019-02-25', '2', '00:51:54', '2019-02-25 06:51:54', '2019-02-25 06:51:54'),
(584, '52.15.139.194', '2019-02-25', '2', '01:04:34', '2019-02-25 07:04:34', '2019-02-25 07:04:34'),
(585, '66.249.73.194', '2019-02-25', '2', '01:40:06', '2019-02-25 07:40:06', '2019-02-25 07:40:06'),
(586, '18.223.135.142', '2019-02-25', '3', '12:03:40', '2019-02-25 08:03:45', '2019-02-25 18:03:40'),
(587, '157.55.39.219', '2019-02-25', '2', '02:27:30', '2019-02-25 08:27:30', '2019-02-25 08:27:30'),
(588, '112.5.243.184', '2019-02-25', '2', '02:46:28', '2019-02-25 08:46:28', '2019-02-25 08:46:28'),
(589, '3.16.48.71', '2019-02-25', '2', '03:02:35', '2019-02-25 09:02:35', '2019-02-25 09:02:35'),
(590, '176.225.62.192', '2019-02-25', '2', '03:28:26', '2019-02-25 09:28:26', '2019-02-25 09:28:26'),
(591, '3.17.58.50', '2019-02-25', '2', '04:03:47', '2019-02-25 10:03:47', '2019-02-25 10:03:47'),
(592, '107.178.194.96', '2019-02-25', '2', '04:17:47', '2019-02-25 10:17:47', '2019-02-25 10:17:47'),
(593, '5.135.230.129', '2019-02-25', '10', '04:24:27', '2019-02-25 10:17:56', '2019-02-25 10:24:27'),
(594, '138.197.7.134', '2019-02-25', '3', '04:29:39', '2019-02-25 10:28:37', '2019-02-25 10:29:39'),
(595, '18.191.182.120', '2019-02-25', '2', '05:03:35', '2019-02-25 11:03:35', '2019-02-25 11:03:35'),
(596, '66.249.81.194', '2019-02-25', '3', '09:45:20', '2019-02-25 11:05:52', '2019-02-25 15:45:20'),
(597, '37.224.73.253', '2019-02-25', '3', '06:09:47', '2019-02-25 11:37:42', '2019-02-25 12:09:47'),
(598, '66.249.93.208', '2019-02-25', '2', '05:59:01', '2019-02-25 11:59:01', '2019-02-25 11:59:01'),
(599, '18.222.109.213', '2019-02-25', '2', '06:03:02', '2019-02-25 12:03:02', '2019-02-25 12:03:02'),
(600, '195.134.184.235', '2019-02-25', '2', '06:32:49', '2019-02-25 12:32:49', '2019-02-25 12:32:49'),
(601, '95.187.242.113', '2019-02-25', '2', '06:46:06', '2019-02-25 12:46:06', '2019-02-25 12:46:06'),
(602, '18.219.245.160', '2019-02-25', '2', '07:03:38', '2019-02-25 13:03:38', '2019-02-25 13:03:38'),
(603, '23.111.165.2', '2019-02-25', '2', '07:22:44', '2019-02-25 13:22:44', '2019-02-25 13:22:44'),
(604, '209.97.152.243', '2019-02-25', '2', '07:26:38', '2019-02-25 13:26:38', '2019-02-25 13:26:38'),
(605, '66.249.73.202', '2019-02-25', '4', '23:58:59', '2019-02-25 13:26:47', '2019-02-26 05:58:59'),
(606, '188.50.158.35', '2019-02-25', '7', '09:36:00', '2019-02-25 13:26:59', '2019-02-25 15:36:00'),
(607, '165.227.210.120', '2019-02-25', '3', '07:30:05', '2019-02-25 13:29:29', '2019-02-25 13:30:05'),
(608, '51.75.66.250', '2019-02-25', '4', '07:35:30', '2019-02-25 13:35:25', '2019-02-25 13:35:30'),
(609, '74.82.47.194', '2019-02-25', '2', '07:35:54', '2019-02-25 13:35:54', '2019-02-25 13:35:54'),
(610, '109.70.100.19', '2019-02-25', '2', '07:36:10', '2019-02-25 13:36:10', '2019-02-25 13:36:10'),
(611, '188.166.10.43', '2019-02-25', '3', '07:36:17', '2019-02-25 13:36:14', '2019-02-25 13:36:17'),
(612, '178.87.75.35', '2019-02-25', '2', '07:37:08', '2019-02-25 13:37:08', '2019-02-25 13:37:08'),
(613, '180.76.15.19', '2019-02-25', '2', '07:40:28', '2019-02-25 13:40:28', '2019-02-25 13:40:28'),
(614, '46.235.95.180', '2019-02-25', '2', '07:46:19', '2019-02-25 13:46:19', '2019-02-25 13:46:19'),
(615, '18.191.222.205', '2019-02-25', '2', '08:03:43', '2019-02-25 14:03:43', '2019-02-25 14:03:43'),
(616, '51.36.235.207', '2019-02-25', '2', '08:04:40', '2019-02-25 14:04:40', '2019-02-25 14:04:40'),
(617, '212.138.84.26', '2019-02-25', '3', '08:06:58', '2019-02-25 14:06:32', '2019-02-25 14:06:58'),
(618, '207.46.13.11', '2019-02-25', '2', '08:18:52', '2019-02-25 14:18:52', '2019-02-25 14:18:52'),
(619, '157.55.39.202', '2019-02-25', '2', '08:24:18', '2019-02-25 14:24:18', '2019-02-25 14:24:18'),
(620, '31.166.131.70', '2019-02-25', '4', '09:37:00', '2019-02-25 14:34:53', '2019-02-25 15:37:01'),
(621, '5.108.17.100', '2019-02-25', '2', '08:42:17', '2019-02-25 14:42:17', '2019-02-25 14:42:17'),
(622, '5.244.146.210', '2019-02-25', '2', '08:49:04', '2019-02-25 14:49:04', '2019-02-25 14:49:04'),
(623, '18.191.27.77', '2019-02-25', '3', '11:04:25', '2019-02-25 15:05:03', '2019-02-25 17:04:25'),
(624, '151.255.32.171', '2019-02-25', '2', '09:08:16', '2019-02-25 15:08:16', '2019-02-25 15:08:16'),
(625, '151.255.36.94', '2019-02-25', '2', '09:18:02', '2019-02-25 15:18:02', '2019-02-25 15:18:02'),
(626, '66.249.73.87', '2019-02-25', '2', '09:19:25', '2019-02-25 15:19:25', '2019-02-25 15:19:25'),
(627, '188.138.9.180', '2019-02-25', '2', '09:24:18', '2019-02-25 15:24:18', '2019-02-25 15:24:18'),
(628, '213.166.148.126', '2019-02-25', '3', '11:25:12', '2019-02-25 15:27:52', '2019-02-25 17:25:12'),
(629, '5.244.208.24', '2019-02-25', '2', '09:56:52', '2019-02-25 15:56:52', '2019-02-25 15:56:52'),
(630, '66.249.81.211', '2019-02-25', '2', '10:00:59', '2019-02-25 16:00:59', '2019-02-25 16:00:59'),
(631, '18.217.199.81', '2019-02-25', '3', '20:03:03', '2019-02-25 16:03:57', '2019-02-26 02:03:03'),
(632, '3.83.80.249', '2019-02-25', '2', '10:04:34', '2019-02-25 16:04:34', '2019-02-25 16:04:34'),
(633, '129.208.252.222', '2019-02-25', '4', '10:30:54', '2019-02-25 16:08:10', '2019-02-25 16:30:54'),
(634, '31.167.114.181', '2019-02-25', '2', '10:10:29', '2019-02-25 16:10:29', '2019-02-25 16:10:29'),
(635, '188.49.154.217', '2019-02-25', '2', '10:26:12', '2019-02-25 16:26:12', '2019-02-25 16:26:12'),
(636, '66.249.73.198', '2019-02-25', '3', '23:16:04', '2019-02-25 16:51:56', '2019-02-26 05:16:04'),
(637, '154.51.131.142', '2019-02-25', '2', '11:08:03', '2019-02-25 17:08:03', '2019-02-25 17:08:03'),
(638, '104.199.88.124', '2019-02-25', '3', '11:33:36', '2019-02-25 17:33:34', '2019-02-25 17:33:36'),
(639, '176.47.102.108', '2019-02-25', '2', '11:38:28', '2019-02-25 17:38:28', '2019-02-25 17:38:28'),
(640, '66.102.7.233', '2019-02-25', '2', '12:08:25', '2019-02-25 18:08:25', '2019-02-25 18:08:25'),
(641, '128.234.35.50', '2019-02-25', '2', '12:27:28', '2019-02-25 18:27:28', '2019-02-25 18:27:28'),
(642, '66.249.93.207', '2019-02-25', '2', '12:31:38', '2019-02-25 18:31:38', '2019-02-25 18:31:38'),
(643, '66.249.93.209', '2019-02-25', '3', '23:33:34', '2019-02-25 18:32:16', '2019-02-26 05:33:34'),
(644, '68.183.159.152', '2019-02-25', '2', '12:53:40', '2019-02-25 18:53:40', '2019-02-25 18:53:40'),
(645, '165.227.210.170', '2019-02-25', '2', '12:55:56', '2019-02-25 18:55:56', '2019-02-25 18:55:56'),
(646, '18.222.208.48', '2019-02-25', '2', '13:03:25', '2019-02-25 19:03:25', '2019-02-25 19:03:25'),
(647, '95.186.189.19', '2019-02-25', '3', '13:11:50', '2019-02-25 19:08:12', '2019-02-25 19:11:50'),
(648, '165.227.218.29', '2019-02-25', '2', '13:38:04', '2019-02-25 19:38:04', '2019-02-25 19:38:04'),
(649, '3.17.151.223', '2019-02-25', '2', '14:03:52', '2019-02-25 20:03:52', '2019-02-25 20:03:52'),
(650, '66.102.7.235', '2019-02-25', '2', '14:08:46', '2019-02-25 20:08:46', '2019-02-25 20:08:46'),
(651, '5.111.131.73', '2019-02-25', '2', '14:08:47', '2019-02-25 20:08:47', '2019-02-25 20:08:47'),
(652, '66.249.81.223', '2019-02-25', '2', '14:12:16', '2019-02-25 20:12:16', '2019-02-25 20:12:16'),
(653, '18.188.69.138', '2019-02-25', '2', '15:03:35', '2019-02-25 21:03:35', '2019-02-25 21:03:35'),
(654, '112.200.192.66', '2019-02-25', '2', '15:27:15', '2019-02-25 21:27:15', '2019-02-25 21:27:15'),
(655, '3.16.25.235', '2019-02-25', '2', '16:04:01', '2019-02-25 22:04:01', '2019-02-25 22:04:01'),
(656, '137.226.113.27', '2019-02-25', '2', '16:57:26', '2019-02-25 22:57:26', '2019-02-25 22:57:26'),
(657, '34.212.39.99', '2019-02-25', '3', '17:00:52', '2019-02-25 23:00:49', '2019-02-25 23:00:52'),
(658, '18.222.130.166', '2019-02-25', '3', '23:04:03', '2019-02-25 23:05:14', '2019-02-26 05:04:03'),
(659, '176.224.64.160', '2019-02-25', '2', '17:06:28', '2019-02-25 23:06:28', '2019-02-25 23:06:28'),
(660, '188.50.20.202', '2019-02-25', '5', '17:32:28', '2019-02-25 23:23:38', '2019-02-25 23:32:28'),
(661, '116.203.106.128', '2019-02-25', '2', '17:31:53', '2019-02-25 23:31:53', '2019-02-25 23:31:53'),
(662, '188.49.13.77', '2019-02-25', '2', '17:50:53', '2019-02-25 23:50:53', '2019-02-25 23:50:53'),
(663, '13.59.196.155', '2019-02-25', '3', '22:04:17', '2019-02-26 00:03:53', '2019-02-26 04:04:17'),
(664, '51.39.214.90', '2019-02-25', '3', '18:29:36', '2019-02-26 00:09:28', '2019-02-26 00:29:36'),
(665, '209.17.96.242', '2019-02-25', '2', '18:14:01', '2019-02-26 00:14:01', '2019-02-26 00:14:01'),
(666, '176.47.41.131', '2019-02-25', '2', '18:32:29', '2019-02-26 00:32:29', '2019-02-26 00:32:29'),
(667, '188.55.232.94', '2019-02-25', '2', '18:35:35', '2019-02-26 00:35:35', '2019-02-26 00:35:35'),
(668, '52.14.145.245', '2019-02-25', '2', '19:04:30', '2019-02-26 01:04:30', '2019-02-26 01:04:30'),
(669, '5.244.190.185', '2019-02-25', '2', '19:21:56', '2019-02-26 01:21:56', '2019-02-26 01:21:56'),
(670, '35.243.142.104', '2019-02-25', '2', '19:54:04', '2019-02-26 01:54:04', '2019-02-26 01:54:04'),
(671, '188.52.205.91', '2019-02-25', '2', '19:56:34', '2019-02-26 01:56:34', '2019-02-26 01:56:34'),
(672, '66.249.73.83', '2019-02-25', '2', '20:05:20', '2019-02-26 02:05:20', '2019-02-26 02:05:20'),
(673, '188.53.228.14', '2019-02-25', '2', '20:05:57', '2019-02-26 02:05:57', '2019-02-26 02:05:57'),
(674, '35.243.253.151', '2019-02-25', '4', '23:20:45', '2019-02-26 02:10:35', '2019-02-26 05:20:45'),
(675, '54.208.102.37', '2019-02-25', '2', '20:35:41', '2019-02-26 02:35:41', '2019-02-26 02:35:41'),
(676, '209.17.96.210', '2019-02-25', '2', '20:53:10', '2019-02-26 02:53:10', '2019-02-26 02:53:10'),
(677, '18.216.12.224', '2019-02-25', '2', '21:03:30', '2019-02-26 03:03:30', '2019-02-26 03:03:30'),
(678, '94.129.68.141', '2019-02-25', '2', '21:41:22', '2019-02-26 03:41:22', '2019-02-26 03:41:22'),
(679, '37.9.87.163', '2019-02-25', '3', '22:39:28', '2019-02-26 04:39:28', '2019-02-26 04:39:28'),
(680, '176.16.25.186', '2019-02-25', '2', '23:05:34', '2019-02-26 05:05:34', '2019-02-26 05:05:34'),
(681, '66.249.83.221', '2019-02-25', '2', '23:25:48', '2019-02-26 05:25:48', '2019-02-26 05:25:48'),
(682, '41.42.157.44', '2019-02-25', '2', '23:25:57', '2019-02-26 05:25:57', '2019-02-26 05:25:57'),
(683, '35.243.163.195', '2019-02-25', '2', '23:50:05', '2019-02-26 05:50:05', '2019-02-26 05:50:05'),
(684, '3.17.58.50', '2019-02-26', '4', '13:04:58', '2019-02-26 06:03:06', '2019-02-26 19:04:58'),
(685, '35.243.163.195', '2019-02-26', '2', '00:06:09', '2019-02-26 06:06:09', '2019-02-26 06:06:09'),
(686, '95.216.0.185', '2019-02-26', '2', '00:21:53', '2019-02-26 06:21:53', '2019-02-26 06:21:53'),
(687, '209.17.96.250', '2019-02-26', '2', '00:42:42', '2019-02-26 06:42:42', '2019-02-26 06:42:42'),
(688, '18.219.245.160', '2019-02-26', '2', '01:03:43', '2019-02-26 07:03:43', '2019-02-26 07:03:43'),
(689, '176.224.233.10', '2019-02-26', '2', '01:59:17', '2019-02-26 07:59:17', '2019-02-26 07:59:17'),
(690, '18.191.12.231', '2019-02-26', '2', '02:03:19', '2019-02-26 08:03:19', '2019-02-26 08:03:19'),
(691, '66.249.73.200', '2019-02-26', '3', '16:29:39', '2019-02-26 08:38:43', '2019-02-26 22:29:39'),
(692, '3.17.151.223', '2019-02-26', '2', '03:03:38', '2019-02-26 09:03:38', '2019-02-26 09:03:38'),
(693, '66.249.73.198', '2019-02-26', '2', '03:07:19', '2019-02-26 09:07:19', '2019-02-26 09:07:19'),
(694, '54.188.77.112', '2019-02-26', '2', '03:13:28', '2019-02-26 09:13:28', '2019-02-26 09:13:28'),
(695, '180.76.15.26', '2019-02-26', '2', '03:15:03', '2019-02-26 09:15:03', '2019-02-26 09:15:03'),
(696, '37.56.46.46', '2019-02-26', '2', '03:38:05', '2019-02-26 09:38:05', '2019-02-26 09:38:05'),
(697, '144.76.101.105', '2019-02-26', '2', '03:42:50', '2019-02-26 09:42:50', '2019-02-26 09:42:50'),
(698, '18.223.135.142', '2019-02-26', '2', '04:03:37', '2019-02-26 10:03:37', '2019-02-26 10:03:37'),
(699, '51.36.61.136', '2019-02-26', '2', '04:26:26', '2019-02-26 10:26:26', '2019-02-26 10:26:26'),
(700, '209.17.96.66', '2019-02-26', '2', '04:40:42', '2019-02-26 10:40:42', '2019-02-26 10:40:42'),
(701, '5.108.224.205', '2019-02-26', '2', '04:56:19', '2019-02-26 10:56:19', '2019-02-26 10:56:19'),
(702, '18.223.117.68', '2019-02-26', '3', '08:05:46', '2019-02-26 11:03:33', '2019-02-26 14:05:46'),
(703, '134.73.199.154', '2019-02-26', '2', '05:14:22', '2019-02-26 11:14:22', '2019-02-26 11:14:22'),
(704, '95.186.91.124', '2019-02-26', '3', '05:58:50', '2019-02-26 11:57:41', '2019-02-26 11:58:50'),
(705, '18.222.208.48', '2019-02-26', '2', '06:03:39', '2019-02-26 12:03:39', '2019-02-26 12:03:39'),
(706, '85.194.100.66', '2019-02-26', '4', '06:24:16', '2019-02-26 12:21:27', '2019-02-26 12:24:16'),
(707, '85.114.112.230', '2019-02-26', '4', '06:34:12', '2019-02-26 12:29:29', '2019-02-26 12:34:12'),
(708, '176.44.223.190', '2019-02-26', '2', '06:34:02', '2019-02-26 12:34:02', '2019-02-26 12:34:02'),
(709, '5.42.238.170', '2019-02-26', '2', '06:52:30', '2019-02-26 12:52:30', '2019-02-26 12:52:30'),
(710, '18.224.2.67', '2019-02-26', '3', '09:03:41', '2019-02-26 13:03:51', '2019-02-26 15:03:41'),
(711, '51.253.204.138', '2019-02-26', '3', '07:23:22', '2019-02-26 13:22:07', '2019-02-26 13:23:22'),
(712, '23.111.188.5', '2019-02-26', '12', '11:58:29', '2019-02-26 13:23:35', '2019-02-26 17:58:29'),
(713, '213.166.148.126', '2019-02-26', '7', '13:07:40', '2019-02-26 13:23:57', '2019-02-26 19:07:40'),
(714, '3.80.168.17', '2019-02-26', '2', '07:26:45', '2019-02-26 13:26:45', '2019-02-26 13:26:45'),
(715, '212.12.169.146', '2019-02-26', '2', '07:33:42', '2019-02-26 13:33:42', '2019-02-26 13:33:42'),
(716, '37.224.16.110', '2019-02-26', '3', '08:17:13', '2019-02-26 14:15:42', '2019-02-26 14:17:13'),
(717, '159.0.108.42', '2019-02-26', '2', '08:20:56', '2019-02-26 14:20:56', '2019-02-26 14:20:56'),
(718, '46.166.186.222', '2019-02-26', '2', '08:49:55', '2019-02-26 14:49:55', '2019-02-26 14:49:55'),
(719, '66.249.81.221', '2019-02-26', '2', '08:54:28', '2019-02-26 14:54:28', '2019-02-26 14:54:28'),
(720, '176.47.58.93', '2019-02-26', '2', '08:56:02', '2019-02-26 14:56:02', '2019-02-26 14:56:02'),
(721, '51.39.122.240', '2019-02-26', '3', '09:04:09', '2019-02-26 15:00:48', '2019-02-26 15:04:09'),
(722, '123.125.71.15', '2019-02-26', '2', '09:06:00', '2019-02-26 15:06:00', '2019-02-26 15:06:00'),
(723, '157.55.39.191', '2019-02-26', '2', '09:13:55', '2019-02-26 15:13:55', '2019-02-26 15:13:55'),
(724, '109.166.91.83', '2019-02-26', '2', '09:16:00', '2019-02-26 15:16:00', '2019-02-26 15:16:00'),
(725, '40.77.167.62', '2019-02-26', '2', '09:21:53', '2019-02-26 15:21:53', '2019-02-26 15:21:53'),
(726, '54.221.86.29', '2019-02-26', '2', '09:24:32', '2019-02-26 15:24:32', '2019-02-26 15:24:32'),
(727, '31.167.253.173', '2019-02-26', '2', '09:24:56', '2019-02-26 15:24:56', '2019-02-26 15:24:56'),
(728, '209.17.96.194', '2019-02-26', '2', '09:40:23', '2019-02-26 15:40:23', '2019-02-26 15:40:23'),
(729, '3.16.48.71', '2019-02-26', '3', '17:04:01', '2019-02-26 16:04:22', '2019-02-26 23:04:01'),
(730, '109.201.154.164', '2019-02-26', '2', '10:08:16', '2019-02-26 16:08:16', '2019-02-26 16:08:16'),
(731, '66.249.83.220', '2019-02-26', '2', '11:08:21', '2019-02-26 17:08:21', '2019-02-26 17:08:21'),
(732, '66.249.83.221', '2019-02-26', '2', '11:08:21', '2019-02-26 17:08:21', '2019-02-26 17:08:21'),
(733, '66.249.73.87', '2019-02-26', '2', '11:11:37', '2019-02-26 17:11:37', '2019-02-26 17:11:37'),
(734, '188.138.9.180', '2019-02-26', '5', '12:00:37', '2019-02-26 17:34:56', '2019-02-26 18:00:37'),
(735, '89.147.1.101', '2019-02-26', '2', '11:35:30', '2019-02-26 17:35:30', '2019-02-26 17:35:30'),
(736, '5.111.85.255', '2019-02-26', '2', '11:41:50', '2019-02-26 17:41:50', '2019-02-26 17:41:50'),
(737, '3.16.128.13', '2019-02-26', '4', '21:03:35', '2019-02-26 18:03:34', '2019-02-27 03:03:35'),
(738, '37.224.78.58', '2019-02-26', '2', '12:45:56', '2019-02-26 18:45:56', '2019-02-26 18:45:56'),
(739, '188.50.198.117', '2019-02-26', '2', '13:18:12', '2019-02-26 19:18:12', '2019-02-26 19:18:12'),
(740, '209.17.96.58', '2019-02-26', '2', '13:30:00', '2019-02-26 19:30:00', '2019-02-26 19:30:00'),
(741, '5.244.68.73', '2019-02-26', '2', '13:35:17', '2019-02-26 19:35:17', '2019-02-26 19:35:17'),
(742, '52.14.172.201', '2019-02-26', '2', '14:02:31', '2019-02-26 20:02:31', '2019-02-26 20:02:31'),
(743, '5.38.78.23', '2019-02-26', '3', '14:26:11', '2019-02-26 20:24:21', '2019-02-26 20:26:11'),
(744, '176.45.247.246', '2019-02-26', '2', '14:55:36', '2019-02-26 20:55:36', '2019-02-26 20:55:36'),
(745, '5.110.184.226', '2019-02-26', '2', '14:57:44', '2019-02-26 20:57:44', '2019-02-26 20:57:44'),
(746, '18.222.130.166', '2019-02-26', '2', '15:02:47', '2019-02-26 21:02:47', '2019-02-26 21:02:47'),
(747, '34.222.78.129', '2019-02-26', '3', '15:28:16', '2019-02-26 21:28:14', '2019-02-26 21:28:16'),
(748, '35.243.253.151', '2019-02-26', '3', '15:41:08', '2019-02-26 21:29:01', '2019-02-26 21:41:08'),
(749, '3.16.25.235', '2019-02-26', '3', '19:03:04', '2019-02-26 22:04:14', '2019-02-27 01:03:04'),
(750, '13.57.233.99', '2019-02-26', '2', '16:04:56', '2019-02-26 22:04:56', '2019-02-26 22:04:56'),
(751, '66.249.73.196', '2019-02-26', '2', '16:31:52', '2019-02-26 22:31:52', '2019-02-26 22:31:52'),
(752, '66.249.73.202', '2019-02-26', '2', '16:38:29', '2019-02-26 22:38:29', '2019-02-26 22:38:29'),
(753, '207.46.13.178', '2019-02-26', '2', '16:42:58', '2019-02-26 22:42:58', '2019-02-26 22:42:58'),
(754, '17.58.99.126', '2019-02-26', '2', '16:42:59', '2019-02-26 22:42:59', '2019-02-26 22:42:59'),
(755, '95.185.102.17', '2019-02-26', '3', '16:52:28', '2019-02-26 22:52:25', '2019-02-26 22:52:28'),
(756, '5.41.8.39', '2019-02-26', '2', '16:53:42', '2019-02-26 22:53:42', '2019-02-26 22:53:42'),
(757, '5.110.181.153', '2019-02-26', '4', '17:06:34', '2019-02-26 23:00:25', '2019-02-26 23:06:34'),
(758, '51.36.214.221', '2019-02-26', '2', '17:32:40', '2019-02-26 23:32:40', '2019-02-26 23:32:40'),
(759, '18.188.69.138', '2019-02-26', '3', '22:04:05', '2019-02-27 00:03:57', '2019-02-27 04:04:05'),
(760, '188.50.68.144', '2019-02-26', '2', '18:37:26', '2019-02-27 00:37:26', '2019-02-27 00:37:26'),
(761, '209.17.96.210', '2019-02-26', '2', '18:59:37', '2019-02-27 00:59:37', '2019-02-27 00:59:37'),
(762, '188.54.187.118', '2019-02-26', '2', '19:46:13', '2019-02-27 01:46:13', '2019-02-27 01:46:13'),
(763, '54.218.139.60', '2019-02-26', '2', '20:03:46', '2019-02-27 02:03:46', '2019-02-27 02:03:46'),
(764, '34.221.114.30', '2019-02-26', '3', '20:25:04', '2019-02-27 02:24:59', '2019-02-27 02:25:04'),
(765, '85.10.201.122', '2019-02-26', '2', '20:36:18', '2019-02-27 02:36:18', '2019-02-27 02:36:18'),
(766, '209.17.97.114', '2019-02-26', '2', '20:37:33', '2019-02-27 02:37:33', '2019-02-27 02:37:33'),
(767, '137.226.113.27', '2019-02-26', '2', '20:51:12', '2019-02-27 02:51:12', '2019-02-27 02:51:12'),
(768, '40.77.167.33', '2019-02-26', '2', '21:52:53', '2019-02-27 03:52:53', '2019-02-27 03:52:53'),
(769, '51.253.216.172', '2019-02-26', '2', '22:13:58', '2019-02-27 04:13:58', '2019-02-27 04:13:58'),
(770, '66.249.93.218', '2019-02-26', '2', '22:47:34', '2019-02-27 04:47:34', '2019-02-27 04:47:34'),
(771, '209.17.97.42', '2019-02-26', '2', '22:49:58', '2019-02-27 04:49:58', '2019-02-27 04:49:58'),
(772, '18.191.182.120', '2019-02-26', '2', '23:03:31', '2019-02-27 05:03:31', '2019-02-27 05:03:31'),
(773, '109.172.196.234', '2019-02-26', '2', '23:24:02', '2019-02-27 05:24:02', '2019-02-27 05:24:02'),
(774, '66.249.93.209', '2019-02-26', '2', '23:49:16', '2019-02-27 05:49:16', '2019-02-27 05:49:16'),
(775, '52.14.145.245', '2019-02-27', '2', '00:02:53', '2019-02-27 06:02:53', '2019-02-27 06:02:53'),
(776, '66.249.93.207', '2019-02-27', '5', '10:19:50', '2019-02-27 06:51:52', '2019-02-27 16:19:50'),
(777, '66.249.73.87', '2019-02-27', '2', '01:01:59', '2019-02-27 07:01:59', '2019-02-27 07:01:59'),
(778, '18.223.117.68', '2019-02-27', '2', '01:04:13', '2019-02-27 07:04:13', '2019-02-27 07:04:13'),
(779, '3.16.128.13', '2019-02-27', '2', '02:03:32', '2019-02-27 08:03:32', '2019-02-27 08:03:32'),
(780, '209.17.96.42', '2019-02-27', '2', '02:09:50', '2019-02-27 08:09:50', '2019-02-27 08:09:50'),
(781, '18.222.109.213', '2019-02-27', '2', '03:03:10', '2019-02-27 09:03:10', '2019-02-27 09:03:10'),
(782, '52.53.201.78', '2019-02-27', '2', '03:12:00', '2019-02-27 09:12:00', '2019-02-27 09:12:00'),
(783, '148.251.4.136', '2019-02-27', '2', '03:39:45', '2019-02-27 09:39:45', '2019-02-27 09:39:45'),
(784, '18.220.176.8', '2019-02-27', '2', '04:03:47', '2019-02-27 10:03:47', '2019-02-27 10:03:47'),
(785, '52.15.139.194', '2019-02-27', '2', '05:03:33', '2019-02-27 11:03:33', '2019-02-27 11:03:33'),
(786, '66.249.73.198', '2019-02-27', '2', '05:49:46', '2019-02-27 11:49:46', '2019-02-27 11:49:46'),
(787, '66.249.73.202', '2019-02-27', '2', '05:50:20', '2019-02-27 11:50:20', '2019-02-27 11:50:20'),
(788, '18.224.2.67', '2019-02-27', '2', '06:03:47', '2019-02-27 12:03:47', '2019-02-27 12:03:47'),
(789, '176.47.121.218', '2019-02-27', '2', '06:46:02', '2019-02-27 12:46:02', '2019-02-27 12:46:02'),
(790, '66.249.73.83', '2019-02-27', '2', '07:24:11', '2019-02-27 13:24:11', '2019-02-27 13:24:11'),
(791, '188.50.13.200', '2019-02-27', '2', '07:30:24', '2019-02-27 13:30:24', '2019-02-27 13:30:24'),
(792, '5.245.43.152', '2019-02-27', '2', '07:47:04', '2019-02-27 13:47:04', '2019-02-27 13:47:04'),
(793, '5.108.175.149', '2019-02-27', '2', '07:57:09', '2019-02-27 13:57:09', '2019-02-27 13:57:09'),
(794, '84.22.254.28', '2019-02-27', '2', '08:27:38', '2019-02-27 14:27:38', '2019-02-27 14:27:38'),
(795, '207.46.13.16', '2019-02-27', '2', '08:34:54', '2019-02-27 14:34:54', '2019-02-27 14:34:54'),
(796, '188.55.247.70', '2019-02-27', '2', '09:05:18', '2019-02-27 15:05:18', '2019-02-27 15:05:18'),
(797, '31.167.65.90', '2019-02-27', '4', '09:12:42', '2019-02-27 15:11:11', '2019-02-27 15:12:42'),
(798, '195.66.129.76', '2019-02-27', '5', '09:16:29', '2019-02-27 15:15:27', '2019-02-27 15:16:29'),
(799, '195.66.128.88', '2019-02-27', '2', '09:17:02', '2019-02-27 15:17:02', '2019-02-27 15:17:02'),
(800, '212.118.120.30', '2019-02-27', '2', '09:18:15', '2019-02-27 15:18:15', '2019-02-27 15:18:15'),
(801, '66.249.93.216', '2019-02-27', '2', '09:22:15', '2019-02-27 15:22:15', '2019-02-27 15:22:15'),
(802, '31.167.196.9', '2019-02-27', '2', '10:05:08', '2019-02-27 16:05:08', '2019-02-27 16:05:08'),
(803, '18.236.220.237', '2019-02-27', '2', '10:09:41', '2019-02-27 16:09:41', '2019-02-27 16:09:41'),
(804, '207.46.13.101', '2019-02-27', '2', '10:10:54', '2019-02-27 16:10:54', '2019-02-27 16:10:54'),
(805, '173.193.191.205', '2019-02-27', '2', '10:15:47', '2019-02-27 16:15:47', '2019-02-27 16:15:47'),
(806, '213.210.239.99', '2019-02-27', '2', '10:47:29', '2019-02-27 16:47:29', '2019-02-27 16:47:29'),
(807, '51.39.125.44', '2019-02-27', '2', '11:49:38', '2019-02-27 17:49:38', '2019-02-27 17:49:38'),
(808, '52.90.235.182', '2019-02-27', '2', '11:52:00', '2019-02-27 17:52:00', '2019-02-27 17:52:00'),
(809, '35.231.126.74', '2019-02-27', '3', '12:15:22', '2019-02-27 18:01:30', '2019-02-27 18:15:22'),
(810, '188.48.229.131', '2019-02-27', '2', '13:05:19', '2019-02-27 19:05:19', '2019-02-27 19:05:19'),
(811, '54.67.69.158', '2019-02-27', '2', '13:12:46', '2019-02-27 19:12:46', '2019-02-27 19:12:46'),
(812, '54.245.46.213', '2019-02-27', '2', '14:06:04', '2019-02-27 20:06:04', '2019-02-27 20:06:04'),
(813, '34.211.53.112', '2019-02-27', '3', '14:06:37', '2019-02-27 20:06:35', '2019-02-27 20:06:37'),
(814, '51.36.218.211', '2019-02-27', '2', '14:07:10', '2019-02-27 20:07:10', '2019-02-27 20:07:10'),
(815, '178.255.215.67', '2019-02-27', '2', '15:06:00', '2019-02-27 21:06:00', '2019-02-27 21:06:00'),
(816, '31.167.21.34', '2019-02-27', '3', '15:44:26', '2019-02-27 21:44:24', '2019-02-27 21:44:26'),
(817, '66.249.73.85', '2019-02-27', '2', '16:54:29', '2019-02-27 22:54:29', '2019-02-27 22:54:29'),
(818, '41.78.72.134', '2019-02-27', '2', '17:43:02', '2019-02-27 23:43:02', '2019-02-27 23:43:02'),
(819, '151.255.43.232', '2019-02-27', '2', '18:03:23', '2019-02-28 00:03:23', '2019-02-28 00:03:23'),
(820, '188.165.202.77', '2019-02-27', '2', '18:23:21', '2019-02-28 00:23:21', '2019-02-28 00:23:21'),
(821, '151.255.122.78', '2019-02-27', '2', '18:59:29', '2019-02-28 00:59:29', '2019-02-28 00:59:29'),
(822, '31.166.139.18', '2019-02-27', '2', '19:17:33', '2019-02-28 01:17:33', '2019-02-28 01:17:33'),
(823, '77.31.75.128', '2019-02-27', '4', '19:31:26', '2019-02-28 01:29:10', '2019-02-28 01:31:26'),
(824, '66.102.8.91', '2019-02-27', '2', '19:40:18', '2019-02-28 01:40:18', '2019-02-28 01:40:18'),
(825, '180.76.15.154', '2019-02-27', '2', '19:45:40', '2019-02-28 01:45:40', '2019-02-28 01:45:40'),
(826, '188.48.171.28', '2019-02-27', '2', '19:46:40', '2019-02-28 01:46:40', '2019-02-28 01:46:40'),
(827, '37.56.7.205', '2019-02-27', '2', '19:47:50', '2019-02-28 01:47:50', '2019-02-28 01:47:50'),
(828, '51.39.79.247', '2019-02-27', '2', '20:02:59', '2019-02-28 02:02:59', '2019-02-28 02:02:59'),
(829, '66.249.83.220', '2019-02-27', '2', '20:18:58', '2019-02-28 02:18:58', '2019-02-28 02:18:58'),
(830, '66.249.81.221', '2019-02-27', '2', '20:24:13', '2019-02-28 02:24:13', '2019-02-28 02:24:13'),
(831, '66.249.93.217', '2019-02-27', '2', '20:30:37', '2019-02-28 02:30:37', '2019-02-28 02:30:37'),
(832, '37.9.87.163', '2019-02-27', '3', '20:31:17', '2019-02-28 02:31:17', '2019-02-28 02:31:17'),
(833, '89.147.1.101', '2019-02-27', '4', '21:55:16', '2019-02-28 02:55:27', '2019-02-28 03:55:16'),
(834, '46.4.120.42', '2019-02-27', '2', '22:29:12', '2019-02-28 04:29:12', '2019-02-28 04:29:12'),
(835, '5.244.228.116', '2019-02-27', '2', '22:33:48', '2019-02-28 04:33:48', '2019-02-28 04:33:48'),
(836, '207.46.13.112', '2019-02-27', '2', '23:28:10', '2019-02-28 05:28:10', '2019-02-28 05:28:10'),
(837, '137.226.113.34', '2019-02-28', '2', '00:28:02', '2019-02-28 06:28:02', '2019-02-28 06:28:02'),
(838, '52.67.218.139', '2019-02-28', '2', '00:40:28', '2019-02-28 06:40:28', '2019-02-28 06:40:28'),
(839, '45.55.207.227', '2019-02-28', '4', '01:41:13', '2019-02-28 07:39:26', '2019-02-28 07:41:13'),
(840, '180.76.15.30', '2019-02-28', '2', '02:54:28', '2019-02-28 08:54:28', '2019-02-28 08:54:28'),
(841, '88.99.137.13', '2019-02-28', '2', '04:43:57', '2019-02-28 10:43:57', '2019-02-28 10:43:57'),
(842, '66.249.73.85', '2019-02-28', '3', '18:36:53', '2019-02-28 11:21:00', '2019-03-01 00:36:53'),
(843, '134.73.199.154', '2019-02-28', '2', '05:24:57', '2019-02-28 11:24:57', '2019-02-28 11:24:57'),
(844, '83.101.139.125', '2019-02-28', '2', '05:25:11', '2019-02-28 11:25:11', '2019-02-28 11:25:11'),
(845, '188.236.196.123', '2019-02-28', '4', '05:48:07', '2019-02-28 11:47:32', '2019-02-28 11:48:07'),
(846, '3.17.177.208', '2019-02-28', '6', '06:15:09', '2019-02-28 12:15:07', '2019-02-28 12:15:09'),
(847, '87.101.248.114', '2019-02-28', '5', '09:22:39', '2019-02-28 12:24:01', '2019-02-28 15:22:39'),
(848, '66.249.93.207', '2019-02-28', '4', '17:18:03', '2019-02-28 12:37:58', '2019-02-28 23:18:03'),
(849, '51.253.150.19', '2019-02-28', '2', '07:12:30', '2019-02-28 13:12:30', '2019-02-28 13:12:30'),
(850, '94.97.123.197', '2019-02-28', '2', '08:33:07', '2019-02-28 14:33:07', '2019-02-28 14:33:07'),
(851, '178.173.229.122', '2019-02-28', '2', '08:37:50', '2019-02-28 14:37:50', '2019-02-28 14:37:50'),
(852, '84.23.107.169', '2019-02-28', '3', '10:56:45', '2019-02-28 14:41:39', '2019-02-28 16:56:45'),
(853, '86.47.80.146', '2019-02-28', '2', '09:23:08', '2019-02-28 15:23:08', '2019-02-28 15:23:08'),
(854, '89.234.68.89', '2019-02-28', '2', '09:28:42', '2019-02-28 15:28:42', '2019-02-28 15:28:42'),
(855, '207.46.13.140', '2019-02-28', '2', '09:37:12', '2019-02-28 15:37:12', '2019-02-28 15:37:12'),
(856, '129.208.136.126', '2019-02-28', '2', '10:22:53', '2019-02-28 16:22:53', '2019-02-28 16:22:53'),
(857, '51.36.125.55', '2019-02-28', '2', '10:56:53', '2019-02-28 16:56:53', '2019-02-28 16:56:53'),
(858, '199.16.157.180', '2019-02-28', '2', '11:13:42', '2019-02-28 17:13:42', '2019-02-28 17:13:42'),
(859, '51.36.95.104', '2019-02-28', '2', '11:14:10', '2019-02-28 17:14:10', '2019-02-28 17:14:10'),
(860, '188.55.247.70', '2019-02-28', '2', '11:19:12', '2019-02-28 17:19:12', '2019-02-28 17:19:12'),
(861, '94.97.1.19', '2019-02-28', '2', '11:44:04', '2019-02-28 17:44:04', '2019-02-28 17:44:04'),
(862, '95.187.200.152', '2019-02-28', '2', '11:56:20', '2019-02-28 17:56:20', '2019-02-28 17:56:20'),
(863, '188.48.234.185', '2019-02-28', '4', '12:07:46', '2019-02-28 17:58:34', '2019-02-28 18:07:46'),
(864, '128.234.229.141', '2019-02-28', '2', '12:39:16', '2019-02-28 18:39:16', '2019-02-28 18:39:16'),
(865, '66.249.93.217', '2019-02-28', '2', '12:40:54', '2019-02-28 18:40:54', '2019-02-28 18:40:54'),
(866, '54.191.151.94', '2019-02-28', '2', '14:22:54', '2019-02-28 20:22:54', '2019-02-28 20:22:54'),
(867, '52.32.168.105', '2019-02-28', '3', '15:16:13', '2019-02-28 21:16:11', '2019-02-28 21:16:13'),
(868, '23.237.4.26', '2019-02-28', '2', '15:16:25', '2019-02-28 21:16:25', '2019-02-28 21:16:25'),
(869, '35.229.23.57', '2019-02-28', '3', '16:08:26', '2019-02-28 21:55:45', '2019-02-28 22:08:26'),
(870, '95.216.0.185', '2019-02-28', '3', '21:56:20', '2019-02-28 22:20:52', '2019-03-01 03:56:20'),
(871, '176.47.4.49', '2019-02-28', '2', '16:35:38', '2019-02-28 22:35:38', '2019-02-28 22:35:38'),
(872, '209.17.96.58', '2019-02-28', '2', '16:49:03', '2019-02-28 22:49:03', '2019-02-28 22:49:03'),
(873, '54.69.123.165', '2019-02-28', '2', '17:07:48', '2019-02-28 23:07:48', '2019-02-28 23:07:48'),
(874, '51.36.124.207', '2019-02-28', '2', '17:18:06', '2019-02-28 23:18:06', '2019-02-28 23:18:06'),
(875, '66.249.93.208', '2019-02-28', '3', '18:53:15', '2019-02-28 23:21:17', '2019-03-01 00:53:15'),
(876, '93.169.171.115', '2019-02-28', '2', '17:21:19', '2019-02-28 23:21:19', '2019-02-28 23:21:19'),
(877, '95.187.201.122', '2019-02-28', '2', '17:31:46', '2019-02-28 23:31:46', '2019-02-28 23:31:46'),
(878, '151.255.51.170', '2019-02-28', '3', '17:51:10', '2019-02-28 23:49:15', '2019-02-28 23:51:10'),
(879, '188.55.213.216', '2019-02-28', '5', '18:38:25', '2019-03-01 00:36:27', '2019-03-01 00:38:25'),
(880, '66.249.83.219', '2019-02-28', '2', '18:38:04', '2019-03-01 00:38:04', '2019-03-01 00:38:04'),
(881, '37.104.202.150', '2019-02-28', '2', '18:53:18', '2019-03-01 00:53:18', '2019-03-01 00:53:18'),
(882, '66.249.81.221', '2019-02-28', '2', '19:21:06', '2019-03-01 01:21:06', '2019-03-01 01:21:06'),
(883, '51.253.128.213', '2019-02-28', '2', '19:21:10', '2019-03-01 01:21:10', '2019-03-01 01:21:10'),
(884, '138.68.80.139', '2019-02-28', '2', '20:01:43', '2019-03-01 02:01:43', '2019-03-01 02:01:43'),
(885, '95.185.165.92', '2019-02-28', '2', '20:17:46', '2019-03-01 02:17:46', '2019-03-01 02:17:46'),
(886, '5.108.190.72', '2019-02-28', '2', '20:55:34', '2019-03-01 02:55:34', '2019-03-01 02:55:34'),
(887, '51.39.171.233', '2019-02-28', '2', '21:25:33', '2019-03-01 03:25:33', '2019-03-01 03:25:33'),
(888, '54.153.102.73', '2019-02-28', '2', '21:36:36', '2019-03-01 03:36:36', '2019-03-01 03:36:36'),
(889, '173.252.87.9', '2019-03-01', '2', '00:03:45', '2019-03-01 06:03:45', '2019-03-01 06:03:45'),
(890, '173.252.87.12', '2019-03-01', '2', '00:03:48', '2019-03-01 06:03:48', '2019-03-01 06:03:48'),
(891, '73.106.73.122', '2019-03-01', '2', '02:20:40', '2019-03-01 08:20:40', '2019-03-01 08:20:40'),
(892, '209.17.96.26', '2019-03-01', '3', '02:35:30', '2019-03-01 08:26:53', '2019-03-01 08:35:30'),
(893, '66.249.73.83', '2019-03-01', '2', '03:13:58', '2019-03-01 09:13:58', '2019-03-01 09:13:58'),
(894, '120.92.10.210', '2019-03-01', '2', '04:29:55', '2019-03-01 10:29:55', '2019-03-01 10:29:55'),
(895, '35.203.245.179', '2019-03-01', '2', '05:58:04', '2019-03-01 11:58:04', '2019-03-01 11:58:04'),
(896, '69.58.178.57', '2019-03-01', '2', '06:34:02', '2019-03-01 12:34:02', '2019-03-01 12:34:02'),
(897, '5.41.218.219', '2019-03-01', '2', '06:39:35', '2019-03-01 12:39:35', '2019-03-01 12:39:35'),
(898, '51.36.113.207', '2019-03-01', '3', '08:38:38', '2019-03-01 14:38:09', '2019-03-01 14:38:38'),
(899, '144.76.101.105', '2019-03-01', '2', '09:15:40', '2019-03-01 15:15:40', '2019-03-01 15:15:40'),
(900, '95.186.140.35', '2019-03-01', '3', '09:40:03', '2019-03-01 15:39:43', '2019-03-01 15:40:03'),
(901, '151.254.90.165', '2019-03-01', '3', '10:04:51', '2019-03-01 16:03:47', '2019-03-01 16:04:51'),
(902, '66.249.73.194', '2019-03-01', '2', '10:29:15', '2019-03-01 16:29:15', '2019-03-01 16:29:15'),
(903, '52.53.201.78', '2019-03-01', '2', '10:59:01', '2019-03-01 16:59:01', '2019-03-01 16:59:01'),
(904, '180.76.15.161', '2019-03-01', '2', '11:32:19', '2019-03-01 17:32:19', '2019-03-01 17:32:19'),
(905, '3.84.78.149', '2019-03-01', '2', '12:32:40', '2019-03-01 18:32:40', '2019-03-01 18:32:40'),
(906, '66.102.7.233', '2019-03-01', '2', '13:11:42', '2019-03-01 19:11:42', '2019-03-01 19:11:42'),
(907, '35.243.142.104', '2019-03-01', '3', '13:51:05', '2019-03-01 19:38:05', '2019-03-01 19:51:05'),
(908, '138.197.96.235', '2019-03-01', '2', '14:40:16', '2019-03-01 20:40:16', '2019-03-01 20:40:16'),
(909, '197.34.154.99', '2019-03-01', '2', '14:43:46', '2019-03-01 20:43:46', '2019-03-01 20:43:46'),
(910, '157.55.39.76', '2019-03-01', '2', '15:07:21', '2019-03-01 21:07:21', '2019-03-01 21:07:21'),
(911, '34.201.52.196', '2019-03-01', '2', '15:32:01', '2019-03-01 21:32:01', '2019-03-01 21:32:01'),
(912, '176.19.226.29', '2019-03-01', '2', '15:35:17', '2019-03-01 21:35:17', '2019-03-01 21:35:17'),
(913, '125.209.235.179', '2019-03-01', '2', '15:56:08', '2019-03-01 21:56:08', '2019-03-01 21:56:08'),
(914, '60.191.38.77', '2019-03-01', '2', '16:07:25', '2019-03-01 22:07:25', '2019-03-01 22:07:25'),
(915, '31.167.64.62', '2019-03-01', '4', '16:16:55', '2019-03-01 22:16:17', '2019-03-01 22:16:55'),
(916, '37.38.89.82', '2019-03-01', '2', '16:35:04', '2019-03-01 22:35:04', '2019-03-01 22:35:04'),
(917, '142.93.78.238', '2019-03-01', '15', '17:09:38', '2019-03-01 23:06:49', '2019-03-01 23:09:38'),
(918, '66.249.93.207', '2019-03-01', '3', '17:58:49', '2019-03-01 23:24:08', '2019-03-01 23:58:49'),
(919, '34.221.228.79', '2019-03-01', '3', '17:54:46', '2019-03-01 23:54:42', '2019-03-01 23:54:46'),
(920, '54.200.90.26', '2019-03-01', '2', '17:54:44', '2019-03-01 23:54:44', '2019-03-01 23:54:44'),
(921, '52.25.204.166', '2019-03-01', '2', '17:54:45', '2019-03-01 23:54:45', '2019-03-01 23:54:45'),
(922, '37.186.50.114', '2019-03-01', '2', '17:58:52', '2019-03-01 23:58:52', '2019-03-01 23:58:52'),
(923, '51.253.233.33', '2019-03-01', '2', '18:21:27', '2019-03-02 00:21:27', '2019-03-02 00:21:27'),
(924, '128.234.194.165', '2019-03-01', '6', '18:54:11', '2019-03-02 00:25:15', '2019-03-02 00:54:11'),
(925, '66.249.93.208', '2019-03-01', '2', '18:25:24', '2019-03-02 00:25:24', '2019-03-02 00:25:24'),
(926, '94.49.183.213', '2019-03-01', '2', '18:25:27', '2019-03-02 00:25:27', '2019-03-02 00:25:27'),
(927, '34.73.104.207', '2019-03-01', '2', '18:41:30', '2019-03-02 00:41:30', '2019-03-02 00:41:30'),
(928, '5.41.240.68', '2019-03-01', '2', '18:55:15', '2019-03-02 00:55:15', '2019-03-02 00:55:15'),
(929, '35.237.145.244', '2019-03-01', '3', '19:27:21', '2019-03-02 00:56:50', '2019-03-02 01:27:21'),
(930, '95.185.252.182', '2019-03-01', '3', '20:22:35', '2019-03-02 02:21:04', '2019-03-02 02:22:35'),
(931, '209.97.153.137', '2019-03-01', '3', '20:40:42', '2019-03-02 02:40:16', '2019-03-02 02:40:42'),
(932, '37.9.87.163', '2019-03-01', '3', '21:12:53', '2019-03-02 03:12:53', '2019-03-02 03:12:54'),
(933, '207.46.13.187', '2019-03-01', '2', '22:07:40', '2019-03-02 04:07:40', '2019-03-02 04:07:40'),
(934, '209.17.97.82', '2019-03-01', '2', '22:45:25', '2019-03-02 04:45:25', '2019-03-02 04:45:25'),
(935, '54.153.64.81', '2019-03-01', '2', '22:56:29', '2019-03-02 04:56:29', '2019-03-02 04:56:29'),
(936, '13.57.233.99', '2019-03-01', '2', '22:56:49', '2019-03-02 04:56:49', '2019-03-02 04:56:49'),
(937, '209.97.151.125', '2019-03-01', '9', '23:43:37', '2019-03-02 05:41:03', '2019-03-02 05:43:37'),
(938, '40.77.167.77', '2019-03-02', '2', '02:42:56', '2019-03-02 08:42:56', '2019-03-02 08:42:56'),
(939, '159.203.171.72', '2019-03-02', '3', '03:32:30', '2019-03-02 09:31:58', '2019-03-02 09:32:30'),
(940, '209.17.96.234', '2019-03-02', '2', '03:47:29', '2019-03-02 09:47:29', '2019-03-02 09:47:29'),
(941, '202.46.58.153', '2019-03-02', '2', '03:48:31', '2019-03-02 09:48:31', '2019-03-02 09:48:31'),
(942, '85.10.201.122', '2019-03-02', '2', '03:49:24', '2019-03-02 09:49:24', '2019-03-02 09:49:24'),
(943, '209.17.96.50', '2019-03-02', '3', '09:07:37', '2019-03-02 09:50:02', '2019-03-02 15:07:38'),
(944, '151.255.74.77', '2019-03-02', '2', '03:51:57', '2019-03-02 09:51:57', '2019-03-02 09:51:57'),
(945, '180.76.15.155', '2019-03-02', '2', '04:21:50', '2019-03-02 10:21:50', '2019-03-02 10:21:50'),
(946, '167.114.46.252', '2019-03-02', '3', '05:19:19', '2019-03-02 11:19:12', '2019-03-02 11:19:19'),
(947, '209.17.97.18', '2019-03-02', '2', '05:36:56', '2019-03-02 11:36:56', '2019-03-02 11:36:56'),
(948, '66.102.7.233', '2019-03-02', '2', '05:57:46', '2019-03-02 11:57:46', '2019-03-02 11:57:46'),
(949, '66.249.93.209', '2019-03-02', '2', '06:30:54', '2019-03-02 12:30:54', '2019-03-02 12:30:54'),
(950, '51.39.207.107', '2019-03-02', '3', '06:31:05', '2019-03-02 12:30:56', '2019-03-02 12:31:05'),
(951, '66.249.93.208', '2019-03-02', '3', '08:29:45', '2019-03-02 12:31:02', '2019-03-02 14:29:45'),
(952, '123.125.71.16', '2019-03-02', '2', '07:07:40', '2019-03-02 13:07:40', '2019-03-02 13:07:40'),
(953, '54.144.244.133', '2019-03-02', '2', '08:08:14', '2019-03-02 14:08:14', '2019-03-02 14:08:14'),
(954, '66.249.93.217', '2019-03-02', '4', '20:40:12', '2019-03-02 14:21:44', '2019-03-03 02:40:12'),
(955, '212.133.219.40', '2019-03-02', '13', '13:36:50', '2019-03-02 14:21:47', '2019-03-02 19:36:50'),
(956, '209.97.157.87', '2019-03-02', '13', '08:25:38', '2019-03-02 14:21:54', '2019-03-02 14:25:38'),
(957, '66.249.93.218', '2019-03-02', '3', '20:39:11', '2019-03-02 14:23:05', '2019-03-03 02:39:11'),
(958, '66.249.81.213', '2019-03-02', '3', '17:43:18', '2019-03-02 14:24:57', '2019-03-02 23:43:18'),
(959, '128.234.169.176', '2019-03-02', '4', '08:26:08', '2019-03-02 14:25:45', '2019-03-02 14:26:08'),
(960, '41.43.239.130', '2019-03-02', '7', '13:50:52', '2019-03-02 14:26:13', '2019-03-02 19:50:52'),
(961, '18.234.40.193', '2019-03-02', '2', '08:29:26', '2019-03-02 14:29:26', '2019-03-02 14:29:26'),
(962, '18.207.236.34', '2019-03-02', '2', '08:29:29', '2019-03-02 14:29:29', '2019-03-02 14:29:29'),
(963, '23.111.188.5', '2019-03-02', '5', '13:59:40', '2019-03-02 14:29:33', '2019-03-02 19:59:40'),
(964, '197.44.234.107', '2019-03-02', '11', '13:53:11', '2019-03-02 14:39:00', '2019-03-02 19:53:11'),
(965, '45.245.250.104', '2019-03-02', '2', '08:41:02', '2019-03-02 14:41:02', '2019-03-02 14:41:02'),
(966, '147.135.11.113', '2019-03-02', '32', '14:31:15', '2019-03-02 14:43:52', '2019-03-02 20:31:15'),
(967, '40.77.167.169', '2019-03-02', '2', '09:04:18', '2019-03-02 15:04:18', '2019-03-02 15:04:18'),
(968, '5.189.204.94', '2019-03-02', '2', '09:08:48', '2019-03-02 15:08:48', '2019-03-02 15:08:48'),
(969, '209.17.97.122', '2019-03-02', '2', '10:04:23', '2019-03-02 16:04:23', '2019-03-02 16:04:23'),
(970, '185.20.185.141', '2019-03-02', '2', '10:12:00', '2019-03-02 16:12:00', '2019-03-02 16:12:00'),
(971, '209.17.97.98', '2019-03-02', '2', '11:09:02', '2019-03-02 17:09:02', '2019-03-02 17:09:02'),
(972, '5.41.205.124', '2019-03-02', '5', '11:16:17', '2019-03-02 17:12:43', '2019-03-02 17:16:17'),
(973, '31.166.238.200', '2019-03-02', '7', '11:22:56', '2019-03-02 17:14:44', '2019-03-02 17:22:56'),
(974, '51.252.206.154', '2019-03-02', '2', '11:15:23', '2019-03-02 17:15:23', '2019-03-02 17:15:23'),
(975, '75.126.32.186', '2019-03-02', '2', '11:22:23', '2019-03-02 17:22:23', '2019-03-02 17:22:23'),
(976, '51.253.148.181', '2019-03-02', '5', '16:35:54', '2019-03-02 17:25:20', '2019-03-02 22:35:54'),
(977, '51.253.142.194', '2019-03-02', '2', '11:26:05', '2019-03-02 17:26:05', '2019-03-02 17:26:05'),
(978, '51.39.103.33', '2019-03-02', '3', '12:32:14', '2019-03-02 18:09:27', '2019-03-02 18:32:14'),
(979, '95.186.150.253', '2019-03-02', '2', '12:11:58', '2019-03-02 18:11:58', '2019-03-02 18:11:58'),
(980, '5.108.42.169', '2019-03-02', '3', '12:18:54', '2019-03-02 18:17:41', '2019-03-02 18:18:54'),
(981, '151.255.39.192', '2019-03-02', '2', '13:21:18', '2019-03-02 19:21:18', '2019-03-02 19:21:18'),
(982, '51.39.146.170', '2019-03-02', '2', '13:43:53', '2019-03-02 19:43:53', '2019-03-02 19:43:53'),
(983, '51.39.170.121', '2019-03-02', '3', '14:11:12', '2019-03-02 20:10:38', '2019-03-02 20:11:12'),
(984, '35.227.49.189', '2019-03-02', '3', '14:41:23', '2019-03-02 20:23:36', '2019-03-02 20:41:23'),
(985, '54.212.189.151', '2019-03-02', '2', '14:28:29', '2019-03-02 20:28:29', '2019-03-02 20:28:29'),
(986, '37.42.1.206', '2019-03-02', '2', '14:29:39', '2019-03-02 20:29:39', '2019-03-02 20:29:39'),
(987, '207.148.87.91', '2019-03-02', '2', '14:37:51', '2019-03-02 20:37:51', '2019-03-02 20:37:51'),
(988, '104.248.7.232', '2019-03-02', '5', '14:57:53', '2019-03-02 20:57:45', '2019-03-02 20:57:53'),
(989, '142.93.177.155', '2019-03-02', '3', '15:01:35', '2019-03-02 21:00:28', '2019-03-02 21:01:35'),
(990, '34.209.217.188', '2019-03-02', '3', '15:27:54', '2019-03-02 21:27:52', '2019-03-02 21:27:54'),
(991, '151.255.40.87', '2019-03-02', '2', '15:42:56', '2019-03-02 21:42:56', '2019-03-02 21:42:56'),
(992, '5.111.91.192', '2019-03-02', '2', '15:56:25', '2019-03-02 21:56:25', '2019-03-02 21:56:25'),
(993, '51.39.95.235', '2019-03-02', '9', '17:15:25', '2019-03-02 22:06:55', '2019-03-02 23:15:25'),
(994, '5.108.116.254', '2019-03-02', '5', '16:23:01', '2019-03-02 22:22:03', '2019-03-02 22:23:01'),
(995, '51.252.151.196', '2019-03-02', '2', '16:23:54', '2019-03-02 22:23:54', '2019-03-02 22:23:54'),
(996, '66.249.73.198', '2019-03-02', '2', '16:26:43', '2019-03-02 22:26:43', '2019-03-02 22:26:43'),
(997, '209.17.96.26', '2019-03-02', '3', '19:15:57', '2019-03-02 22:44:48', '2019-03-03 01:15:57'),
(998, '66.249.73.85', '2019-03-02', '2', '16:56:43', '2019-03-02 22:56:43', '2019-03-02 22:56:43'),
(999, '95.185.255.10', '2019-03-02', '2', '17:09:17', '2019-03-02 23:09:17', '2019-03-02 23:09:17'),
(1000, '188.52.96.198', '2019-03-02', '2', '17:09:33', '2019-03-02 23:09:33', '2019-03-02 23:09:33'),
(1001, '66.249.93.216', '2019-03-02', '2', '17:18:19', '2019-03-02 23:18:19', '2019-03-02 23:18:19'),
(1002, '66.249.81.221', '2019-03-02', '2', '17:33:43', '2019-03-02 23:33:43', '2019-03-02 23:33:43'),
(1003, '209.17.96.210', '2019-03-02', '2', '19:05:50', '2019-03-03 01:05:50', '2019-03-03 01:05:50'),
(1004, '31.167.212.149', '2019-03-02', '2', '19:09:40', '2019-03-03 01:09:40', '2019-03-03 01:09:40'),
(1005, '180.76.15.8', '2019-03-02', '2', '20:06:56', '2019-03-03 02:06:56', '2019-03-03 02:06:56'),
(1006, '209.17.97.106', '2019-03-02', '2', '20:26:49', '2019-03-03 02:26:49', '2019-03-03 02:26:49'),
(1007, '5.111.16.66', '2019-03-02', '2', '20:29:22', '2019-03-03 02:29:22', '2019-03-03 02:29:22'),
(1008, '107.21.1.8', '2019-03-02', '2', '21:47:38', '2019-03-03 03:47:38', '2019-03-03 03:47:38'),
(1009, '207.46.13.183', '2019-03-02', '2', '22:23:12', '2019-03-03 04:23:12', '2019-03-03 04:23:12');
INSERT INTO `visitors` (`id`, `ip`, `date`, `hits`, `visit_time`, `created_at`, `updated_at`) VALUES
(1010, '51.39.93.96', '2019-03-02', '2', '22:31:18', '2019-03-03 04:31:18', '2019-03-03 04:31:18'),
(1011, '51.36.126.209', '2019-03-02', '3', '22:39:21', '2019-03-03 04:34:46', '2019-03-03 04:39:21'),
(1012, '41.43.2.167', '2019-03-02', '2', '23:01:06', '2019-03-03 05:01:06', '2019-03-03 05:01:06'),
(1013, '41.238.12.218', '2019-03-02', '19', '23:57:34', '2019-03-03 05:35:15', '2019-03-03 05:57:34'),
(1014, '148.251.9.48', '2019-03-02', '2', '23:48:11', '2019-03-03 05:48:11', '2019-03-03 05:48:11'),
(1015, '41.238.12.218', '2019-03-03', '27', '00:54:17', '2019-03-03 06:05:49', '2019-03-03 06:54:17'),
(1016, '100.35.75.170', '2019-03-03', '5', '01:21:26', '2019-03-03 07:17:03', '2019-03-03 07:21:26'),
(1017, '5.244.150.204', '2019-03-03', '3', '01:43:19', '2019-03-03 07:42:29', '2019-03-03 07:43:19'),
(1018, '138.197.13.94', '2019-03-03', '4', '01:56:36', '2019-03-03 07:55:54', '2019-03-03 07:56:36'),
(1019, '66.249.73.200', '2019-03-03', '3', '05:12:31', '2019-03-03 09:14:56', '2019-03-03 11:12:31'),
(1020, '188.48.217.72', '2019-03-03', '2', '03:59:38', '2019-03-03 09:59:38', '2019-03-03 09:59:38'),
(1021, '95.185.187.176', '2019-03-03', '5', '05:06:27', '2019-03-03 11:05:11', '2019-03-03 11:06:27'),
(1022, '66.249.73.85', '2019-03-03', '2', '05:15:32', '2019-03-03 11:15:32', '2019-03-03 11:15:32'),
(1023, '45.245.250.104', '2019-03-03', '3', '07:22:40', '2019-03-03 13:19:06', '2019-03-03 13:22:40'),
(1024, '23.111.188.5', '2019-03-03', '2', '07:24:51', '2019-03-03 13:24:51', '2019-03-03 13:24:51'),
(1025, '31.167.250.3', '2019-03-03', '2', '07:26:10', '2019-03-03 13:26:10', '2019-03-03 13:26:10'),
(1026, '151.255.42.32', '2019-03-03', '2', '07:34:06', '2019-03-03 13:34:06', '2019-03-03 13:34:06'),
(1027, '54.183.120.120', '2019-03-03', '2', '07:34:59', '2019-03-03 13:34:59', '2019-03-03 13:34:59'),
(1028, '5.108.89.156', '2019-03-03', '4', '07:55:32', '2019-03-03 13:46:26', '2019-03-03 13:55:32'),
(1029, '85.194.70.198', '2019-03-03', '2', '07:58:37', '2019-03-03 13:58:37', '2019-03-03 13:58:37'),
(1030, '66.249.93.209', '2019-03-03', '2', '08:08:58', '2019-03-03 14:08:58', '2019-03-03 14:08:58'),
(1031, '78.110.10.244', '2019-03-03', '2', '08:16:52', '2019-03-03 14:16:52', '2019-03-03 14:16:52'),
(1032, '90.148.42.216', '2019-03-03', '3', '08:37:06', '2019-03-03 14:36:31', '2019-03-03 14:37:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_position_id_foreign` (`position_id`);

--
-- Indexes for table `ads_positions`
--
ALTER TABLE `ads_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `blogs_translation`
--
ALTER TABLE `blogs_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `championships`
--
ALTER TABLE `championships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `facebook`
--
ALTER TABLE `facebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instagram_accesstoken`
--
ALTER TABLE `instagram_accesstoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinus`
--
ALTER TABLE `joinus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinus_translation`
--
ALTER TABLE `joinus_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `joinus_translation_joinus_id_locale_unique` (`joinus_id`,`locale`) USING BTREE,
  ADD KEY `joinus_translation_locale_index` (`locale`) USING BTREE;

--
-- Indexes for table `landing`
--
ALTER TABLE `landing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_translation`
--
ALTER TABLE `landing_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `links_link_section_id_foreign` (`link_section_id`);

--
-- Indexes for table `links_translation`
--
ALTER TABLE `links_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_sections`
--
ALTER TABLE `link_sections`
  ADD PRIMARY KEY (`link_section_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_translation`
--
ALTER TABLE `pages_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persons_translation`
--
ALTER TABLE `persons_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_type`
--
ALTER TABLE `person_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_type_translation`
--
ALTER TABLE `person_type_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `person_type_translation_person_type_id_locale_unique` (`person_type_id`,`locale`) USING BTREE;

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `services_service_section_id_foreign` (`service_section_id`);

--
-- Indexes for table `services_translation`
--
ALTER TABLE `services_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_sections`
--
ALTER TABLE `service_sections`
  ADD PRIMARY KEY (`service_section_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_type_translation`
--
ALTER TABLE `service_type_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_type_translation_service_type_id_locale_unique` (`service_type_id`,`locale`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sidebar_items`
--
ALTER TABLE `sidebar_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `sidebar_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `sliders_translation`
--
ALTER TABLE `sliders_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_email_unique` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_post`
--
ALTER TABLE `tag_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_post_post_id_foreign` (`post_id`),
  ADD KEY `tag_post_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_email_unique` (`email`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads_positions`
--
ALTER TABLE `ads_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `blogs_translation`
--
ALTER TABLE `blogs_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `championships`
--
ALTER TABLE `championships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `facebook`
--
ALTER TABLE `facebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `instagram_accesstoken`
--
ALTER TABLE `instagram_accesstoken`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `joinus`
--
ALTER TABLE `joinus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `joinus_translation`
--
ALTER TABLE `joinus_translation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `landing`
--
ALTER TABLE `landing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `landing_translation`
--
ALTER TABLE `landing_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `links_translation`
--
ALTER TABLE `links_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `link_sections`
--
ALTER TABLE `link_sections`
  MODIFY `link_section_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages_translation`
--
ALTER TABLE `pages_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `persons_translation`
--
ALTER TABLE `persons_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `person_type`
--
ALTER TABLE `person_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `person_type_translation`
--
ALTER TABLE `person_type_translation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services_translation`
--
ALTER TABLE `services_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `service_sections`
--
ALTER TABLE `service_sections`
  MODIFY `service_section_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `service_type_translation`
--
ALTER TABLE `service_type_translation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sidebar_items`
--
ALTER TABLE `sidebar_items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  MODIFY `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sliders_translation`
--
ALTER TABLE `sliders_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tag_post`
--
ALTER TABLE `tag_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1033;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `joinus_translation`
--
ALTER TABLE `joinus_translation`
  ADD CONSTRAINT `news_translation_news_id_foreign` FOREIGN KEY (`joinus_id`) REFERENCES `joinus` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
