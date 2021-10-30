import 'package:big/src/big.dart';
import 'package:test/test.dart';

void main() {
  test('toExponential', () {
    t(expected, value, [int? decimalPlaces]) {
      expect(
        Big(value).toExponential(dp: decimalPlaces),
        expected.toString(),
      );
    }

    Big.dp = 20;
    Big.rm = 1;

    t('0e+0', 0);
    t('0e+0', Big.zero(isNegative: true));
    t('0.0e+0', 0, 1);
    t('0.0e+0', Big.zero(isNegative: true), 1);
    t('0.00e+0', 0, 2);
    t('0.00e+0', Big.zero(isNegative: true), 2);

    t('1e+0', 1);
    t('1.1e+1', 11);
    t('1.12e+2', 112);

    t('1e+0', 1, 0);
    t('1e+1', 11, 0);
    t('1e+2', 112, 0);
    t('1.0e+0', 1, 1);
    t('1.1e+1', 11, 1);
    t('1.1e+2', 112, 1);
    t('1.00e+0', 1, 2);
    t('1.10e+1', 11, 2);
    t('1.12e+2', 112, 2);
    t('1.000e+0', 1, 3);
    t('1.100e+1', 11, 3);
    t('1.120e+2', 112, 3);
    t(
      '1e-1',
      0.1,
    );
    t(
      '1.1e-1',
      0.11,
    );
    t(
      '1.12e-1',
      0.112,
    );
    t('1e-1', 0.1, 0);
    t('1e-1', 0.11, 0);
    t('1e-1', 0.112, 0);
    t('1.0e-1', 0.1, 1);
    t('1.1e-1', 0.11, 1);
    t('1.1e-1', 0.112, 1);
    t('1.00e-1', 0.1, 2);
    t('1.10e-1', 0.11, 2);
    t('1.12e-1', 0.112, 2);
    t('1.000e-1', 0.1, 3);
    t('1.100e-1', 0.11, 3);
    t('1.120e-1', 0.112, 3);

    t(
      '-1e+0',
      -1,
    );
    t(
      '-1.1e+1',
      -11,
    );
    t(
      '-1.12e+2',
      -112,
    );
    t('-1e+0', -1, 0);
    t('-1e+1', -11, 0);
    t('-1e+2', -112, 0);
    t('-1.0e+0', -1, 1);
    t('-1.1e+1', -11, 1);
    t('-1.1e+2', -112, 1);
    t('-1.00e+0', -1, 2);
    t('-1.10e+1', -11, 2);
    t('-1.12e+2', -112, 2);
    t('-1.000e+0', -1, 3);
    t('-1.100e+1', -11, 3);
    t('-1.120e+2', -112, 3);
    t(
      '-1e-1',
      -0.1,
    );
    t(
      '-1.1e-1',
      -0.11,
    );
    t(
      '-1.12e-1',
      -0.112,
    );
    t('-1e-1', -0.1, 0);
    t('-1e-1', -0.11, 0);
    t('-1e-1', -0.112, 0);
    t('-1.0e-1', -0.1, 1);
    t('-1.1e-1', -0.11, 1);
    t('-1.1e-1', -0.112, 1);
    t('-1.00e-1', -0.1, 2);
    t('-1.10e-1', -0.11, 2);
    t('-1.12e-1', -0.112, 2);
    t('-1.000e-1', -0.1, 3);
    t('-1.100e-1', -0.11, 3);
    t('-1.120e-1', -0.112, 3);

    t(
      '0e+0',
      0,
    );
    t(
      '0e+0',
      Big.zero(isNegative: true),
    );
    t('-5.0e-1', -0.5, 1);
    t('0.00e+0', 0, 2);
    t('1e+1', 11.2356, 0);
    t('1.1236e+1', 11.2356, 4);
    t('1.1236e-4', 0.000112356, 4);
    t('-1.1236e-4', -0.000112356, 4);
    t(
      '1.12356e-4',
      0.000112356,
    );
    t(
      '-1.12356e-4',
      -0.000112356,
    );

    t('1.00e+0', 0.99976, 2);
    t('1.00e+2', 99.9979, 2);
    t('1.00e+5', '99991.27839', 2);
    t('1.000e+2', '99.999', 3);
    t('1.000e+7', '9999512.8', 3);
    t('1.00e+9', '999702726', 2);
    t('1.000e+3', '999.964717', 3);

    Big.rm = 0;

    t(
      '0e+0',
      '-0.0E-0',
    );
    t(
        '-2.856376815219143184897347685012382222462687620998915470135915e+6',
        '-2856376.815219143184897347685012382222462687620998915470135915511363444',
        60);
    t('7.75700e-24', '0.000000000000000000000007757', 5);
    t('7.0e-1', '0.7', 1);
    t('5.2109749078977455423107465583658126e+37',
        '52109749078977455423107465583658126637', 34);
    t(
        '3.631093819552528994444977110063007461579154042777868294000e-29',
        '0.00000000000000000000000000003631093819552528994444977110063007461579154042777868294',
        57);
    t('-9.893937860425888e+8', '-989393786.042588804219191', 15);
    t('8.7978043622607467e+42',
        '8797804362260746751563912625017414439944006.5804807', 16);
    t(
        '-4.6561702764394602621e-7',
        '-0.000000465617027643946026213823955447791862428108248596086901464075785390015',
        19);
    t('-2.542770482242902215596924884302407e+8',
        '-254277048.224290221559692488430240765024783', 33);
    t('2.70000000e-8', '0.000000027', 8);
    t('-8.0291821891769794408790934252924453237e+16',
        '-80291821891769794.408790934252924453237503615825249362166', 37);
    t('-8.05295923004057358545854771e-16',
        '-0.0000000000000008052959230040573585458547716514262', 26);
    t('-2.786758e-21',
        '-0.00000000000000000000278675879025858093817787290334306', 6);
    t('-8.0160835624737225803853824687641777660406527e+20',
        '-801608356247372258038.538246876417776604065270622886204812876', 43);
    t('-7.2849054887999144694619191770897589e+27',
        '-7284905488799914469461919177.08975892527524', 34);
    t('-7.586e-17', '-0.00000000000000007586908', 3);
    t('-5.9508150933636580674249602941673984254864e+20',
        '-595081509336365806742.496029416739842548642249', 40);
    t('-3.526911897e-18', '-0.000000000000000003526911897770082481187', 9);
    t('-5.774e-22', '-0.0000000000000000000005774729035676859', 3);
    t('-6.4700957007714124190210074e-13',
        '-0.00000000000064700957007714124190210074383', 25);
    t('-5.610492e+21', '-5610492566512449795573', 6);
    t('-6.015e+23', '-601556443593022914280678', 3);
    t('-6.0673361553344e+11', '-606733615533.448288878', 13);
    t('-3.1e+26', '-315617199368461055533962323.071668327669249', 1);
    t('-9.1391079512104562032343e+24', '-9139107951210456203234346', 22);
    t('-2.0441e+21', '-2044198307917443182711', 4);
    t('-8.21283723216249535240085606500821783973097233e+23',
        '-821283723216249535240085.606500821783973097233814324', 44);
    t('-6.375e+14', '-637540984314799.4', 3);
    t('-2.17797482005219478530856429744726e+29',
        '-217797482005219478530856429744.7268928676963181', 32);
    t('-3.9547e+11', '-395476721391', 4);
    t('-6.8927e+21', '-6892798573971046301111', 4);
    t('-6.33842141402916538926e-12',
        '-0.000000000006338421414029165389261335065112712777', 20);
    t('-4.5727e-30', '-0.000000000000000000000000000004572725511159166', 4);
    t('-7.8847457779026882221249217577974e-17',
        '-0.000000000000000078847457779026882221249217577974', 31);
    t('-2.64916231640264927e+12', '-2649162316402.649271824', 17);
    t('-1.73604404e+28',
        '-17360440496948254515028685124.37795415803082546457797184294', 8);
    t('-8.680224985623e+16', '-86802249856236148.11694273469092873', 12);
    t('-4.3e-19', '-0.00000000000000000043859841576346037715462713764211635',
        1);
    t('-7.68867535389098159141717105e-11',
        '-0.000000000076886753538909815914171710501337139', 26);
    t('-5.24325038611090505928389422325001606e+21',
        '-5243250386110905059283.894223250016067979080420266', 35);
    t('-1.38e-21',
        '-0.0000000000000000000013874592057586367688528204069850262406', 2);
    t('-7.308601949094508589445770582074109410615037e+24',
        '-7308601949094508589445770.5820741094106150373221910779', 42);
    t('-3.2638e+13', '-32638405387645.3309565877781780222317335852159983', 4);
    t('-3.55454737448094719019291183206515059962378e+22',
        '-35545473744809471901929.118320651505996237856336054914', 41);
    t('-5.3906242252792e-11', '-0.00000000005390624225279268530907215395611',
        13);
    t('-8.86760873811213105078e+15', '-8867608738112131.050787', 20);
    t('-4.78129254835567e-23',
        '-0.00000000000000000000004781292548355671480462711435866243551', 14);
    t('-6.4694208834502691835879021438795583630205e-19',
        '-0.00000000000000000064694208834502691835879021438795583630205', 40);
    t('-9.324e-25', '-0.00000000000000000000000093242969', 3);
    t('-6.922220589076408182786e+19',
        '-69222205890764081827.8655148459740694252038421', 21);
    t('-4.193207546161458e+19', '-41932075461614585862.215078', 15);
    t('-7.98e+20', '-798827417648620333729.80696458197', 2);
    t('-2.53e-27', '-0.0000000000000000000000000025361014542495516754818606153',
        2);
    t('-1.4930677606201e-20', '-0.0000000000000000000149306776062013560263804',
        13);
    t('-2.4385708957357e+19',
        '-24385708957357294486.03887038886025345320045340124898971786', 13);
    t('-2.3170650157672525597815028610843e+18',
        '-2317065015767252559.781502861084367708776250552', 31);
    t('-6.9178198e+18',
        '-6917819884210952360.76327902290237387108459707859893972', 7);
    t('-5.8557793e-24', '-0.000000000000000000000005855779377', 7);
    t('-2.9760848e-12', '-0.00000000000297608486674725722', 7);
    t('-5.994209456542723342157e+23',
        '-599420945654272334215750.2697081334512770109182770472941827', 21);
    t('-2.176318765141873189550724e+24', '-2176318765141873189550724', 24);
    t('-3.015068240172763167642991583362591462e+17',
        '-301506824017276316.76429915833625914624', 36);
    t('-4.092360120459492827213341546580282588568024330771e+25',
        '-40923601204594928272133415.465802825885680243307714368088538', 48);
    t('-1.241037736e-28', '-0.00000000000000000000000000012410377364', 9);

    Big.rm = 1;

    t(
        '-5.002239116605888927178702930656e-39',
        '-0.00000000000000000000000000000000000000500223911660588892717870293065633642',
        30);
    t(
        '-8.52292947230244775435e+29',
        '-852292947230244775434968241532.494643593912804433318745222587246680109833509655450267792446',
        20);
    t('-6.1169514510867e+10', '-61169514510.8673382', 13);
    t('-8.05745763527307676170759722175169266017831695215e+48',
        '-8057457635273076761707597221751692660178316952146', 47);
    t('-4.923572102098e+10',
        '-49235721020.9847017846898652687600227388412980598816', 12);
    t('-7.981341661715027117746906076515945e+41',
        '-798134166171502711774690607651594491039629', 33);
    t('-8.00e-3', '-0.008', 2);
    t('8.517466793430899278197016892000000000000e-15',
        '0.000000000000008517466793430899278197016892', 39);
    t('-3.032293512e+0', '-3.0322935124071923328711934463341802038', 9);
    t(
        '-2.60682904403489305678908771323995810138267385200000000e-20',
        '-0.00000000000000000002606829044034893056789087713239958101382673852',
        53);
    t('-3.935816927273980e+20', '-393581692727398036652.850960055902271', 15);
    t('-2.98297216346e-27',
        '-0.00000000000000000000000000298297216346039288935575576076143', 11);
    t('-3.01319315e+23', '-301319315398414808376087.572306433', 8);
    t('-8.870698526921188e-12', '-0.00000000000887069852692118832284144110732',
        15);
    t('-3.27e+23',
        '-326739927744903524706793.652546266488323001284674736489440831', 2);
    t('-8.614e+12', '-8613828413581', 3);
    t('-6.1382445990593346026804e+12', '-6138244599059.3346026803630253203',
        22);
    t('-7.9111971e+12', '-7911197130975', 7);
    t('-8.5902152501051e+29',
        '-859021525010507210136559039003.689834129033952321238', 13);
    t('-7.24491e-30',
        '-0.00000000000000000000000000000724490826045045451271534', 5);
    t('-8.4948070285349193974989221504919380656715136165603325e+24',
        '-8494807028534919397498922.15049193806567151361656033246', 52);
    t('-6.3295239596e-17', '-0.00000000000000006329523959626011114164', 10);
    t('-3.1725692353e+30', '-3172569235260846783669130724638.711', 10);
    t('-4.065727077e+11', '-406572707673.336570352310681187663765', 9);
    t('-6.82883869249998075574247223155497e+18',
        '-6828838692499980755.7424722315549682855987375899188309581152', 32);
    t('-2.56144400427045214943786338e+24',
        '-2561444004270452149437863.38354535663028539', 26);
    t('-4.97637439956044400125498868e+23',
        '-497637439956044400125498.8682100590602459937304614141772', 26);
    t('-4.307891929198702822746534506143e+29',
        '-430789192919870282274653450614.349564081', 30);
    t('-8.55e-27', '-0.00000000000000000000000000855367295711812079', 2);
    t('-7.906e+11', '-790612526329.410459220189562', 3);
    t('-3.1841363e-22', '-0.00000000000000000000031841363', 7);
    t('-6.2068049304845006e+20',
        '-620680493048450055389.3227069760888437941041', 16);
    t('-8.4809476e+18', '-8480947614295114807.320148688', 7);
    t('-2.287988570734255855e+23', '-228798857073425585542366.399034916953775',
        18);
    t('-8.148647139762925073276164486240320698e+21',
        '-8148647139762925073276.1644862403206980851079', 36);
    t('-6.87643138785664756e-12',
        '-0.0000000000068764313878566475604352570287089535238582267443', 17);
    t('-3.709587e+18', '-3709586618852569033.55141868', 6);
    t('-6.8086794224e+28',
        '-68086794224433270564431694468.814537646575833889824621540849', 10);
    t('-4.966301085179e+19', '-49663010851788946007', 12);
    t('-5.34439184068052811184219234494114e+26',
        '-534439184068052811184219234.494113670484623394', 32);
    t('-2.798732412e+16', '-27987324119455299', 9);
    t('-1.554430791885961957e+15', '-1554430791885961.956863404519493346081223',
        18);
    t('-6.90619083822075003978e+24',
        '-6906190838220750039778836.289105048686876596', 20);
    t('-1.108034176809770578315e+12', '-1108034176809.7705783154', 21);
    t('-1.43e+22', '-14266566332440117777110.63461224926682073525873105', 2);
    t('-9.15e+13', '-91477543307040.916791223', 2);
    t('-1.1001e+26',
        '-110010856476508992391958436.9355559264588205214557001854', 4);
    t('-1.2e+16', '-12148027447349021', 1);
    t('-4.4e+13', '-44268551660889.40880208546489742632181832780494', 1);
    t('-8.62058920338555484081691e+19',
        '-86205892033855548408.169086865949596390775', 23);
    t('-5.2e-13', '-0.00000000000051876025261394172', 1);
    t('-4.88063953404884862027221562057786242658496407473e-11',
        '-0.0000000000488063953404884862027221562057786242658496407473', 47);
    t('-5.255e+18', '-5254530327311322805.9528217', 3);
    t('-6.4630488003995117e-11', '-0.0000000000646304880039951167486', 16);
    t('-3.15214e-23', '-0.00000000000000000000003152137339126187', 5);
    t('-8.86563136e+11', '-886563136251.626990531858472111699416852', 8);
    t('-8.638990742871e-16', '-0.0000000000000008638990742870608', 12);
    t('-1.57817750020560815944470062e+12',
        '-1578177500205.60815944470062002898187', 26);
    t('-3.6558384593093900422637e-27',
        '-0.00000000000000000000000000365583845930939004226367940618', 22);
    t('-7.5e+12', '-7540535487033', 1);
    t('-6.7647935206791247e+19', '-67647935206791246567', 16);
    t('-3.0204818086245915027e+30',
        '-3020481808624591502749101182536.872936744534671794', 19);
    t('-8.40498662e+12', '-8404986622734.85', 8);
    t('-2.944135296894e-18', '-0.0000000000000000029441352968942548971', 12);
    t('-8.826099694855290261753e+11', '-882609969485.52902617534731', 21);
    t('-1.9717565867734925e-13',
        '-0.000000000000197175658677349252855292223369', 16);
    t('-4.91451975824866130376722e+20',
        '-491451975824866130376.722358803861287205044883122152013315', 23);
    t('-5.111649e+17', '-511164947156144375', 6);
    t('-9.496473458673099e+11', '-949647345867.30987953779868637405061', 15);
    t('-2.1903308925764762892e+21', '-2190330892576476289225', 19);
    t('-3.47598363e+25', '-34759836338593591584288059.755482689269713', 8);
    t('-2.9192144584989753156762701431e-24',
        '-0.0000000000000000000000029192144584989753156762701431', 28);
    t('-4.0456517973466503588734928438425e+23',
        '-404565179734665035887349.28438424933669843', 31);
    t('-1.297871549154944904150929e+17', '-129787154915494490.4150929407633398',
        24);
    t('-1.4566530316908752e+18', '-1456653031690875152.6306667', 16);
    t('-3.5521e-12', '-0.00000000000355210483', 4);
    t('-9.1838324864110351307221525161e+17',
        '-918383248641103513.07221525161442', 28);
    t('-8.33245633316304149287131334e-22',
        '-0.00000000000000000000083324563331630414928713133382', 26);
    t('-4.593824606634605622464043606094613988489104e+15',
        '-4593824606634605.62246404360609461398848910424547985108092894', 42);
    t('-5.232e-26', '-0.0000000000000000000000000523185958604202852', 3);
    t('-3.8319390497954462e+25', '-38319390497954461897251251.444', 16);
    t('-1.00157678068191049988073716749599603712e+17',
        '-100157678068191049.9880737167495996037119953003896147', 38);
    t('-4.169977410059689809645035174132294864e+20',
        '-416997741005968980964.50351741322948635363513285839302', 36);
    t('-7.121660153198989278372512656775647e-11',
        '-0.0000000000712166015319898927837251265677564651728358', 33);
    t('-7.98924570545536548623603750084330391943e+19',
        '-79892457054553654862.360375008433039194317394396964358522', 38);

    Big.rm = 2;

    t('-4.3502707501164e+36', '-4350270750116411997402439304498892819', 13);
    t('9.5e-21', '0.0000000000000000000094520280724178734152', 1);
    t(
        '1.39631186750554172785676012693418617250072200744214625994656047727270672248243741907e+34',
        '13963118675055417278567601269341861.725007220074421462599465604772727067224824374190703237660781',
        83);
    t(
        '5.9446570e-26',
        '0.00000000000000000000000005944657036540768164877637239177740419063920648',
        7);
    t('7.00000e-12', '0.000000000007', 5);
    t('-2.87e+14', '-287060740776209.3950381715', 2);
    t('3.411740542875509329e+24', '3411740542875509328514044', 18);
    t('-6.20235112738687046118395830000000000000000000000e-29',
        '-0.000000000000000000000000000062023511273868704611839583', 47);
    t('2.94349130121570276626863135396717336528655493e+19',
        '29434913012157027662.686313539671733652865549279174', 44);
    t('4.01255076512828067130306533670644537832e-10',
        '0.000000000401255076512828067130306533670644537831678294548', 38);
    t('-5.4277306444432e+11',
        '-542773064444.317654960431120452254700391693837992', 13);
    t('-4.355706886680889557797360814402e+30',
        '-4355706886680889557797360814401.536556745674646509159280626', 30);
    t('-1.29e-15', '-0.00000000000000128978312277001609181774216296380783932',
        2);
    t('-1.0588973816292989769e+25',
        '-10588973816292989768709129.1767038708798755780352204', 19);
    t('-3.210569596e+10', '-32105695962.8803639621', 9);
    t('-7.18504270173744681360682714959e+28',
        '-71850427017374468136068271495.87', 29);
    t('-4.29794333519778779150824479010034817077204e-10',
        '-0.0000000004297943335197787791508244790100348170772040392', 41);
    t('-4.615682142828269066227773895179987062919e+20',
        '-461568214282826906622.7773895179987062919071922', 39);
    t('-1.3864477517287155526073e+13', '-13864477517287.15552607265', 22);
    t('-6.793120028e+13', '-67931200280922.72252141789646787475433427482', 9);
    t('-8.075e-18', '-0.000000000000000008074975073002274636799975', 3);
    t('-8.360228691054180854419062530687032074820667001e+24',
        '-8360228691054180854419062.530687032074820667001120752628', 45);
    t('-3.0763956760417194035216e-12',
        '-0.000000000003076395676041719403521594', 22);
    t('-2.5288383e+25', '-25288383009460922631988717.84659997837058450749', 7);
    t('-4.554185192e+29', '-455418519247311560996997520087.98189', 9);
    t('-9.135175372324138467397264e+11', '-913517537232.413846739726417', 24);
    t('-8.257259383044471855222900534859251889332388855848e-10',
        '-0.0000000008257259383044471855222900534859251889332388855848', 48);
    t('-7.651597268450922707e-13',
        '-0.000000000000765159726845092270720405167100094', 18);
    t('-8.952011763950994514e+26', '-895201176395099451377549961.34870447', 18);
    t('-2.7395479569618982298152060567357e-10',
        '-0.00000000027395479569618982298152060567357', 31);
    t('-1.31151451700453378841431e+24', '-1311514517004533788414313', 23);
    t('-5.915297930316863891e-10',
        '-0.0000000005915297930316863890707686339684395', 18);
    t('-1.449e-27',
        '-0.0000000000000000000000000014487033279693402845128265141859', 3);
    t('-3.7e+10', '-36919550406.826974442743517918128', 1);
    t('-3.945347688940382499631779106638865e+13',
        '-39453476889403.824996317791066388653', 33);
    t('-8.547704e-29', '-0.0000000000000000000000000000854770378842608635356',
        6);
    t('-3.76e+25', '-37618296325402619735777629.467812385256281737441412', 2);
    t('-8.031066086398624e+28', '-80310660863986235667567286452', 15);
    t('-4.038276256088135496e-17',
        '-0.000000000000000040382762560881354955896694823328777602811', 18);
    t('-1.77173574740860868e+25', '-17717357474086086837250852', 17);
    t('-1.421967649e+21', '-1421967648805122645888', 9);
    t('-4.7e+11', '-469485715327', 1);
    t('-7.372223291560455075681748682810527006883e+16',
        '-73722232915604550.75681748682810527006882666313809409', 39);
    t('-8.9539396357e+14', '-895393963565598', 10);
    t('-8.14646103854802172250414801405e+10',
        '-81464610385.48021722504148014045579178726', 29);
    t('-1.2053415734425581e+12', '-1205341573442.5581371841633131879', 16);
    t('-8.35214176861046133596101313170854966756043001e+28',
        '-83521417686104613359610131317.0854966756043001041619492', 44);
    t('-3.7610694152e-28', '-0.00000000000000000000000000037610694151517628351',
        10);
    t('-6.71e-12', '-0.00000000000670729337105720320122353', 2);
    t('-4.005517304396006251e+13', '-40055173043960.0625088492324182094858',
        18);
    t('-6.0206e+28', '-60205974155921075891080012488.4566490314762809', 4);
    t('-6.36287561326e+11', '-636287561325.9124444291802472', 11);
    t('-3.11336117e-16', '-0.000000000000000311336117052129384933053792', 8);
    t('-5.3927134886536e+30', '-5392713488653639958906162302264.424436642808',
        13);
    t('-3.82395446711276e-10',
        '-0.0000000003823954467112758458806849565215407952986440811', 14);
    t('-4.2858082253423e-27', '-0.0000000000000000000000000042858082253422975',
        13);
    t('-2.9918792622984137284399075479267066e+14',
        '-299187926229841.3728439907547926706557', 34);
    t('-3.1949909651023223034303544498737e+27',
        '-3194990965102322303430354449.8737', 31);
    t('-9.1e-27', '-0.0000000000000000000000000090531861025', 1);
    t('-2.8e+11', '-279301037794', 1);
    t('-7.126913661498270214611054421e+13', '-71269136614982.70214611054420849',
        27);
    t('-4.86337579169293342736515180299340135e+13',
        '-48633757916929.334273651518029934013479777304', 35);
    t('-3.406744915848058125e+25', '-34067449158480581246177934.3445612265793',
        18);
    t('-5.542902272865090080311949446460659235171860088660477e+16',
        '-55429022728650900.803119494464606592351718600886604770155246', 51);
    t('-8.26224854264697737938997145336e+12',
        '-8262248542646.9773793899714533620028598662842221171', 29);
    t('-3.16331e+18', '-3163306186318700887', 5);
    t('-9.087531707575372e+25', '-90875317075753723792666377.6466517495', 15);
    t('-8.758548512438e+14', '-875854851243824.87435', 12);
    t('-3.9e-11', '-0.0000000000387093', 1);
    t('-3.987015017148130889206385341736666180313e+11',
        '-398701501714.813088920638534173666618031251290587', 39);
    t('-2.493129998e-11', '-0.00000000002493129997889845697168462', 9);
    t('-7.0892393575673871055576e+17',
        '-708923935756738710.5557595392277447617', 22);
    t('-4.931821627225927773384e-20',
        '-0.00000000000000000004931821627225927773384063578', 21);
    t('-5.245261764976094777313893054196562e-17',
        '-0.0000000000000000524526176497609477731389305419656234', 33);
    t('-6.66625797221972034223428591e+23',
        '-666625797221972034223428.590606426470365', 26);
    t('-4.06575860462e+17', '-406575860461750182.91372176567693718', 11);
    t('-8.90585675951e+19', '-89058567595113495345', 11);

    Big.rm = 1;

    t('-2.033619450856645241153977e+0',
        '-2.03361945085664524115397653636144859', 24);
    t('1.130e+8', '112955590.0430616', 3);
    t('-2.1366468193419876852426155614364269e+10',
        '-21366468193.419876852426155614364269', 34);
    t('5.82086615659566151529e+7', '58208661.56595661515285734890860077163',
        20);
    t('9.1615809372817426111208e+6',
        '9161580.937281742611120838868847823478250167882379624', 22);
    t('3.8976506901061164197e+1',
        '38.97650690106116419699490320634490920742414', 19);
    t('9.0994914931570087194607344641722310104e+6',
        '9099491.4931570087194607344641722310103895224905', 37);
    t('6.06e+5', '605633', 2);
    t('2.6999974790473705518992117e+1', '26.9999747904737055189921170044987',
        25);
    t('6.7108801361722e+6', '6710880.136172156342982663450743452', 13);
    t('-8.0e+0', '-8', 1);
    t('3.000e-2', '0.03', 3);
    t('-4.7e+2', '-469', 1);
    t('-6.3000e+0', '-6.3', 4);
    t('-5.4e+2', '-542', 1);
    t('-5.2000e+0', '-5.2', 4);
    t('-9.00000e-2', '-0.09', 5);
    t('-3.1000e-1', '-0.31', 4);
    t('-4.4e+2', '-436', 1);
    t('-3.00e+0', '-3', 2);
    t('-5.00e-2', '-0.05', 2);
    t('1.00e-2', '0.01', 2);
    t(
      '1.23e+2',
      '12.3e1',
    );
    t('1e+2', '12.3e1', 0);
    t('1e+2', '12.3e1', -0);

    // test.isException(function () {new Big(1.23).toExponential(null)}, "null");
    // test.isException(function () {new Big(1.23).toExponential(NaN)}, "NaN");
    // test.isException(function () {new Big(1.23).toExponential('NaN')}, "'NaN'");
    // test.isException(function () {new Big(1.23).toExponential([])}, "[]");
    // test.isException(function () {new Big(1.23).toExponential({})}, "{}");
    // test.isException(function () {new Big(1.23).toExponential('')}, "''");
    // test.isException(function () {new Big(1.23).toExponential(' ')}, "' '");
    // test.isException(function () {new Big(1.23).toExponential('hello')}, "'hello'");
    // test.isException(function () {new Big(1.23).toExponential('\t')}, "'\t'");
    // test.isException(function () {new Big(1.23).toExponential(new Date)}, "new Date");
    // test.isException(function () {new Big(1.23).toExponential(new RegExp)}, "new RegExp");
    // test.isException(function () {new Big(1.23).toExponential(2.01)}, "2.01");
    // test.isException(function () {new Big(1.23).toExponential(10.5)}, "10.5");
    // test.isException(function () {new Big(1.23).toExponential('1.1e1')}, "'1.1e1'");
    // test.isException(function () {new Big(1.23).toExponential(true)}, "true");
    // test.isException(function () {new Big(1.23).toExponential(false)}, "false");
    // test.isException(function () {new Big(1.23).toExponential(function (){})}, "function (){}");
    // test.isException(function () {new Big(1.23).toExponential(Big('3'))}, "Big('3')");
    // test.isException(function () {new Big(1.23).toExponential('0')}, "'0'");
    // test.isException(function () {new Big(1.23).toExponential('1')}, "'1'");
    // test.isException(function () {new Big(1.23).toExponential('22')}, "'22'");
    // test.isException(function () {new Big(1.23).toExponential('-0.00')}, "'-0.00'");
    // test.isException(function () {new Big(1.23).toExponential('-1')}, "'-1'");
    // test.isException(function () {new Big(1.23).toExponential(-23)}, "-23");
    // test.isException(function () {new Big(1.23).toExponential(1e9 + 1)}, "1e9 + 1");
    // test.isException(function () {new Big(1.23).toExponential(1e9 + 0.1)}, "1e9 + 0.1");
    // test.isException(function () {new Big(1.23).toExponential(-0.01)}, "-0.01");
    // test.isException(function () {new Big(1.23).toExponential('-1e-1')}, "'-1e-1'");
    // test.isException(function () {new Big(1.23).toExponential(Infinity)}, "Infinity");
    // test.isException(function () {new Big(1.23).toExponential('-Infinity')}, "'-Infinity'");

    // ROUND_UP
    Big.rm = 3;

    t('-2.033619450856645241153977e+0',
        '-2.03361945085664524115397653636144859', 24);
    t('1.130e+8', '112955590.0430616', 3);
    t('1.13e+8', '112155590.0430616', 2);
    t('-2.1366468193419876852426155614364269e+10',
        '-21366468193.419876852426155614364269', 34);
    t('5.82086615659566151521e+7', '58208661.56595661515205734890860077163',
        20);
    t('9.1615809372817426111209e+6',
        '9161580.937281742611120838868847823478250167882379624', 22);
    t('3.8976506901061164197e+1',
        '38.97650690106116419699490320634490920742414', 19);
    t('9.0994914931570087194607344641722310104e+6',
        '9099491.4931570087194607344641722310103895224905', 37);
    t('6.06e+5', '605633', 2);
    t('6.06e+5', '605133', 2);
    t('2.6999974790473705518992118e+1', '26.9999747904737055189921170044987',
        25);
    t('6.7108801361722e+6', '6710880.136172156342982663450743452', 13);
    t('-8.0e+0', '-8', 1);
    t('3.000e-2', '0.03', 3);
    t('-4.7e+2', '-469', 1);
    t('-4.6e+2', '-460', 1);
    t('-4.7e+2', '-464', 1);
    t('-6.3000e+0', '-6.3', 4);
    t('-5.5e+2', '-542', 1);
    t('-5.2000e+0', '-5.2', 4);
    t('-9.00000e-2', '-0.09', 5);
    t('-3.1000e-1', '-0.31', 4);
    t('-4.4e+2', '-436', 1);
    t('-3.00e+0', '-3', 2);
    t('-5.00e-2', '-0.05', 2);
    t('1.00e-2', '0.01', 2);
    t(
      '1.23e+2',
      '12.3e1',
    );
    t('2e+2', '12.3e1', 0);
    t('-2e+2', '-12.3e1', 0);
    t('2e+2', '12.3e1', -0);
  });
}
