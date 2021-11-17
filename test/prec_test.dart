import 'package:big_dart/big_dart.dart';
import 'package:big_dart/src/utils.dart';

import 'package:test/test.dart';

import '_utils.dart';

void main() {
  test('prec', () {
    // To default
    Big.dp = 20;
    Big.rm = RoundingMode.values[1];
    Big.ne = -7;
    Big.pe = 21;
    var t = (expected, value, p, [int? r]) {
      expect(
        Big(value)
            .prec(p, r != null ? RoundingMode.values.elementAtOrNull(r) : null)
            .toStringAsFixed(),
        expected.toString(),
        reason: "$value p:$p r:$r = $expected",
      );
    };

    Big.dp = 20;
    Big.rm = RoundingMode.values[1];
    Big.ne = -7;
    Big.pe = 21;

    // test.isTrue(new Big(1).prec(1) is Big);

    // Big.RM = 1
    t('0', 0, 1);
    t('1', 1, 1);
    t('1', 1, 2);
    t('10', 12, 1);
    t('12', 12, 2);
    t('12', 12, 3);
    t('10', 12.3, 1);
    t('12', 12.3, 2);
    t('12.3', 12.3, 3);
    t('1000', 1230, 1);
    t('1200', 1230, 2);
    t('1230', 1230, 3);
    t('1230', 1230, 4);
    t('1230', 1230, 5);

    t('4937809340236234102130.947044664011',
        '4937809340236234102130.947044664011', 35, 3);
    t('337528093391.5', '337528093391.493107', 13, 2);
    t('4985349771216.54991391', '4985349771216.54991391072733', 21, 1);
    t('1101895947.92763', '1101895947.92762954984827601473036438720818296', 15,
        1);
    t('20026847', '20026846.9372', 8, 2);
    t('7419720696218', '7419720696218.21961188299387526', 13, 0);
    t('635000000', '634438520.50126453', 3, 3);
    t('88429990502356839.49260500060049004694585659',
        '88429990502356839.49260500060049004694585658780656', 43, 1);
    t('2768479', '2768479.2081810557738981722324989595', 7, 0);
    t('892162270787217755968010370478903185093',
        '892162270787217755968010370478903185093.0', 42, 2);
    t(
        '8018330257774248398702693271920270',
        '8018330257774248398702693271920270.09311146148062547723636185680287073',
        33,
        0);
    t('88092477731945.1182807043', '88092477731945.118280704259340858', 24, 1);
    t('90993285126.547129568419776',
        '90993285126.5471295684197756642787492493375', 26, 2);
    t(
        '315137924718839945152625512241078.591350724696151650603',
        '315137924718839945152625512241078.59135072469615165060341097372',
        54,
        0);
    t('78407276142689114300000000', '78407276142689114391801017.43776', 18, 0);
    t('708.66442', '708.66442', 11, 3);
    t('96426394035800000000000000000',
        '96426394035875521556520436906.967758064780068220269263413347', 12, 0);
    t('0.001', '0.00099999999999', 3, 3);
    t('0.000999', '0.00099999999999', 3, 0);
    t('56300000000', '56281970459.86927925182', 3, 2);
    t('565000000000', '565914070913.993334452356', 3, 0);
    t(
        '52352220229587840556187937111046743.4583563',
        '52352220229587840556187937111046743.458356312735390953445935426160537204',
        42,
        1);
    t('36271.3981207141751333261', '36271.39812071417513332613', 24, 0);
    t('4739543704210300000000000000',
        '4739543704210297904547136327.7628335972128075226361512', 15, 2);
    t('9645371928851642074344527881477634000',
        '9645371928851642074344527881477634345.4914341', 34, 1);
    t('40693000000', '40693051631.1251783538001747467807789871', 5, 1);
    t('8248561437515605126456247769501697.764',
        '8248561437515605126456247769501697.764296656999', 37, 1);
    t(
        '5727898467119496952445688320883475.404402704196931184674675825',
        '5727898467119496952445688320883475.404402704196931184674675825',
        64,
        1);
    t(
        '11000000000000000000000000000000',
        '11914671819298396166152780469749.700178398572262303378530442966993',
        2,
        0);
    t('84694.019523885', '84694.019523885', 16, 0);
    t('6384.0533', '6384.0532734075270642890', 8, 3);
    t('86.52585963444630269524402336034067',
        '86.5258596344463026952440233603406633365294', 34, 3);
    t('211698906765339555009000000000000',
        '211698906765339555008927202275920.017666588018743809326', 21, 2);
    t('21', '20.73571174', 2, 3);
    t('19628275338135891273639233000',
        '19628275338135891273639233078.3194337412', 26, 0);
    t(
        '715174732399634482855366624736839961.178974112796',
        '715174732399634482855366624736839961.1789741127950654699759400963516',
        48,
        3);
    t('4010185.194165679', '4010185.1941656790873904791', 16, 0);
    t('95649091688620000000000', '95649091688615551968376.399825', 13, 2);
    t('910000000000000000000000',
        '913366499416274482076806.54925361292970753237933', 2, 1);
    t('5713.74819', '5713.7481900', 13, 2);
    t('91.8149489203336825896217615649', '91.814948920333682589621761564879978',
        30, 2);
    t('385450160421689186188707104582074317519.6',
        '385450160421689186188707104582074317519.5011', 40, 3);
    t(
        '980700000000000000000000000000',
        '980624231078939283428476194025.3425674466530668543518761186154209',
        4,
        3);
    t(
        '338479692666105014616000000000',
        '338479692666105014616253331245.01389376828879865108105798429640384',
        21,
        0);
    t(
        '321274436690589321065314360761529600',
        '321274436690589321065314360761529598.3926958740287183203559360243861156',
        35,
        3);
    t('20495856361024494227552150059704.128252538',
        '20495856361024494227552150059704.12825253784', 41, 3);
    t('347539608767858771651414903881.81676443931828298',
        '347539608767858771651414903881.816764439318282980413', 47, 2);
    t('319471356791473500000000000000000',
        '319471356791473556138054433838044.90552027814', 16, 0);
    t('3758410000', '3758411337.659079355464558774017310777636076246', 6, 0);
    t('986791401418080896.725674945574053721614668858858',
        '986791401418080896.725674945574053721614668858858', 51, 1);
    t('56.049', '56.049', 6, 2);
    t('8343815925404573683080000',
        '8343815925404573683077429.4758959133829073879054267509464514', 21, 1);
    t('5454663865.0064130258909884643960591289',
        '5454663865.006413025890988464396059128886823', 38, 2);
    t(
        '9581036221000167548404063617040830845674.8563402624162914896',
        '9581036221000167548404063617040830845674.8563402624162914896694713537',
        59,
        0);
    t('500000000000', '410956568424.9910595380985324', 1, 3);
    t('32006369380000000000000000000000000',
        '32006369376256480193142996925472582.0', 10, 3);
    t('5222032172895746.90277', '5222032172895746.902766092011', 21, 1);
    t('8439793217442.92', '8439793217442.92137711335321', 15, 1);
    t('9.866065033617488770826998', '9.8660650336174887708269980', 28, 1);
    t('44049352.2266915297896690888554259285496418688',
        '44049352.22669152978966908885542592854964186877', 45, 3);
    t('9.946', '9.9456', 4, 2);
    t('428952193056.953', '428952193056.953', 15, 2);
    t('23968438750336.405474280759814', '23968438750336.405474280759813318106',
        29, 3);
    t('6500000000', '6480935501.55496974285182162603356273156890', 2, 1);
    t('3154176290801000000000000000',
        '3154176290800715548619630621.0355772810773559541', 13, 1);
    t(
        '38865242750002932570887590800000000000',
        '38865242750002932570887590890877550733.5505553313425194996432914268372269',
        27,
        0);
    t('8728384988174071448.69', '8728384988174071448.69274', 21, 1);
    t('8209486790494710645762862448749.80842396605900775935',
        '8209486790494710645762862448749.80842396605900775935', 54, 0);
    t('88179259072684818766023076456.5889523232',
        '88179259072684818766023076456.58895232320350', 39, 1);
    t('776981797289252251.093401546863758214465',
        '776981797289252251.093401546863758214465286704664334', 39, 1);
    t('188670879464255056850261739500000000000',
        '188670879464255056850261739507365918265.9293874736873279', 28, 0);
    t('353396834933281759072773.805789609148',
        '353396834933281759072773.805789609148', 37, 1);
    t('4274522263032700000', '4274522263032712850.0041729873', 14, 1);
    t('8350000000000', '8345606845226.45566624', 3, 2);
    t('581091710823050000000000000', '581091710823047241756858512.713357759428',
        14, 3);
    t('4952915437691054280969583000000',
        '4952915437691054280969583218972.8616946954635715417980', 25, 0);
    t('186530566473536251263.858877958',
        '186530566473536251263.858877958474287539', 30, 1);
    t('41.5133038761731262218686', '41.51330387617312622186860688055631484', 24,
        1);
    t(
        '892734300000000000000000000000000000000',
        '892734285316609348922285835347841194677.279150490649933902110687168010',
        7,
        1);
    t('8867741117000000000000000000',
        '8867741117136144692773028671.48789537068725372709865944763', 10, 1);
    t('58066.6119296613521', '58066.611929661352058113440', 18, 3);
    t('2365934669507425116.685560049269016191',
        '2365934669507425116.685560049269016191181112056065', 37, 1);
    t('8039307818523262169309113965.237955673046573',
        '8039307818523262169309113965.2379556730465735379', 43, 0);
    t('620699795.768772003', '620699795.7687720027642576108299448', 18, 2);
    t('677976409911497700000000000000000',
        '677976409911497719121490267737187.9281869113', 16, 0);
    t('9727301256933984906097986874000', '9727301256933984906097986873657.0',
        28, 3);
    t('76723773.04423217932', '76723773.0442321793176553237', 19, 2);
    t('655778655223372.97', '655778655223372.965', 17, 3);
    t(
        '20184630477822715391390984001199.1866444533896426202887666335307182015',
        '20184630477822715391390984001199.1866444533896426202887666335307182015',
        71,
        2);
    t('41930826996134220',
        '41930826996134221.1974945198118251722677898312235505', 16, 2);
    t('9401169208627113200000', '9401169208627113178099.432092017583166044', 17,
        2);
    t('85228991367.461452', '85228991367.46145277847248857183769451804173', 17,
        0);
    t('239393776.69622644151182', '239393776.69622644151181623925655', 23, 1);
    t('33546748243104239469877559937.363355786582993',
        '33546748243104239469877559937.363355786582993', 44, 3);
    t('77046259820455751626.6026808001342537',
        '77046259820455751626.602680800134253741613198881', 36, 2);
    t('976672549609984585227222778700000000000',
        '976672549609984585227222778792212901570.55874088', 28, 0);
    t('94492716203969.2225869573684291964191137943094515',
        '94492716203969.2225869573684291964191137943094514534843', 48, 3);
    t('691412410360950760000000',
        '691412410360950750128020.48447221650237091009047', 17, 3);
    t('89559092584017288521728982.5',
        '89559092584017288521728982.5833198608864', 27, 0);
    t('1811614362251924.40512130616', '1811614362251924.405121306157849629', 27,
        2);
    t('4633501475000', '4633501474602.054640995909183', 10, 3);
    t('678705341261.75297583718425453684090101',
        '678705341261.7529758371842545368409010097945103677', 39, 2);
    t('564078844253167778.8161248928271829563591373580664298',
        '564078844253167778.8161248928271829563591373580664298', 52, 3);
    t('88322850583909.7416016241', '88322850583909.74160162410286643', 25, 0);
    t(
        '3846366946174062127758449605.7022758096',
        '3846366946174062127758449605.702275809555523634154040950898280612811',
        38,
        2);
    t('179.92617', '179.9261669', 8, 1);
    t('6.7942421735585618046', '6.794242173558561804595', 20, 1);
    t('11855.226308528', '11855.226308528', 16, 2);
    t('61277000000000', '61276347667662.405824737', 5, 3);
    t('4174609640', '4174609636.0', 9, 2);
    t('193757131563910000', '193757131563911904.52682306122527060962641882465',
        14, 2);
    t('387.455087', '387.45508661743', 9, 2);
    t(
        '557618201766183005000000000',
        '557618201766183005041293682.3722668213410766424816487716234273',
        19,
        2);
    t('21128122508600497.05489', '21128122508600497.05488760', 22, 2);
    t('630252144005109.53366072283861382',
        '630252144005109.53366072283861381792', 32, 1);
    t('2014467765.30542656127', '2014467765.30542656127', 22, 1);
    t('1479320000000000000000000000000000',
        '1479326666751842221164864465643932.73817033951340680', 6, 0);
    t('9838375.64', '9838375.645', 9, 0);
    t(
        '73392897409456861290131541129654.9256075066904',
        '73392897409456861290131541129654.925607506690362687103367844755771',
        45,
        1);
    t(
        '89764270000000000000000000000000000000',
        '89764275311096607184088076035578686331.70483764463153360153147271493',
        7,
        0);
    t('2617216902482291199973663.484710966125',
        '2617216902482291199973663.484710966125', 37, 1);
    t('537578.927123', '537578.9271229227', 12, 3);
    t('4895936188848030000000000000000000000',
        '4895936188848031794116383643496168477.0801543', 15, 0);
    t('8629922951113.7511448487597458660248521234',
        '8629922951113.7511448487597458660248521234380600977', 41, 1);
    t('4821625627675322025353636064.57176',
        '4821625627675322025353636064.57175523338580806993894351876', 33, 1);
    t('48200644415566530.498484', '48200644415566530.4984835390397628883909840',
        23, 3);
    t('4000000000000000000000000000000000',
        '4192746732983495210446560254097740.47028995', 1, 0);
    t('755.023209', '755.02320914910644', 9, 2);
    t('505291668854707.70906269',
        '505291668854707.709062685721555135520850266111469308027', 23, 1);
    t('664850.618013', '664850.61801224118433274591608772154387', 12, 3);
    t(
        '785103038952630143044641569204316756.63797054791874616052822183467149',
        '785103038952630143044641569204316756.637970547918746160528221834671492',
        68,
        2);
    t('579742066579367045736.917004843230287530285579',
        '579742066579367045736.9170048432302875302855793', 45, 1);
    t('92817.84445', '92817.84445', 13, 1);
    t('772179455775.22422834897', '772179455775.22422834897889', 23, 0);
    t('11653701002.1779016933207',
        '11653701002.177901693320687576204027037389422679', 24, 2);
    t('661971346000462043332006500000000000',
        '661971346000462043332006546474696174.7167702709539', 25, 1);
    t('7951.2507068', '7951.2507067915133', 12, 3);
    t('83825.91569730694896932060436944',
        '83825.915697306948969320604369447056', 31, 0);
    t('25166561739090000000000000000',
        '25166561739091850523119786031.356417774102', 13, 0);
    t('800000000000', '754585116996.9768', 1, 3);
    t('25329930000000000000000000000000',
        '25329931835642796295008712007359.774', 7, 2);
    t('838205133360935.04', '838205133360935.0450208', 17, 0);
    t('960000', '964483.4958501605537391', 2, 1);
    t(
        '6985940160812637750037427078390489093.5972419',
        '6985940160812637750037427078390489093.59724194766104006296648646911097283',
        44,
        1);
    t('85912832521353633900000',
        '85912832521353633962171.622844738617471351787937', 18, 0);
    t('22537.04', '22537.044131504334747686356', 7, 1);
    t('81309794072838871318854500310152.093',
        '81309794072838871318854500310152.09295684998521', 35, 1);
    t('2983.146', '2983.146', 8, 3);
    t(
        '7649851971073922220000000000',
        '7649851971073922227632383137.12367829277753284010508541882606785617',
        18,
        0);
    t('4413319948694474085791.6528747',
        '4413319948694474085791.65287472187114939173359969', 29, 0);
    t('9169434008670526360155.858673',
        '9169434008670526360155.858673447171266307242005', 28, 1);
    t(
        '1262882505899773546530000000000000000',
        '1262882505899773546530078940105109255.1340263465677131821878853130',
        21,
        0);
    t('95094204140327.386800069607',
        '95094204140327.3868000696069952245821304362528', 26, 2);
    t('782.8315804028037', '782.8315804028036627332091761646906', 16, 1);
    t('993000000000000', '992026987647463.516668', 3, 3);
    t(
        '4698757980923794411324653119136506649753.9058533965214',
        '4698757980923794411324653119136506649753.90585339652148316962906302356153227',
        53,
        0);
    t('338765415.622999075063635041304250288156393',
        '338765415.62299907506363504130425028815639273842', 42, 2);
    t('444000', '443272.8', 3, 3);
    t('92863547832.26', '92863547832.25594', 13, 3);
    t('227484121340486.542512', '227484121340486.54251108296', 21, 3);
    t('9440650000000000000000000000000000',
        '9440656634642185509393801198086015.4', 6, 0);
    t('916417601649800000000000000',
        '916417601649865583796921805.163932264102471440203390988', 13, 0);
    t('15732791881955773293163440652450',
        '15732791881955773293163440652451.44291076191144', 31, 0);
    t('82293484047103499038.6975422642147137771867866208',
        '82293484047103499038.697542264214713777186786620705401', 48, 3);
    t('75977708959803656203251104.81675609237952293524970939',
        '75977708959803656203251104.81675609237952293524970938678', 52, 1);
    t('4966635612645365.09586650722463',
        '4966635612645365.095866507224630866586307217888782761159', 30, 2);
    t('449349314276161751863885318023458.255606199257691366208268573',
        '449349314276161751863885318023458.255606199257691366208268573', 61, 2);
    t('77476038634229841225203.057294319605',
        '77476038634229841225203.05729431960467859218', 35, 2);
    t('532731523000', '532731523075.4101466861580822959', 10, 0);
    t('76199428363070721667903.826669566',
        '76199428363070721667903.826669566165506057243720918746', 32, 2);
    t('1000000000000000000000', '1236453638891742153022.8348728811', 1, 1);
    t('765497722616.8961003646',
        '765497722616.896100364573390975890478644136740197458', 22, 2);
    t('937851991874226678.2', '937851991874226678.191965007088457', 19, 3);
    t('9141378468539383564638997660000',
        '9141378468539383564638997666387.513564869223', 27, 0);
    t('680000000000', '675623616750.993125132354', 2, 1);
    t('87687220439051000000000000000000000000',
        '87687220439051554697153502010194056104.42861', 14, 0);
    t('2844992735024778164396876428400000',
        '2844992735024778164396876428386392.397101880541673725', 29, 2);
    t('4910468313236974384325553954.559',
        '4910468313236974384325553954.558968559307060603568610', 32, 1);
    t('7677382468596942606325100814949164462.335409794',
        '7677382468596942606325100814949164462.335409794', 49, 0);
    t('77290000000000000000000000000',
        '77298476544997406115741457621.48100777755241170668034650809', 4, 0);
    t('45031671217607058672836306.48351134',
        '45031671217607058672836306.4835113355599', 34, 1);
    t(
        '4239542600712473433498612753.21060144321763992555366',
        '4239542600712473433498612753.2106014432176399255536577373285045425339',
        51,
        1);
    t('989142489.56454046202042259', '989142489.56454046202042259', 29, 2);
    t('39188324760962.64171', '39188324760962.641710', 19, 3);
    t('1784374158800', '1784374158866.4741261545314002975498', 11, 0);
    t('3179414685590000000000000000000000',
        '3179414685592371949442250485606819.26696750990296429734141944', 12, 2);
    t('5500628286601049.843663626181949',
        '5500628286601049.8436636261819485793447808823573910', 31, 1);
    t('3974711265332457200000000000000', '3974711265332457176491911497563.9361',
        17, 1);
    t(
        '79910228655846918061600000',
        '79910228655846918061589185.101353368484158631096929283677512827019',
        21,
        3);
    t(
        '4389523222041915395738636382677027050000',
        '4389523222041915395738636382677027049670.297472800121808897652436',
        36,
        3);
    t(
        '2894245566479613750113978122489420.5686284128195803188',
        '2894245566479613750113978122489420.56862841281958031877868147223357225',
        53,
        1);
    t(
        '494724446222447272134436118293973049042208245586819785140130787553487687286873291327585520984443687211379965781311260864429223913901690400000000000',
        '494724446222447272134436118293973049042208245586819785140130787553487687286873291327585520984443687211379965781311260864429223913901690493449434874.049',
        136,
        0);
    t(
        '3720280055397389210963282787773692958098570405431190000',
        '3720280055397389210963282787773692958098570405431182098.1847115996658646089352534779938945383741184042776917885782743812931817237846474528789801',
        51,
        3);
    t(
        '759188909745876678229347606524330959678969850255912440680257260789800000000000000000000000000000000000000000000',
        '759188909745876678229347606524330959678969850255912440680257260789793508531411911105662225225721357883400623102.881476662045026352517268398904498921045685377855106763679514746737986172605517588709155551610890784878010336772838372711497238975980355571170655725075915881399899070771273619112223837705596667049149981193',
        67,
        3);
    t(
        '9387762026.7326734940421184446066226146106694714282947260976784456146415402',
        '9387762026.73267349404211844460662261461066947142829472609767844561464154020',
        75,
        1);
    t(
        '279794024756694785000215326702581040764281424692.94416985247012017560069970214089414772133468917746186164351199574782564560451796356697926186392269112385101341672332415427389576261072927099738586782426824776935594024948',
        '279794024756694785000215326702581040764281424692.94416985247012017560069970214089414772133468917746186164351199574782564560451796356697926186392269112385101341672332415427389576261072927099738586782426824776935594024947823170180686',
        218,
        2);
    t(
        '35828450460504270469704936980280835584645741698641855543514563095433541570683138929790029105719699910360000000000000000000000000000000000000000000000',
        '35828450460504270469704936980280835584645741698641855543514563095433541570683138929790029105719699910361577052023426681751310480362480069300311248293.15348414532497112250157766681332507724698060759080257429160605105296732683871024',
        103,
        2);
    t(
        '9940289055903627512125768245502992585069900170400000000000000000',
        '9940289055903627512125768245502992585069900170399503819515972524.13568735283721983801757702683853241247769318405229726113276035561474837566466532875876277432576610830142188269641845050335097656359864498101396326004092685742327518181101473104745549408201476216574093693733574369506676184899821529267868141813088352688031339966846243166921375083445250920',
        47,
        1);
    t(
        '47308500490651000672647597245353550222048575.807214284239202',
        '47308500490651000672647597245353550222048575.8072142842392016063606507543350997595316613513575837073421103918284314912676250088610064455343463233565051257974791197641171878251624763412467738389496245200149213715671349161',
        59,
        1);
    t(
        '7242493899945961184657078755114354.8275694408198985015345976108000512015550224515265362601958484547530262',
        '7242493899945961184657078755114354.827569440819898501534597610800051201555022451526536260195848454753026282935514547388140',
        104,
        0);
    t(
        '4984463523458535754905264911455285850008993268231053980.767410232956686367696506915282296297',
        '4984463523458535754905264911455285850008993268231053980.767410232956686367696506915282296296709367816894555456665962274719887159413483764425930136761749360042065357118267648394706165913383308575864809558314678492797545419',
        91,
        3);
    t(
        '1402457858069260843701831542961702005330000000000000000000000000000000000000000000',
        '1402457858069260843701831542961702005338943536372264316099532808299709640182133143.009979906034715196177295226439746913418590464152810027317068521003207924233662128607269663291833',
        39,
        0);
    t(
        '9735483775685609464322320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
        '9735483775685609464322320520902637418698700323093604913106065125437383414521799911105265912341567164193794949895999422938985317071738708834029942382911270457249378913787.1103832980594904520955978916205703025866141635300875243',
        24,
        0);
    t(
        '489529.68306403435338777825958322163255657451479551721256707088073420494749504360454448131356633',
        '489529.683064034353387778259583221632556574514795517212567070880734204947495043604544481313566331313388535912869238239769635054162766247017293340447968973686886334804349955536713950306242814646600928789897172058572510482913298938731094634890755913526004290737129748224090241001770940',
        95,
        0);
    t(
        '1492565201039912150941642914851.0188694977647271424918935209921129749064571021507470715331012037266466375367808113130910695243443128008252945554605720303655',
        '1492565201039912150941642914851.01886949776472714249189352099211297490645710215074707153310120372664663753678081131309106952434431280082529455546057203036546314199747521356134765285561227686693949347029078827406886675694947',
        155,
        2);
    t(
        '9640.823515736412358055650895513069103270437767616274081289588691585664302621579615021666966091360826575410661596403164479300452152684973160363097309608067',
        '9640.823515736412358055650895513069103270437767616274081289588691585664302621579615021666966091360826575410661596403164479300452152684973160363097309608066484458989787971253015176864265186897585966764740584557961889884222991340777882611717168551975010970695517417044829720982931484654856360759782530622',
        154,
        3);
    t(
        '2192917244999869343205916374337677.13670389941440829125766924482174747890075138055235242239241690214',
        '2192917244999869343205916374337677.13670389941440829125766924482174747890075138055235242239241690213762402416630046739017177822',
        99,
        2);
    t(
        '2811000000000000000000',
        '2810271650889132939296.56710151819671988902086681773799853021233325407901168571657754153770180269049570864269302522698770485556146',
        4,
        3);
    t(
        '315495111097618519547112164879699292983604105741729996616794447864850000000',
        '315495111097618519547112164879699292983604105741729996616794447864849595569.4732429578938004170666887599581675624557787373713415172397346993864722937610311872942069612761272487587892003117667431497194318776589121114621644677670506783812384346194108237410689252765415071112547238246125156991556184611980318715999133743922164645414546327450499594633872455804056396617969187240487543621620',
        69,
        2);
    t('204.054713812637763806802452', '204.054713812637763806802452', 28, 0);
    t(
        '283401218864063400000000000000000000000000000000000000000000000',
        '283401218864063396558389343623404646465639303535411612743365055.0226824948376888',
        17,
        2);
    t(
        '17069318170447559670824010313506648026528166586129880725091542343600550422997254786851016215940786230013064180480826097444101000000000000000000000000000000',
        '17069318170447559670824010313506648026528166586129880725091542343600550422997254786851016215940786230013064180480826097444101017117212949291335428804169206.4789414896747948034966909141270082719485508246318636726728954481',
        125,
        1);
    t(
        '459159626088903852606631649784227594935229835299060973799218279323000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
        '459159626088903852606631649784227594935229835299060973799218279323713336570937633103595944583645177507124617629953771475688119656568329467957028808451626080.2157052326772496024245144704394972923671967963191881122863487049025806804492486980444650765391761189341478929086845849828893436948962388818123422',
        66,
        0);

    t = (expected, value, p, [int? r]) {
      expect(
        Big(value)
            .prec(p, r != null ? RoundingMode.values.elementAtOrNull(r) : null)
            .toStringAsExponential(),
        expected.toString(),
        reason: "$value p:$p r:$r = $expected",
      );
    };

    t('-1.11070563555955986e+949884', '-1.1107056355595598537391E+949884', 18,
        3);
    t(
        '6.31095e+4614231246519714',
        '6.310954382701729758393260889166675474531891695090516238E+4614231246519714',
        6,
        1);
    t('6.46090322e+6677217159189', '6.460903219125211021E+6677217159189', 9, 2);
    t('-5.15e+51785', '-5.1495592729221424586275386661E+51785', 3, 3);
    t(
        '-7.039038e+648540530527',
        '-7.03903881158613994150693699720210776203561398962036350248E+648540530527',
        7,
        0);
    t('8.86067409668395196e+553520229219693',
        '8.860674096683951963219272593791310E+553520229219693', 18, 0);
    t('9.864987930516936534e-490626048', '9.8649879305169365348113E-490626048',
        19, 0);
    t('3.471651888e-7', '3.4716518879894538148508E-7', 10, 2);
    t('2.6e+187364576122710',
        '2.6468730222404974166287111790752920305E+187364576122710', 2, 1);
    t('-5.820926e+137772541213403', '-5.820926E+137772541213403', 7, 0);
    t(
        '5.82502531276069650637998468163265673623114802117e+8930012634273',
        '5.82502531276069650637998468163265673623114802117E+8930012634273',
        49,
        3);
    t('4.844065381013725986837e+6248', '4.84406538101372598683728877E+6248', 22,
        1);
    t(
        '-6.724e+7494242238106',
        '-6.7242657973487816694742594494155083518497133669292619495E+7494242238106',
        4,
        0);
    t('-7e+7786945', '-7.7313723453361061E+7786945', 1, 0);
    t(
        '-1.12e+306023331171748',
        '-1.118165921482066102466296293946894050652555175E+306023331171748',
        3,
        1);
    t('7.21004626e+398740640897153',
        '7.2100462602152007419973593468751658532E+398740640897153', 9, 1);
    t('-7.936e-43130', '-7.93600951E-43130', 4, 1);
    t('-1.80564432714468488631383756914281144946839362e+1359',
        '-1.80564432714468488631383756914281144946839361818525E+1359', 45, 2);
    t('-3e+15499', '-3.0E+15499', 5, 0);
    t('-3.393352377819527802023568109492373e+725647954123',
        '-3.393352377819527802023568109492373656E+725647954123', 34, 0);
    t('4.841677133170436816434246233e+30639158262',
        '4.8416771331704368164342462331056980108405981E+30639158262', 28, 0);
    t('4.5e+9325666044026', '4.45420164905655927661142848292149E+9325666044026',
        2, 1);
    t('1.3e+971860873519992',
        '1.3393718841216445941247869301225022E+971860873519992', 2, 1);
    t('9.876242886531e+52605', '9.876242886531446435944603618104763457E+52605',
        13, 0);
    t(
        '-8.5013637538e+888365717321295',
        '-8.50136375387653962573285296809772512970778623629235925E+888365717321295',
        11,
        0);
    t('9.020713898414363807382134e-1', '0.9020713898414363807382133864186995',
        25, 2);
    t('7.09e+2242265227092', '7.0838E+2242265227092', 3, 3);
    t('8.08261507044993075472382557081796361683467812687673683e-4976',
        '8.08261507044993075472382557081796361683467812687673683E-4976', 57, 3);
    t('5.5100964862850252990176e+0', '5.51009648628502529901761683407913552',
        23, 1);
    t('1.027989e+401293443271', '1.0279887207E+401293443271', 7, 1);
    t('4.76e+44979245', '4.7639E+44979245', 3, 1);
    t('-1.7306e+1059755325', '-1.7306315078051716446467E+1059755325', 5, 1);
    t('3.9456282632322e+203687',
        '3.9456282632321519002673617475779957462749297912E+203687', 14, 1);
    t('-6.174e+9', '-6173578265.071', 4, 1);
    t(
        '-2.36373930494803297524865796700721024e+838379',
        '-2.36373930494803297524865796700721024881625741597833295816323E+838379',
        36,
        0);
    t('1.5e+7', '14349628.01922235388049374147', 2, 3);
    t('6.8614e+74393698866798', '6.8614E+74393698866798', 8, 0);
    t('-1.831113233533270669228699622e+8406934',
        '-1.8311132335332706692286996219681430E+8406934', 29, 2);
    t('4.91402e+7112074044', '4.91401973E+7112074044', 7, 3);
    t('8.84e+76239602607', '8.841940724E+76239602607', 3, 2);
    t(
        '4.794257702528707921549614769559147705541286916e+8949077983',
        '4.794257702528707921549614769559147705541286916517125838578E+8949077983',
        46,
        0);
    t('6.04477481096739e-222583722', '6.04477481096739E-222583722', 18, 1);
    t('9.205025903021276187181944366817198e+96711',
        '9.205025903021276187181944366817198E+96711', 36, 0);
    t(
        '9.48094821522133194405126162122334e+351074489623',
        '9.4809482152213319440512616212233329955405089941555240223386E+351074489623',
        33,
        3);
    t('3.9748340091494161936502395814742749549562853206914631e+3139',
        '3.97483400914941619365023958147427495495628532069146310E+3139', 55, 1);

    checkException(
      () {
        Big(0).prec(0);
      },
      const TypeMatcher<BigError>(),
    );
    checkException(
      () {
        Big(1).prec(0);
      },
      const TypeMatcher<BigError>(),
    );
    checkException(
      () {
        Big(1).prec(-1);
      },
      const TypeMatcher<BigError>(),
    );
  });
}
