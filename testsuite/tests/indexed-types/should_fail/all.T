setTestOpts(only_compiler_types(['ghc']))
setTestOpts(omit_ways(['optasm']))

test('SimpleFail1a', normal, compile_fail, [''])
test('SimpleFail1b', normal, compile_fail, [''])
test('SimpleFail2a', normal, compile_fail, [''])
test('SimpleFail2b', normal, compile_fail, [''])
test('SimpleFail3a', normal, compile_fail, [''])
test('SimpleFail4', normal, compile_fail, [''])
test('SimpleFail5a', normal, compile_fail, [''])
test('SimpleFail5b', normal, compile_fail, [''])
test('SimpleFail6', normal, compile_fail, [''])
test('SimpleFail7', normal, compile_fail, [''])
test('SimpleFail8', normal, compile_fail, [''])
test('SimpleFail9', normal, compile, [''])
test('SimpleFail10', normal, compile, [''])
test('SimpleFail11a', normal, compile_fail, [''])
test('SimpleFail11b', normal, compile_fail, [''])
test('SimpleFail11c', normal, compile_fail, [''])
test('SimpleFail11d', normal, compile_fail, [''])
test('SimpleFail12', normal, compile_fail, [''])
test('SimpleFail13', normal, compile_fail, [''])
test('SimpleFail14', normal, compile_fail, [''])
test('SimpleFail15', normal, compile_fail, [''])
test('SimpleFail16', normal, compile_fail, [''])
test('TyFamArity1', normal, compile_fail, [''])
test('TyFamArity2', normal, compile_fail, [''])
test('TyFamUndec', normal, compile_fail, [''])

test('NotRelaxedExamples', normal, compile_fail, [''])
test('NonLinearSigErr', normal, compile, [''])

test('GADTwrong1', normal, compile_fail, [''])

test('Over',
     extra_clean(['OverA.hi', 'OverA.o',
                  'OverB.hi', 'OverB.o',
                  'OverC.hi', 'OverC.o']),
     multimod_compile_fail,
     ['OverD', '-no-hs-main -c -v0'])

test('SkolemOccursLoop', expect_fail, compile_fail, [''])

test('T2334A', normal, compile_fail, [''])
test('T1900', normal, compile_fail, [''])
test('T2157', normal, compile_fail, [''])
test('T2203a', normal, compile_fail, [''])
test('T2627b', normal, compile_fail, [''])
test('T2693', normal, compile_fail, [''])
test('T2888', normal, compile_fail, [''])
test('T3092', normal, compile_fail, [''])
test('NoMatchErr', normal, compile_fail, [''])
test('T2677', normal, compile_fail, [''])
test('T4099', normal, compile_fail, [''])
test('T4272', normal, compile_fail, [''])
test('T4246', normal, compile_fail, [''])
test('T4093a', normal, compile_fail, [''])
test('T4093b', normal, compile_fail, [''])
test('T3330a', normal, compile_fail, [''])
test('T3330b', normal, compile_fail, [''])
test('T3330c', normal, compile_fail, [''])
test('T4179', normal, compile_fail, [''])
test('T4254', normal, compile, [''])
test('T2239', normal, compile, [''])
test('T3440', normal, compile_fail, [''])
test('T4485', normal, compile_fail, [''])
test('T4174', normal, compile_fail, [''])
test('DerivUnsatFam', when(compiler_lt('ghc', '7.1'), expect_fail), compile_fail, [''])
test('T2664', normal, compile_fail, [''])
test('T2664a', normal, compile, [''])
test('T2544', normal, compile_fail, [''])
test('T1897b', normal, compile_fail, [''])
test('T5439', normal, compile_fail, [''])
test('T5515', normal, compile_fail, [''])
test('T5934', normal, compile_fail, [''])
test('T6123', normal, compile_fail, [''])
test('ExtraTcsUntch', normal, compile_fail, [''])
test('T7010', normal, compile_fail, [''])

test('Overlap3', normal, compile_fail, [''])
test('Overlap4', normal, compile_fail, [''])
test('Overlap5', normal, compile_fail, [''])
test('Overlap6', normal, compile_fail, [''])
test('Overlap7', normal, compile_fail, [''])
test('Overlap9', normal, compile_fail, [''])
test('Overlap10', normal, compile_fail, [''])
test('Overlap11', normal, compile_fail, [''])
test('Overlap15', normal, compile_fail, [''])
test('T7194', normal, compile_fail, [''])
test('T7354', normal, compile_fail, [''])
test('T7354a',
     extra_clean(['T7354b.o', 'T7354b.hi']),
     run_command,
     ['$MAKE -s --no-print-directory T7354a'])
test('T7536', normal, compile_fail, [''])

test('T7729', normal, compile_fail, [''])
test('T7729a', normal, compile_fail, [''])
test('T7786', normal, compile_fail, [''])

test('NoGood', normal, compile_fail, [''])
test('T7967', normal, compile_fail, [''])

test('T7938', normal, compile_fail, [''])

test('ClosedFam3', extra_clean(['ClosedFam3.o-boot', 'ClosedFam3.hi-boot']),
     multimod_compile_fail, ['ClosedFam3', '-v0'])
test('ClosedFam4', normal, compile_fail, [''])
test('T8155', normal, compile_fail, [''])
test('T8227',
     extra_clean(['T8227a.o', 'T8227a.hi']),
     run_command,
     ['$MAKE -s --no-print-directory T8227'])
test('T8129',
     normal,
     run_command,
     ['$MAKE -s --no-print-directory T8129'])

test('T8368', normal, compile_fail, [''])
test('T8368a', normal, compile_fail, [''])
test('T8518', normal, compile_fail, [''])
test('T9036', normal, compile_fail, [''])
test('T9167', normal, compile_fail, [''])
test('T9171', normal, compile_fail, [''])
test('T9097', normal, compile_fail, [''])
test('T9160', normal, compile_fail, [''])
test('T9357', normal, compile_fail, [''])
test('T9371', normal, compile_fail, [''])
test('T9433', normal, compile_fail, [''])
test('BadSock', normal, compile_fail, [''])
test('T9580', normal, multimod_compile_fail, ['T9580', ''])
test('T9662', normal, compile_fail, [''])
test('T7862', normal, compile, [''])
test('T9896', normal, compile_fail, [''])
test('T6088', normal, compile_fail, [''])
test('T7788', normal, compile_fail, [''])
test('T8550', normal, compile_fail, [''])
test('T9554', normal, compile_fail, [''])
