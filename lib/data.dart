import 'dart:math';

List<Hadeeth> hadeeth = [
  Hadeeth(
      "عَنْ أَمِيرِ المُؤمِنينَ أَبي حَفْصٍ عُمَرَ بْنِ الخَطَّابِ قَالَ : سَمِعْتُ رَسُولَ اللهِ ﷺ يَقُولُ :",
      " إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ ، وَإنَّمَا لِكُلِّ امْرِىءٍ مَا نَوَى ، فَمَنْ كَانَتْ هِجْرَتُهُ إِلى اللهِ وَرَسُوله فَهِجْرتُهُ إلى اللهِ وَرَسُوُله ، وَمَنْ كَانَتْ هِجْرَتُهُ لِدُنْيَا يُصِيْبُهَا ، أَو امْرأَةٍ يَنْكِحُهَا ، فَهِجْرَتُهُ إِلى مَا هَاجَرَ إلَيْهِ "),
  Hadeeth(
      "عَنْ أَبِيْ عَبْدِ الرَّحْمَنِ عَبْدِ اللهِ بْنِ عُمَرَ بْن الخَطَّابِ رَضِيَ اللهُ عَنْهُمَا قَالَ: سَمِعْتُ النبي ﷺ يَقُوْلُ: ",
      " بُنِيَ الإِسْلامُ عَلَى خَمْسٍ: شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ الله وَأَنَّ مُحَمَّدَاً رَسُوْلُ اللهِ، وَإِقَامِ الصَّلاةِ، وَإِيْتَاءِ الزَّكَاةِ، وَحَجِّ البِيْتِ، وَصَوْمِ رَمَضَانَ "),
  Hadeeth(
      "عَنْ عَبْدِ اللهِ بنِ مَسْعُوْدْ رَضِيَ اللهُ عَنْهُ قَالَ: حَدَّثَنَا رَسُوْلُ اللهِ ﷺ وَهُوَ الصَّادِقُ المَصْدُوْقُ : ",
      " إِنَّ أَحَدَكُمْ يُجْمَعُ خَلْقُهُ فِيْ بَطْنِ أُمِّهِ أَرْبَعِيْنَ يَوْمَاً نُطْفَةً، ثُمَّ يَكُوْنُ عَلَقَةً مِثْلَ ذَلِكَ،ثُمَّ يَكُوْنُ مُضْغَةً مِثْلَ ذَلِكَ،ثُمَّ يُرْسَلُ إِلَيْهِ المَلَكُ فَيَنفُخُ فِيْهِ الرٌّوْحَ،وَيَؤْمَرُ بِأَرْبَعِ كَلِمَاتٍ: بِكَتْبِ رِزْقِهِ وَأَجَلِهِ وَعَمَلِهِ وَشَقِيٌّ أَوْ سَعِيْدٌ. فَوَالله الَّذِي لاَ إِلَهَ غَيْرُهُ إِنََّ أَحَدَكُمْ لَيَعْمَلُ بِعَمَلِ أَهْلِ الجَنَّةِ حَتَّى مَا يَكُوْنُ بَيْنَهُ وَبَيْنَهَا إلاذِرَاعٌ فَيَسْبِقُ عَلَيْهِ الكِتَابُ فَيَعْمَلُ بِعَمَلِ أَهْلِ النَّارِ فَيَدْخُلُهَا، وَإِنَّ أَحَدَكُمْ لَيَعْمَلُ بِعَمَلِ أَهْلِ النَّارِ حَتَّى مَايَكُونُ بَيْنَهُ وَبَيْنَهَا إلا ذِرَاعٌ فَيَسْبِقُ عَلَيْهِ الكِتَابُ فَيَعْمَلُ بِعَمَلِ أَهْلِ الجَنَّةِ فَيَدْخُلُهَا "),
  Hadeeth(
      "عَنْ أَبِيْ عَبْدِ اللهِ النُّعْمَانِ بْنِ بِشِيْر رضي الله عنهما قَالَ: سَمِعْتُ رَسُوْلَ اللهِ ﷺ يَقُوْلُ:",
      "نَّ الحَلالَ بَيِّنٌ وَإِنَّ الحَرَامَ بَيِّنٌ وَبَيْنَهُمَا أُمُوْرٌ مُشْتَبِهَات لاَ يَعْلَمُهُنَّ كَثِيْرٌ مِنَ النَّاس،ِ فَمَنِ اتَّقَى الشُّبُهَاتِ فَقَدِ اسْتَبْرأَ لِدِيْنِهِ وعِرْضِه، وَمَنْ وَقَعَ فِي الشُّبُهَاتِ وَقَعَ فِي الحَرَامِ كَالرَّاعِي يَرْعَى حَوْلَ الحِمَى يُوشِكُ أَنْ يَقَعَ فِيْهِ. أَلا وَإِنَّ لِكُلِّ مَلِكٍ حِمَىً . أَلا وَإِنَّ حِمَى اللهِ مَحَارِمُهُ، أَلا وإِنَّ فِي الجَسَدِ مُضْغَةً إِذَا صَلَحَتْ صَلَحَ الجَسَدُ كُلُّهُ وإذَا فَسَدَت فَسَدَ الجَسَدُ كُلُّهُ أَلا وَهيَ القَلْبُ"),
  Hadeeth("عَنْ أَبِيْ رُقَيَّةَ تَمِيْم بْنِ أَوْسٍ الدَّارِيِّ رضي الله عنه أَنَّ النبي ﷺ قَالَ:",
      "الدِّيْنُ النَّصِيْحَةُ قُلْنَا: لِمَنْ يَا رَسُولَ اللهِ ؟ قَالَ: للهِ، ولكتابه، ولِرَسُوْلِهِ، وَلأَئِمَّةِ المُسْلِمِيْنَ، وَعَامَّتِهِمْ"),
  Hadeeth("عَنِ ابْنِ عُمَرَ رَضِيَ اللهُ عَنْهُمَا أَنَّ رَسُوْلَ اللهِ قَالَ:",
      "(أُمِرْتُ أَنْ أُقَاتِلَ النَّاسَ حَتَّى يَشْهَدُوا أَنْ لاَ إِلَهَ إِلاَّ اللهُ وَأَنَّ مُحَمَّدَاً رَسُوْلُ اللهِ وَيُقِيْمُوْا الصَّلاةَ وَيُؤْتُوا الزَّكَاةَ فَإِذَا فَعَلُوا ذَلِكَ عَصَمُوا مِنِّي دِمَاءهَمْ وَأَمْوَالَهُمْ إِلاَّ بِحَقِّ الإِسْلامِ وَحِسَابُهُمْ عَلَى اللهِ تَعَالَى)"),
  Hadeeth(
      "عَنْ أَبِي هُرَيْرَةَ عَبْدِ الرَّحْمَنِ بْنِ صَخْرٍ رَضِيَ الله تَعَالَى عَنْهُ قَالَ: سَمِعْتُ رَسُوْلَ اللهِ ﷺ يَقُوْلُ:",
      "(مَا نَهَيْتُكُمْ عَنْهُ فَاجْتَنِبُوهُ وَمَا أَمَرْتُكُمْ بِهِ فأْتُوا مِنْهُ مَا اسْتَطَعْتُمْ؛ فَإِنَّمَا أَهْلَكَ الَّذِيْنَ مِنْ قَبْلِكُمْ كَثْرَةُ مَسَائِلِهِمْ وَاخْتِلافُهُمْ عَلَى أَنْبِيَائِهِمْ)"),
  Hadeeth(
      "عَنْ أَبِي مُحَمَّدٍ الحَسَنِ بنِ عَلِيّ بنِ أبِي طالبٍ سِبْطِ رَسُولِ اللهِ ﷺ وَرَيْحَانَتِهِ رَضِيَ اللهُ عَنْهُمَا قَالَ: ",
      " حَفِظْتَ مِنْ رَسُوْلِ اللهِ ﷺ : (دَعْ مَا يَرِيْبُكَ إِلَى مَا لاَ يَرِيْبُكَ) رواه الترمذي والنسائي وقال الترمذي: حديث حسن صحيح."),
  Hadeeth("عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ قَالَ: قَالَ رَسُوْلُ اللهِ ﷺ :",
      "(مِنْ حُسْنِ إِسْلامِ المَرْءِ تَرْكُهُ مَا لاَ يَعْنِيْهِ) حديثٌ حسنٌ، رواه الترمذي وغيره هكذا."),
  Hadeeth(
      "عنْ أَبِيْ حَمْزَة أَنَسِ بنِ مَالِكٍ رَضِيَ اللهُ تَعَالَى عَنْهُ خَادِمِ رَسُوْلِ اللهِ ﷺ عَن النبي ﷺ قَالَ:",
      "(لاَ يُؤمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لأَخِيْهِ مَا يُحِبُّ لِنَفْسِهِ)"),
  Hadeeth("عنِ ابْنِ مَسْعُودٍ رضي الله عنه قَالَ: قَالَ رَسُولُ اللهِ :",
      "(لا يَحِلُّ دَمُ امْرِئٍ مُسْلِمٍ إِلاَّ بإِحْدَى ثَلاثٍ: الثَّيِّبُ الزَّانِيْ، وَالنَّفْسُ بِالنَّفْسِ، وَالتَّاركُ لِدِيْنِهِ المُفَارِقُ للجمَاعَةِ)"),
  Hadeeth("عَن أَبِي هُرَيْرَةَ رضي الله عنه أَنَّ رَسُولَ اللهِ ﷺ قَالَ:",
      "(مَنْ كَانَ يُؤمِنُ بِاللهِ وَاليَوْمِ الآخِرِ فَلْيَقُلْ خَيْرَاً أَو لِيَصْمُتْ، وَمَنْ كَانَ يُؤمِنُ بِاللهِ وَاليَومِ الآخِرِ فَلْيُكْرِمْ جَارَهُ، ومَنْ كَانَ يُؤمِنُ بِاللهِ واليَومِ الآخِرِ فَلْيُكْرِمْ ضَيْفَهُ)"),
  Hadeeth('عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ أَنَّ رَجُلاً قَالَ لِلنَّبيِّ ﷺ : أَوصِنِيْ، قَال :',
      '(لاَ تَغْضَبْ) '),
  Hadeeth('عَنْ أَبِي يَعْلَى شَدَّادِ بنِ أَوْسٍ رَضِيَ اللهُ تَعَالَى عَنْهُ عَنْ رَسُولِ اللهِ ﷺ قَالَ:',
      '(إِنَّ اللهَ كَتَبَ الإِحْسَانَ عَلَى كُلِّ شَيءٍ. فَإِذَا قَتَلْتُمْ فَأَحْسِنُوا القِتْلَةَ، وَإِذَا ذَبَحْتُمْ فَأَحْسِنُوا الذِّبْحَةَ، وَلْيُحِدَّ أَحَدُكُمْ شَفْرَتَهُ، وَلْيُرِحْ ذَبِيْحَتَهُ)'),
  Hadeeth(
      'عَنْ أَبِيْ ذَرٍّ جُنْدُبِ بنِ جُنَادَةَ وَأَبِي عَبْدِ الرَّحْمَنِ مُعَاذِ بِنِ جَبَلٍ رَضِيَ اللهُ عَنْهُمَا عَنْ رَسُولِ اللهِ ﷺ قَالَ:',
      '(اتَّقِ اللهَ حَيْثُمَا كُنْتَ، وَأَتْبِعِ السَّيِّئَةَ الحَسَنَةَ تَمْحُهَا، وَخَالِقِ النَّاسَ بِخُلُقٍ حَسَنٍ )'),
  Hadeeth(
      'عَنْ أَبيْ مَسْعُوْدٍ عُقبَة بنِ عَمْرٍو الأَنْصَارِيِّ البَدْرِيِّ رضي الله عنه قَالَ: قَالَ رَسُوْلُ اللهِ ﷺ',
      '(إِنَّ مِمَّا أَدرَكَ النَاسُ مِن كَلاَمِ النُّبُوَّةِ الأُولَى إِذا لَم تَستَحْيِ فاصْنَعْ مَا شِئتَ)'),
  Hadeeth('عَنِ أَبيْ عَمْرٍو، وَقِيْلَ،أَبيْ عمْرَةَ سُفْيَانَ بنِ عَبْدِ اللهِ رضي الله عنه قَالَ: ',
      'قُلْتُ يَا رَسُوْلَ اللهِ قُلْ لِيْ فِي الإِسْلامِ قَوْلاً لاَ أَسْأَلُ عَنْهُ أَحَدَاً غَيْرَكَ؟ قَالَ: (قُلْ آمَنْتُ باللهِ ثُمَّ استَقِمْ)'),
  Hadeeth(
      'عَنْ أَبيْ عَبْدِ اللهِ جَابِرِ بنِ عَبْدِ اللهِ الأَنْصَارِيِّ رضي الله عنه أَنَّ رَجُلاً سَأَلَ النبي ﷺ فَقَالَ:',
      ' (أَرَأَيتَ إِذا صَلَّيْتُ المَكْتُوبَاتِ، وَصُمْتُ رَمَضانَ، وَأَحلَلتُ الحَلاَلَ، وَحَرَّمْتُ الحَرَامَ، وَلَمْ أَزِدْ عَلى ذَلِكَ شَيئاً أَدخُلالجَنَّة ؟ قَالَ: نَعَمْ)'),
  Hadeeth('عَنْ أَبِي هُرَيْرَةَ رضي الله عنه قَالَ: قَالَ رَسُولُ اللهِ ﷺ :',
      ' (كُلُّ سُلامَى مِنَ النَّاسِ عَلَيْهِ صَدَقَةٌ كُلُّ يَومٍ تَطْلُعُ فِيْهِ الشَّمْسُ: تَعْدِلُ بَيْنَ اثْنَيْنِ صَدَقَةٌ، وَتُعِيْنُ الرَّجُلَ في دَابَّتِهِ فَتَحْمِلُ لَهُ عَلَيْهَا أَو تَرْفَعُ لَهُ عَلَيْهَا مَتَاعَهُ صَدَقَةٌ، وَالكَلِمَةُ الطَّيِّبَةُ صَدَقَةٌ، وَبِكُلِّ خُطْوَةٍ تَمْشِيْهَا إِلَى الصَّلاةِ صَدَقَةٌ، وَتُمِيْطُ الأَذى عَنِ الطَّرِيْقِ صَدَقَةٌ)'),
  Hadeeth('عَنْ أَبِيْ ثَعْلَبَةَ الخُشَنِيِّ جُرثُومِ بنِ نَاشِرٍ رضي الله عنه عَن رَسُولِ اللهِ ﷺ قَالَ: ',
      '(إِنَّ اللهَ فَرَضَ فَرَائِضَ فَلا تُضَيِّعُوهَا، وَحَدَّ حُدُودَاً فَلا تَعْتَدُوهَا وَحَرَّمَ أَشْيَاءَ فَلا تَنْتَهِكُوهَا، وَسَكَتَ عَنْ أَشْيَاءَ رَحْمَةً لَكُمْ غَيْرَ نِسْيَانٍ فَلا تَبْحَثُوا عَنْهَا)'),
  Hadeeth(
      'عن أبي سعيد سعد بن مالك بن سنان الخدري رضي الله عنه أن رسول الله ( ﷺ ) قال: ', '(لا ضرر ولا ضرار)'),
  Hadeeth('عنِ ابْنِ عَبَّاسٍ رَضِيَ اللهُ عَنْهُمَا أَنَّ رَسُولَ اللهِ ﷺ قَالَ: ',
      'لَوْ يُعْطَى النَّاسُ بِدعوَاهُمْ لادَّعَى رِجَالٌ أَمْوَال قَومٍ وَدِمَاءهُمْ، وَلَكِنِ البَينَةُ عَلَى المُدَّعِي، وَاليَمينُ عَلَى مَن أَنكَر'),
  Hadeeth('عَنْ أَبي سَعيدٍ الخُدريِّ رضي الله عنه قَالَ: سَمِعتُ رِسُولَ اللهِ ﷺ يَقولُ: ',
      '(مَن رَأى مِنكُم مُنكَرَاً فَليُغَيِّرْهُ بِيَدِهِ، فَإِنْ لَمْ يَستَطعْ فَبِلِسَانِهِ، فَإِنْ لَمْ يَستَطعْ فَبِقَلبِه وَذَلِكَ أَضْعَفُ الإيمَانِ)َ'),
  Hadeeth('عَنِ ابْنِ عَبَّاسٍ رَضِيَ اللهُ عَنْهُمَا أَنَّ رَسُولَ اللهِ ﷺ قَال:',
      '(إِنَّ اللهَ تَجَاوَزَ لِي عَنْ أُمَّتِي الخَطَأَ وَالنِّسْيَانَ وَمَا اسْتُكْرِهُوا عَلَيْهِ)َ'),
  Hadeeth(
      'عَنْ أَبِيْ مُحَمَّدٍ عَبْدِ اللهِ بِنِ عمْرِو بْنِ العَاصِ رَضِيَ اللهُ عَنْهُمَا قَالَ: قَالَ رَسُولُ اللهِ صلى الله عليه وسلم: ',
      '(لاَيُؤْمِنُ أَحَدُكُمْ حَتَّى يَكُونَ هَواهُ تَبَعَاً لِمَا جِئْتُ بِهِ) حَدِيْثٌ حَسَنٌ صَحِيْحٌ .'),
  Hadeeth(
      'عَنْ أَنَسِ بْنِ مَالِكٍ رضي الله عنه قَالَ: سَمِعْتُ رَسُولَ اللهِ يَقُولُ: قَالَ اللهُ تَعَالَى: ',
      '(يَا ابْنَ آَدَمَ إِنَّكَ مَا دَعَوتَنِيْ وَرَجَوتَنِيْ غَفَرْتُ لَكَ عَلَى مَا كَانَ مِنْكَ وَلا أُبَالِيْ، يَا ابْنَ آَدَمَ لَو بَلَغَتْ ذُنُوبُكَ عَنَانَ السَّمَاءِ ثُمَّ استَغْفَرْتَنِيْ غَفَرْتُ لَكَ، يَا ابْنَ آَدَمَ إِنَّكَ لَو أَتَيْتَنِيْ بِقِرَابِ الأَرْضِ خَطَايَا ثُمَّ لقِيْتَنِيْ لاَ تُشْرِك بِيْ شَيْئَاً لأَتَيْتُكَ بِقِرَابِهَا مَغفِرَةً)'),
];

class Hadeeth {
  Hadeeth(this.title, this.body);

  String title;
  String body;
}

Hadeeth getNewHead() {
  var index = Random().nextInt(hadeeth.length - 1);
  return hadeeth[index];
}
