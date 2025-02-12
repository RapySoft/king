import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //bazas
  int _cantNoBazas1 = 0;
  int _cantNoBazas2 = 0;
  int _cantNoBazas3 = 0;
  int _cantNoBazas4 = 0;

  int _totalNoBazas1 = 0;
  int _totalNoBazas2 = 0;
  int _totalNoBazas3 = 0;
  int _totalNoBazas4 = 0;

  //corazones
  int _cantCorazones1 = 0;
  int _cantCorazones2 = 0;
  int _cantCorazones3 = 0;
  int _cantCorazones4 = 0;

  int _totalCorazones1 = 0;
  int _totalCorazones2 = 0;
  int _totalCorazones3 = 0;
  int _totalCorazones4 = 0;

  //ni j ni k
  int _cantJK1 = 0;
  int _cantJK2 = 0;
  int _cantJK3 = 0;
  int _cantJK4 = 0;

  int _totalJK1 = 0;
  int _totalJK2 = 0;
  int _totalJK3 = 0;
  int _totalJK4 = 0;

  //no 1
  int _cantQ1 = 0;
  int _cantQ2 = 0;
  int _cantQ3 = 0;
  int _cantQ4 = 0;

  int _totalQ1 = 0;
  int _totalQ2 = 0;
  int _totalQ3 = 0;
  int _totalQ4 = 0;

  //no k
  int _cantK1 = 0;
  int _cantK2 = 0;
  int _cantK3 = 0;
  int _cantK4 = 0;

  int _totalk1 = 0;
  int _totalk2 = 0;
  int _totalk3 = 0;
  int _totalk4 = 0;

  //no 2 ult

  int _cantUlt1 = 0;
  int _cantUlt2 = 0;
  int _cantUlt3 = 0;
  int _cantUlt4 = 0;

  int _tatolUlt1 = 0;
  int _tatolUlt2 = 0;
  int _tatolUlt3 = 0;
  int _tatolUlt4 = 0;

  //total neg
  int _totalNeg1 = 0;
  int _totalNeg2 = 0;
  int _totalNeg3 = 0;
  int _totalNeg4 = 0;

  //positivas_1
  int _cantPosJue1_1 = 0;
  int _cantPosJue1_2 = 0;
  int _cantPosJue1_3 = 0;
  int _cantPosJue1_4 = 0;

  int _totalPosJue1_1 = 0;
  int _totalPosJue1_2 = 0;
  int _totalPosJue1_3 = 0;
  int _totalPosJue1_4 = 0;

  //positivas_2
  int _cantPosJue2_1 = 0;
  int _cantPosJue2_2 = 0;
  int _cantPosJue2_3 = 0;
  int _cantPosJue2_4 = 0;

  int _totalPosJue2_1 = 0;
  int _totalPosJue2_2 = 0;
  int _totalPosJue2_3 = 0;
  int _totalPosJue2_4 = 0;

  //positivas_3
  int _cantPosJue3_1 = 0;
  int _cantPosJue3_2 = 0;
  int _cantPosJue3_3 = 0;
  int _cantPosJue3_4 = 0;

  int _totalPosJue3_1 = 0;
  int _totalPosJue3_2 = 0;
  int _totalPosJue3_3 = 0;
  int _totalPosJue3_4 = 0;

  //positivas_4
  int _cantPosJue4_1 = 0;
  int _cantPosJue4_2 = 0;
  int _cantPosJue4_3 = 0;
  int _cantPosJue4_4 = 0;

  int _totalPosJue4_1 = 0;
  int _totalPosJue4_2 = 0;
  int _totalPosJue4_3 = 0;
  int _totalPosJue4_4 = 0;

  //total POS
  int _totalPos1 = 0;
  int _totalPos2 = 0;
  int _totalPos3 = 0;
  int _totalPos4 = 0;

  //total final
  int _totalFinal1 = 0;
  int _totalFinal2 = 0;
  int _totalFinal3 = 0;
  int _totalFinal4 = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contador KING',
        ),
        actions: [
          IconButton(
              onPressed: () => _openDialog(), icon: const Icon(Icons.refresh))
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (context, result) {
        _exit();
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: const {
              0: FlexColumnWidth(1.2),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
              4: FlexColumnWidth(1),
            },
            children: [
              TableRow(children: [
                _title(''),
                _textField('Jug. 1'),
                _textField('Jug. 2'),
                _textField('Jug. 3'),
                _textField('Jug. 4'),
              ]),
              _tableNoBazas(),
              _tableNoCorazones(),
              _tableNojk(),
              _tableNoq(),
              _tableNok(),
              _tableNoUltimate(),
              _totalNeg(),
              _tablePos1(),
              _tablePos2(),
              _tablePos3(),
              _tablePos4(),
              _totalPos(),
              _totalFinal()
            ],
          ),
        ),
      ),
    );
  }

  TableRow _tableNoBazas() {
    return _children(
        title: 'No bazas',
        value1: _cantNoBazas1,
        cant1: _totalNoBazas1,
        value2: _cantNoBazas2,
        cant2: _totalNoBazas2,
        value3: _cantNoBazas3,
        cant3: _totalNoBazas3,
        value4: _cantNoBazas4,
        cant4: _totalNoBazas4,
        color: Colors.grey.shade300,
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantNoBazas1 = value ?? 1;
            _totalNoBazas1 = (value ?? 0) * 20;
            _totalNeg1 = _totalNoBazas1 +
                _totalCorazones1 +
                _totalJK1 +
                _totalQ1 +
                _totalk1 +
                _tatolUlt1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantNoBazas2 = value ?? 1;
            _totalNoBazas2 = (value ?? 0) * 20;
            _totalNeg2 = _totalNoBazas2 +
                _totalCorazones2 +
                _totalJK2 +
                _totalQ2 +
                _totalk2 +
                _tatolUlt2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantNoBazas3 = value ?? 1;
            _totalNoBazas3 = (value ?? 0) * 20;
            _totalNeg3 = _totalNoBazas3 +
                _totalCorazones3 +
                _totalJK3 +
                _totalQ3 +
                _totalk3 +
                _tatolUlt3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantNoBazas4 = value ?? 1;
            _totalNoBazas4 = (value ?? 0) * 20;
            _totalNeg4 = _totalNoBazas4 +
                _totalCorazones4 +
                _totalJK4 +
                _totalQ4 +
                _totalk4 +
                _tatolUlt4;
          });
        });
  }

  TableRow _tableNoCorazones() {
    return _children(
        title: 'No corazónes',
        value1: _cantCorazones1,
        cant1: _totalCorazones1,
        value2: _cantCorazones2,
        cant2: _totalCorazones2,
        value3: _cantCorazones3,
        cant3: _totalCorazones3,
        value4: _cantCorazones4,
        cant4: _totalCorazones4,
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantCorazones1 = value ?? 1;
            _totalCorazones1 = (value ?? 0) * 20;
            _totalNeg1 = _totalNoBazas1 +
                _totalCorazones1 +
                _totalJK1 +
                _totalQ1 +
                _totalk1 +
                _tatolUlt1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantCorazones2 = value ?? 1;
            _totalCorazones2 = (value ?? 0) * 20;
            _totalNeg2 = _totalNoBazas2 +
                _totalCorazones2 +
                _totalJK2 +
                _totalQ2 +
                _totalk2 +
                _tatolUlt2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantCorazones3 = value ?? 1;
            _totalCorazones3 = (value ?? 0) * 20;
            _totalNeg3 = _totalNoBazas3 +
                _totalCorazones3 +
                _totalJK3 +
                _totalQ3 +
                _totalk3 +
                _tatolUlt3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantCorazones4 = value ?? 1;
            _totalCorazones4 = (value ?? 0) * 20;
            _totalNeg4 = _totalNoBazas4 +
                _totalCorazones4 +
                _totalJK4 +
                _totalQ4 +
                _totalk4 +
                _tatolUlt4;
          });
        });
  }

  TableRow _tableNojk() {
    return _children(
        title: 'Ni J ni K',
        value1: _cantJK1,
        cant1: _totalJK1,
        value2: _cantJK2,
        cant2: _totalJK2,
        value3: _cantJK3,
        cant3: _totalJK3,
        value4: _cantJK4,
        cant4: _totalJK4,
        color: Colors.grey.shade300,
        list: [0, 1, 2, 3, 4, 5, 6, 7, 8],
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantJK1 = value ?? 1;
            _totalJK1 = (value ?? 0) * 30;
            _totalNeg1 = _totalNoBazas1 +
                _totalCorazones1 +
                _totalJK1 +
                _totalQ1 +
                _totalk1 +
                _tatolUlt1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantJK2 = value ?? 1;
            _totalJK2 = (value ?? 0) * 30;
            _totalNeg2 = _totalNoBazas2 +
                _totalCorazones2 +
                _totalJK2 +
                _totalQ2 +
                _totalk2 +
                _tatolUlt2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantJK3 = value ?? 1;
            _totalJK3 = (value ?? 0) * 30;
            _totalNeg3 = _totalNoBazas3 +
                _totalCorazones3 +
                _totalJK3 +
                _totalQ3 +
                _totalk3 +
                _tatolUlt3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantJK4 = value ?? 1;
            _totalJK4 = (value ?? 0) * 30;
            _totalNeg4 = _totalNoBazas4 +
                _totalCorazones4 +
                _totalJK4 +
                _totalQ4 +
                _totalk4 +
                _tatolUlt4;
          });
        });
  }

  TableRow _tableNoq() {
    return _children(
        title: 'No Q',
        value1: _cantQ1,
        cant1: _totalQ1,
        value2: _cantQ2,
        cant2: _totalQ2,
        value3: _cantQ3,
        cant3: _totalQ3,
        value4: _cantQ4,
        cant4: _totalQ4,
        list: [0, 1, 2, 3, 4],
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantQ1 = value ?? 1;
            _totalQ1 = (value ?? 0) * 50;
            _totalNeg1 = _totalNoBazas1 +
                _totalCorazones1 +
                _totalJK1 +
                _totalQ1 +
                _totalk1 +
                _tatolUlt1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantQ2 = value ?? 1;
            _totalQ2 = (value ?? 0) * 50;
            _totalNeg2 = _totalNoBazas2 +
                _totalCorazones2 +
                _totalJK2 +
                _totalQ2 +
                _totalk2 +
                _tatolUlt2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantQ3 = value ?? 1;
            _totalQ3 = (value ?? 0) * 50;
            _totalNeg3 = _totalNoBazas3 +
                _totalCorazones3 +
                _totalJK3 +
                _totalQ3 +
                _totalk3 +
                _tatolUlt3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantQ4 = value ?? 1;
            _totalQ4 = (value ?? 0) * 50;
            _totalNeg4 = _totalNoBazas4 +
                _totalCorazones4 +
                _totalJK4 +
                _totalQ4 +
                _totalk4 +
                _tatolUlt4;
          });
        });
  }

  TableRow _tableNok() {
    return _children(
        title: 'No K',
        value1: _cantK1,
        cant1: _totalk1,
        value2: _cantK2,
        cant2: _totalk2,
        value3: _cantK3,
        cant3: _totalk3,
        value4: _cantK4,
        cant4: _totalk4,
        list: [0, 1],
        color: Colors.grey.shade300,
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantK1 = value ?? 1;
            _totalk1 = (value ?? 0) * 160;
            _totalNeg1 = _totalNoBazas1 +
                _totalCorazones1 +
                _totalJK1 +
                _totalQ1 +
                _totalk1 +
                _tatolUlt1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantK2 = value ?? 1;
            _totalk2 = (value ?? 0) * 160;
            _totalNeg2 = _totalNoBazas2 +
                _totalCorazones2 +
                _totalJK2 +
                _totalQ2 +
                _totalk2 +
                _tatolUlt2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantK3 = value ?? 1;
            _totalk3 = (value ?? 0) * 160;
            _totalNeg3 = _totalNoBazas3 +
                _totalCorazones3 +
                _totalJK3 +
                _totalQ3 +
                _totalk3 +
                _tatolUlt3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantK4 = value ?? 1;
            _totalk4 = (value ?? 0) * 160;
            _totalNeg4 = _totalNoBazas4 +
                _totalCorazones4 +
                _totalJK4 +
                _totalQ4 +
                _totalk4 +
                _tatolUlt4;
          });
        });
  }

  TableRow _tableNoUltimate() {
    return _children(
        title: 'Dos últimas',
        value1: _cantUlt1,
        cant1: _tatolUlt1,
        value2: _cantUlt2,
        cant2: _tatolUlt2,
        value3: _cantUlt3,
        cant3: _tatolUlt3,
        value4: _cantUlt4,
        cant4: _tatolUlt4,
        list: [0, 1, 2],
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantUlt1 = value ?? 1;
            _tatolUlt1 = (value ?? 0) * 90;
            _totalNeg1 = _totalNoBazas1 +
                _totalCorazones1 +
                _totalJK1 +
                _totalQ1 +
                _totalk1 +
                _tatolUlt1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantUlt2 = value ?? 1;
            _tatolUlt2 = (value ?? 0) * 90;
            _totalNeg2 = _totalNoBazas2 +
                _totalCorazones2 +
                _totalJK2 +
                _totalQ2 +
                _totalk2 +
                _tatolUlt2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantUlt3 = value ?? 1;
            _tatolUlt3 = (value ?? 0) * 90;
            _totalNeg3 = _totalNoBazas3 +
                _totalCorazones3 +
                _totalJK3 +
                _totalQ3 +
                _totalk3 +
                _tatolUlt3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantUlt4 = value ?? 1;
            _tatolUlt4 = (value ?? 0) * 90;
            _totalNeg4 = _totalNoBazas4 +
                _totalCorazones4 +
                _totalJK4 +
                _totalQ4 +
                _totalk4 +
                _tatolUlt4;
          });
        });
  }

  TableRow _totalNeg() {
    return TableRow(
        decoration: BoxDecoration(
          color: Colors.red.shade200,
        ),
        children: [
          _title('TOTAL'),
          _cell('$_totalNeg1'),
          _cell('$_totalNeg2'),
          _cell('$_totalNeg3'),
          _cell('$_totalNeg4'),
        ]);
  }

  TableRow _tablePos1() {
    return _children(
        title: 'Positivas 1',
        value1: _cantPosJue1_1,
        cant1: _totalPosJue1_1,
        value2: _cantPosJue1_2,
        cant2: _totalPosJue1_2,
        value3: _cantPosJue1_3,
        cant3: _totalPosJue1_3,
        value4: _cantPosJue1_4,
        cant4: _totalPosJue1_4,
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantPosJue1_1 = value ?? 1;
            _totalPosJue1_1 = (value ?? 0) * 25;
            _totalPos1 = _totalPosJue1_1 +
                _totalPosJue2_1 +
                _totalPosJue3_1 +
                _totalPosJue4_1;
            _totalFinal1 = _totalNeg1 - _totalPos1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantPosJue1_2 = value ?? 1;
            _totalPosJue1_2 = (value ?? 0) * 25;
            _totalPos2 = _totalPosJue1_2 +
                _totalPosJue2_2 +
                _totalPosJue3_2 +
                _totalPosJue4_4;
            _totalFinal2 = _totalNeg2 - _totalPos2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantPosJue1_3 = value ?? 1;
            _totalPosJue1_3 = (value ?? 0) * 25;
            _totalPos3 = _totalPosJue1_3 +
                _totalPosJue2_3 +
                _totalPosJue3_3 +
                _totalPosJue4_3;
            _totalFinal3 = _totalNeg3 - _totalPos3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantPosJue1_4 = value ?? 1;
            _totalPosJue1_4 = (value ?? 0) * 25;
            _totalPos4 = _totalPosJue1_4 +
                _totalPosJue2_4 +
                _totalPosJue3_4 +
                _totalPosJue4_4;
            _totalFinal4 = _totalNeg4 - _totalPos4;
          });
        });
  }

  TableRow _tablePos2() {
    return _children(
        title: 'Positivas 2',
        value1: _cantPosJue2_1,
        cant1: _totalPosJue2_1,
        value2: _cantPosJue2_2,
        cant2: _totalPosJue2_2,
        value3: _cantPosJue2_3,
        cant3: _totalPosJue2_3,
        value4: _cantPosJue2_4,
        cant4: _totalPosJue2_4,
        color: Colors.grey.shade300,
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantPosJue2_1 = value ?? 1;
            _totalPosJue2_1 = (value ?? 0) * 25;
            _totalPos1 = _totalPosJue1_1 +
                _totalPosJue2_1 +
                _totalPosJue3_1 +
                _totalPosJue4_1;
            _totalFinal1 = _totalNeg1 - _totalPos1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantPosJue2_2 = value ?? 1;
            _totalPosJue2_2 = (value ?? 0) * 25;
            _totalPos2 = _totalPosJue1_2 +
                _totalPosJue2_2 +
                _totalPosJue3_2 +
                _totalPosJue4_2;
            _totalFinal2 = _totalNeg2 - _totalPos2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantPosJue2_3 = value ?? 1;
            _totalPosJue2_3 = (value ?? 0) * 25;
            _totalPos3 = _totalPosJue1_3 +
                _totalPosJue2_3 +
                _totalPosJue3_3 +
                _totalPosJue4_3;
            _totalFinal3 = _totalNeg3 - _totalPos3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantPosJue2_4 = value ?? 1;
            _totalPosJue2_4 = (value ?? 0) * 25;
            _totalPos4 = _totalPosJue1_4 +
                _totalPosJue2_4 +
                _totalPosJue3_4 +
                _totalPosJue4_4;
            _totalFinal4 = _totalNeg4 - _totalPos4;
          });
        });
  }

  TableRow _tablePos3() {
    return _children(
        title: 'Positivas 3',
        value1: _cantPosJue3_1,
        cant1: _totalPosJue3_1,
        value2: _cantPosJue3_2,
        cant2: _totalPosJue3_2,
        value3: _cantPosJue3_3,
        cant3: _totalPosJue3_3,
        value4: _cantPosJue3_4,
        cant4: _totalPosJue3_4,
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantPosJue3_1 = value ?? 1;
            _totalPosJue3_1 = (value ?? 0) * 25;
            _totalPos1 = _totalPosJue1_1 +
                _totalPosJue2_1 +
                _totalPosJue3_1 +
                _totalPosJue4_1;
            _totalFinal1 = _totalNeg1 - _totalPos1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantPosJue3_2 = value ?? 1;
            _totalPosJue3_2 = (value ?? 0) * 25;
            _totalPos2 = _totalPosJue1_2 +
                _totalPosJue2_2 +
                _totalPosJue3_2 +
                _totalPosJue4_4;
            _totalFinal2 = _totalNeg2 - _totalPos2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantPosJue3_3 = value ?? 1;
            _totalPosJue3_3 = (value ?? 0) * 25;
            _totalPos3 = _totalPosJue1_3 +
                _totalPosJue2_3 +
                _totalPosJue3_3 +
                _totalPosJue4_3;
            _totalFinal3 = _totalNeg3 - _totalPos3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantPosJue3_4 = value ?? 1;
            _totalPosJue3_4 = (value ?? 0) * 25;
            _totalPos4 = _totalPosJue1_4 +
                _totalPosJue2_4 +
                _totalPosJue3_4 +
                _totalPosJue4_4;
            _totalFinal4 = _totalNeg4 - _totalPos4;
          });
        });
  }

  TableRow _tablePos4() {
    return _children(
        title: 'Positivas 4',
        value1: _cantPosJue4_1,
        cant1: _totalPosJue4_1,
        value2: _cantPosJue4_2,
        cant2: _totalPosJue4_2,
        value3: _cantPosJue4_3,
        cant3: _totalPosJue4_3,
        value4: _cantPosJue4_4,
        cant4: _totalPosJue4_4,
        color: Colors.grey.shade300,
        onChanged1: (value) {
          Logger().i(value);
          setState(() {
            _cantPosJue4_1 = value ?? 1;
            _totalPosJue4_1 = (value ?? 0) * 25;
            _totalPos1 = _totalPosJue1_1 +
                _totalPosJue2_1 +
                _totalPosJue3_1 +
                _totalPosJue4_1;
            _totalFinal1 = _totalNeg1 - _totalPos1;
          });
        },
        onChanged2: (value) {
          setState(() {
            _cantPosJue4_2 = value ?? 1;
            _totalPosJue4_2 = (value ?? 0) * 25;
            _totalPos2 = _totalPosJue1_2 +
                _totalPosJue2_2 +
                _totalPosJue3_2 +
                _totalPosJue4_2;
            _totalFinal2 = _totalNeg2 - _totalPos2;
          });
        },
        onChanged3: (value) {
          setState(() {
            _cantPosJue4_3 = value ?? 1;
            _totalPosJue4_3 = (value ?? 0) * 25;
            _totalPos3 = _totalPosJue1_3 +
                _totalPosJue2_3 +
                _totalPosJue3_3 +
                _totalPosJue4_3;
            _totalFinal3 = _totalNeg3 - _totalPos3;
          });
        },
        onChanged4: (value) {
          setState(() {
            _cantPosJue4_4 = value ?? 1;
            _totalPosJue4_4 = (value ?? 0) * 25;
            _totalPos4 = _totalPosJue1_4 +
                _totalPosJue2_4 +
                _totalPosJue3_4 +
                _totalPosJue4_4;
            _totalFinal4 = _totalNeg4 - _totalPos4;
          });
        });
  }

  TableRow _totalPos() {
    return TableRow(
        decoration: BoxDecoration(color: Colors.green.shade200),
        children: [
          _title('TOTAL'),
          _cell('$_totalPos1'),
          _cell('$_totalPos2'),
          _cell('$_totalPos3'),
          _cell('$_totalPos4'),
        ]);
  }

  TableRow _totalFinal() {
    return TableRow(
        decoration: BoxDecoration(color: Colors.lime.shade200),
        children: [
          _title('FINAL'),
          _cell('$_totalFinal1'),
          _cell('$_totalFinal2'),
          _cell('$_totalFinal3'),
          _cell('$_totalFinal4'),
        ]);
  }

  TableRow _children(
      {required String title,
      required int value1,
      required int cant1,
      required int value2,
      required int cant2,
      required int value3,
      required int cant3,
      required int value4,
      required int cant4,
      Color color = Colors.white,
      List<int> list = const [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
      void Function(int?)? onChanged1,
      void Function(int?)? onChanged2,
      void Function(int?)? onChanged3,
      void Function(int?)? onChanged4}) {
    return TableRow(
        decoration: BoxDecoration(
          color: color,
        ),
        children: [
          _title(title),
          _point(value1, cant1, list, onChanged1),
          _point(value2, cant2, list, onChanged2),
          _point(value3, cant3, list, onChanged3),
          _point(value4, cant4, list, onChanged4),
        ]);
  }

  Widget _point(int cantBazas, int valorBasas, List<int> list,
      void Function(int?)? onChanged) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _drop(cantBazas, list, onChanged),

        Text(
          "$valorBasas",
          style: TextStyle(fontSize: 18.5.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _textField(String hintText) {
    return TextField(
      style: TextStyle(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        //hintStyle: TextStyle(fontSize: 12.sp),
        hintText: hintText,
      ),
    );
  }

  Widget _title(String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(value, style: TextStyle(fontWeight: FontWeight.bold),),
    );
  }

  Widget _cell(String value) {
    return Text(value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontSize: 19.sp, fontWeight: FontWeight.bold));
  }

  Widget _drop(int value, List<int> list, void Function(int?)? onChanged) {
    return Container(
      height: 4.h,
      width: double.infinity,
      alignment: Alignment.center,
      child: DropdownButton<int>(
        value: value,
        items: list.map((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(
              "$value",
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }

  void _exit() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('¿Desea salir de la aplicación?'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Text('Aceptar')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancelar')),
              ],
            ));
  }

  void _openDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('¿Desea reiniciar la partida?'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        _cantNoBazas1 = 0;
                        _cantNoBazas2 = 0;
                        _cantNoBazas3 = 0;
                        _cantNoBazas4 = 0;

                        _totalNoBazas1 = 0;
                        _totalNoBazas2 = 0;
                        _totalNoBazas3 = 0;
                        _totalNoBazas4 = 0;

                        _cantCorazones1 = 0;
                        _cantCorazones2 = 0;
                        _cantCorazones3 = 0;
                        _cantCorazones4 = 0;

                        _totalCorazones1 = 0;
                        _totalCorazones2 = 0;
                        _totalCorazones3 = 0;
                        _totalCorazones4 = 0;

                        _cantJK1 = 0;
                        _cantJK2 = 0;
                        _cantJK3 = 0;
                        _cantJK4 = 0;

                        _totalJK1 = 0;
                        _totalJK2 = 0;
                        _totalJK3 = 0;
                        _totalJK4 = 0;

                        _cantQ1 = 0;
                        _cantQ2 = 0;
                        _cantQ3 = 0;
                        _cantQ4 = 0;

                        _totalQ1 = 0;
                        _totalQ2 = 0;
                        _totalQ3 = 0;
                        _totalQ4 = 0;

                        _cantK1 = 0;
                        _cantK2 = 0;
                        _cantK3 = 0;
                        _cantK4 = 0;

                        _totalk1 = 0;
                        _totalk2 = 0;
                        _totalk3 = 0;
                        _totalk4 = 0;

                        _cantUlt1 = 0;
                        _cantUlt2 = 0;
                        _cantUlt3 = 0;
                        _cantUlt4 = 0;

                        _tatolUlt1 = 0;
                        _tatolUlt2 = 0;
                        _tatolUlt3 = 0;
                        _tatolUlt4 = 0;

                        _totalNeg1 = 0;
                        _totalNeg2 = 0;
                        _totalNeg3 = 0;
                        _totalNeg4 = 0;

                        _cantPosJue1_1 = 0;
                        _cantPosJue1_2 = 0;
                        _cantPosJue1_3 = 0;
                        _cantPosJue1_4 = 0;

                        _totalPosJue1_1 = 0;
                        _totalPosJue1_2 = 0;
                        _totalPosJue1_3 = 0;
                        _totalPosJue1_4 = 0;

                        _cantPosJue2_1 = 0;
                        _cantPosJue2_2 = 0;
                        _cantPosJue2_3 = 0;
                        _cantPosJue2_4 = 0;

                        _totalPosJue2_1 = 0;
                        _totalPosJue2_2 = 0;
                        _totalPosJue2_3 = 0;
                        _totalPosJue2_4 = 0;

                        _cantPosJue3_1 = 0;
                        _cantPosJue3_2 = 0;
                        _cantPosJue3_3 = 0;
                        _cantPosJue3_4 = 0;

                        _totalPosJue3_1 = 0;
                        _totalPosJue3_2 = 0;
                        _totalPosJue3_3 = 0;
                        _totalPosJue3_4 = 0;

                        _cantPosJue4_1 = 0;
                        _cantPosJue4_2 = 0;
                        _cantPosJue4_3 = 0;
                        _cantPosJue4_4 = 0;

                        _totalPosJue4_1 = 0;
                        _totalPosJue4_2 = 0;
                        _totalPosJue4_3 = 0;
                        _totalPosJue4_4 = 0;

                        _totalPos1 = 0;
                        _totalPos2 = 0;
                        _totalPos3 = 0;
                        _totalPos4 = 0;

                        _totalFinal1 = 0;
                        _totalFinal2 = 0;
                        _totalFinal3 = 0;
                        _totalFinal4 = 0;
                      });
                    },
                    child: const Text('Aceptar')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancelar')),
              ],
            ));
  }
}

/*return Scaffold(
      appBar: CustomAppBar(
        title: S.current.registered,
        actions: [
          IconButton(
              onPressed: () => _getData(false), icon: const Icon(Icons.save))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => _getData(true),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: BlocListener<BaseCubit, BaseState>(listener:
                (context, state) {
              switch (state.status) {
                case BaseStatus.initial:
                  EasyLoading.dismiss();
                  break;
                case BaseStatus.loading:
                  EasyLoading.show(status: state.message);
                  break;
                case BaseStatus.loadingRefresh:
                  EasyLoading.dismiss();
                  break;
                case BaseStatus.success:
                  EasyLoading.dismiss();
                  break;
                case BaseStatus.failed:
                  EasyLoading.dismiss();
                  CustomHelperDialog.showAlertDialog(
                      context: context, message: state.message);
                  break;
              }
            }, child:
                BlocBuilder<BaseCubit, BaseState>(builder: (context, state) {
              final data = state.message;

              if (data.isNotEmpty) {
                return _viewData(data);
              } else {
                switch (state.status) {
                  case BaseStatus.success || BaseStatus.failed:
                    return CustomRefreshButton(
                        onPressed: () => _getData(false),
                        isLoading: state.status == BaseStatus.loading);
                  default:
                    return Container();
                }
              }
            })),
          ),
        ),
      ),
    );*/
