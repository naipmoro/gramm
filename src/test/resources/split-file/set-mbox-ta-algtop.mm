$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        Structure builders
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Structure builder restriction operator
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    $d x .0. $.  $d x A $.  $d x B $.  $d x R $.  $d x S $.
    ress0g.s $e |- S = ( R |`s A ) $.
    ress0g.b $e |- B = ( Base ` R ) $.
    ress0g.0 $e |- .0. = ( 0g ` R ) $.
    $( ` 0g ` is unaffected by restriction.  This is a bit more generic than
       ~ submnd0 (Contributed by Thierry Arnoux, 23-Oct-2017.) $)
    ress0g $p |- ( ( R e. Mnd /\ .0. e. A /\ A C_ B ) -> .0. = ( 0g ` S ) ) $=
      ( vx cmnd wcel wss w3a cplusg cfv cbs wceq cvv co syl2anc eqeltri sylancl
      ressbas2 3ad2ant3 simp3 fvex ssexg eqid ressplusg syl simp2 simpl1 sselda
      cv wa mndlid mndrid grpidd ) CJKZEAKZABLZMZIACNOZDEVAUSADPOQUTABDCFGUCUDV
      BARKZVCDNOQVBVABRKVDUSUTVAUEZBCPORGCPUFUAABRUGUBAVCCDRFVCUHZUIUJUSUTVAUKV
      BIUNZAKZUOZUSVGBKZEVGVCSVGQUSUTVAVHULZVBABVGVEUMZBVCCVGEGVFHUPTVIUSVJVGEV
      CSVGQVKVLBVCCVGEGVFHUQTUR $.
  $}

  ${
    $d x y .+^ $.  $d x y A $.  $d x y B $.  $d x y H $.
    ressplusf.1 $e |- B = ( Base ` G ) $.
    ressplusf.2 $e |- H = ( G |`s A ) $.
    ressplusf.3 $e |- .+^ = ( +g ` G ) $.
    ressplusf.4 $e |- .+^ Fn ( B X. B ) $.
    ressplusf.5 $e |- A C_ B $.
    $( The group operation function ` +f ` of a structure's restriction is the
       operation function's restriction to the new base.  (Contributed by
       Thierry Arnoux, 26-Mar-2017.) $)
    ressplusf $p |- ( +f ` H ) = ( .+^ |` ( A X. A ) ) $=
      ( vx vy cv cmpt2 cxp cres cfv wceq cbs cvv co cplusf wss resmpt2 wfn fnov
      mp2an mpbi reseq1i ressbas2 ax-mp cplusg wcel fvex eqeltri eqid ressplusg
      ssexi eqtri plusffval 3eqtr4ri ) KLBBKMLMCUAZNZAAOZPZKLAAVBNZCVDPEUBQZABU
      CZVHVEVFRJJKLBBAAVBUDUGCVCVDCBBOUECVCRIKLBBCUFUHUIKLACVGEVHAESQRJABEDGFUJ
      UKCDULQZEULQZHATUMVIVJRABBDSQTFDSUNUOJURAVIDETGVIUPUQUKUSVGUPUTVA $.
  $}

  ${
    $d x .0. $.  $d x A $.  $d x B $.  $d x G $.  $d x H $.
    ressnm.1 $e |- H = ( G |`s A ) $.
    ressnm.2 $e |- B = ( Base ` G ) $.
    ressnm.3 $e |- .0. = ( 0g ` G ) $.
    ressnm.4 $e |- N = ( norm ` G ) $.
    $( The norm in a restricted structure.  (Contributed by Thierry Arnoux,
       8-Oct-2017.) $)
    ressnm $p |- ( ( G e. Mnd /\ .0. e. A /\ A C_ B )
                   -> ( N |` A ) = ( norm ` H ) ) $=
      ( vx wcel cds cfv cmpt cbs wceq 3ad2ant3 cvv eqid cmnd wss w3a cv co cres
      c0g cnm ressbas2 fvex eqeltri ssex ressds eqidd ress0g oveq123d mpteq12dv
      syl nmfval reseq1i resmpt syl5eq a1i 3eqtr4d ) CUALZFALZABUBZUCZKAKUDZFCM
      NZUEZOZKDPNZVIDUGNZDMNZUEZOZEAUFZDUHNZVHKAVKVMVPVGVEAVMQVFABDCGHUIRVHVIVI
      FVNVJVOVGVEVJVOQZVFVGASLVTABBCPNSHCPUJUKULAVJCDSGVJTZUMURRVHVIUNABCDFGHIU
      OUPUQVGVEVRVLQVFVGVRKBVKOZAUFVLEWBAKVJECBFJHIWAUSUTKBAVKVAVBRVSVQQVHKVOVS
      DVMVNVSTVMTVNTVOTUSVCVD $.
  $}

  ${
    $d x y B $.  $d f x y K $.  $d f x y L $.  $d f x y ph $.
    abvpropd2.1 $e |- ( ph -> ( Base ` K ) = ( Base ` L ) ) $.
    abvpropd2.2 $e |- ( ph -> ( +g ` K ) = ( +g ` L ) ) $.
    abvpropd2.3 $e |- ( ph -> ( .r ` K ) = ( .r ` L ) ) $.
    $( Weaker version of ~ abvpropd .  (Contributed by Thierry Arnoux,
       8-Nov-2017.) $)
    abvpropd2 $p |- ( ph -> ( AbsVal ` K ) = ( AbsVal ` L ) ) $=
      ( vx vy cbs cfv eqidd cv wcel wa cplusg proplem3 cmulr abvpropd ) AGHBIJZ
      BCASKDAGLSMHLSMNZGHBOJCOJEPATGHBQJCQJFPR $.
  $}


$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Posets
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    $d x y F $.
    $( A Toset is a Poset.  (Contributed by Thierry Arnoux, 20-Jan-2018.) $)
    tospos $p |- ( F e. Toset -> F e. Poset ) $=
      ( vx vy ctos wcel cpo cv cple cfv wbr wo cbs wral eqid istos simplbi ) AD
      EAFEBGZCGZAHIZJRQSJKCALIZMBTMBCTASTNSNOP $.

    $d x y z A $.  $d x y z F $.
    $( The restriction of a Poset is a Poset.  (Contributed by Thierry Arnoux,
       20-Jan-2018.) $)
    resspos $p |- ( ( F e. Poset /\ A e. V ) -> ( F |`s A ) e. Poset ) $=
      ( vx vy vz cpo wcel wa cress cvv cv cple cfv wbr wi wral eqid ssralv breq
      co wceq w3a cbs ovex a1i wss ressbas inss2 syl6eqssr adantl ispos simprbi
      cin adantr ralimdv syld sylc wb ressle anbi12d imbi12d 3anbi123d 2ralbidv
      imbi1d ralbidv syl mpbid sylanbrc ) BGHZACHZIZBAJUAZKHZDLZVOVMMNZOZVOELZV
      POZVRVOVPOZIZVOVRUBZPZVSVRFLZVPOZIZVOWDVPOZPZUCZFVMUDNZQZEWJQDWJQZVMGHVNV
      LBAJUEUFVLVOVOBMNZOZVOVRWMOZVRVOWMOZIZWBPZWOVRWDWMOZIZVOWDWMOZPZUCZFWJQZE
      WJQZDWJQZWLVLWJBUDNZUGZXCFXGQZEXGQZDXGQZXFVKXHVJVKWJAXGUNXGAXGVMCBVMRZXGR
      ZUHAXGUIUJUKVJXKVKVJBKHXKDEFXGBWMXMWMRZULUMUOXHXKXEDXGQXFXHXJXEDXGXHXJXDE
      XGQXEXHXIXDEXGXCFWJXGSUPXDEWJXGSUQUPXEDWJXGSUQURVLWMVPUBZXFWLUSVKXOVJABWM
      CVMXLXNUTUKXOXDWKDEWJWJXOXCWIFWJXOWNVQWRWCXBWHVOVOWMVPTXOWQWAWBXOWOVSWPVT
      VOVRWMVPTZVRVOWMVPTVAVEXOWTWFXAWGXOWOVSWSWEXPVRWDWMVPTVAVOWDWMVPTVBVCVFVD
      VGVHDEFWJVMVPWJRVPRULVI $.

    $d x y V $.
    $( The restriction of a Toset is a Toset.  (Contributed by Thierry Arnoux,
       20-Jan-2018.) $)
    resstos $p |- ( ( F e. Toset /\ A e. V ) -> ( F |`s A ) e. Toset ) $=
      ( vx vy ctos wcel cpo cv cple cfv wbr wo cbs wral eqid adantl istos breqd
      ssralv wa cress co tospos resspos sylan wss cin ressbas syl6eqssr simprbi
      inss2 adantr ralimdv syld sylc wb ressle orbi12d 2ralbidv mpbid sylanbrc
      ) BFGZACGZUAZBAUBUCZHGZDIZEIZVFJKZLZVIVHVJLZMZEVFNKZODVNOZVFFGVCBHGZVDVGB
      UDABCUEUFVEVHVIBJKZLZVIVHVQLZMZEVNOZDVNOZVOVEVNBNKZUGZVTEWCOZDWCOZWBVDWDV
      CVDVNAWCUHWCAWCVFCBVFPZWCPZUIAWCULUJQVCWFVDVCVPWFDEWCBVQWHVQPZRUKUMWDWFWE
      DVNOWBWEDVNWCTWDWEWADVNVTEVNWCTUNUOUPVDWBVOUQVCVDVTVMDEVNVNVDVRVKVSVLVDVQ
      VJVHVIABVQCVFWGWIURZSVDVQVJVIVHWJSUSUTQVADEVNVFVJVNPVJPRVB $.
  $}

  ${
    $d x y B $.  $d x y X $.  $d y Y $.  $d x y .<_ $.
    tleile.b $e |- B = ( Base ` K ) $.
    tleile.l $e |- .<_ = ( le ` K ) $.
    $( In a Toset, two elements must compare.  (Contributed by Thierry Arnoux,
       11-Feb-2018.) $)
    tleile $p |- ( ( K e. Toset /\ X e. B /\ Y e. B )
      -> ( X .<_ Y \/ Y .<_ X ) ) $=
      ( vx vy ctos wcel w3a cv wbr wo wral wceq breq1 breq2 orbi12d simp2 simp3
      cpo istos simprbi 3ad2ant1 wa rspc2v imp syl21anc ) BJKZDAKZEAKZLULUMHMZI
      MZCNZUOUNCNZOZIAPHAPZDECNZEDCNZOZUKULUMUAUKULUMUBUKULUSUMUKBUCKUSHIABCFGU
      DUEUFULUMUGUSVBURVBDUOCNZUODCNZOHIDEAAUNDQUPVCUQVDUNDUOCRUNDUOCSTUOEQVCUT
      VDVAUOEDCSUOEDCRTUHUIUJ $.

    tltnle.s $e |- .< = ( lt ` K ) $.
    $( In a Toset, less-than is equivalent to not inverse less-than-or-equal
       see ~ pltnle .  (Contributed by Thierry Arnoux, 11-Feb-2018.) $)
    tltnle $p |- ( ( K e. Toset /\ X e. B /\ Y e. B )
      -> ( X .< Y <-> -. Y .<_ X ) ) $=
      ( ctos wcel w3a wbr wn wa cpo wb tospos pltval3 syl3an1 wo tleile syl6rbb
      ibar pm5.61 syl bitrd ) CJKZEAKZFAKZLZEFBMZEFDMZFEDMZNZOZUOUHCPKUIUJULUPQ
      CRABCDEFGHISTUKUMUNUAZUPUOQACDEFGHUBUQUOUQUOOUPUQUOUDUMUNUEUCUFUG $.
  $}

  ${
    $d a b c d .< $.  $d a b c d A $.  $d a b c d B $.  $d a b c K $.
    $d a b c ph $.
    toslub.b $e |- B = ( Base ` K ) $.
    toslub.l $e |- .< = ( lt ` K ) $.
    toslub.1 $e |- ( ph -> K e. Toset ) $.
    toslub.2 $e |- ( ph -> A C_ B ) $.
    toslub.3 $e |- ( ph -> E. a e. B
       ( A. b e. A -. a .< b /\ A. b e. B ( b .< a -> E. d e. A b .< d ) ) ) $.
    $( In a toset, the lowest upper bound ` lub ` , defined for partial orders
       is the supremum, ` sup ( A , B , .< ) ` , defined for total orders, if
       this supremum exists (these are the set.mm definition: lowest upper
       bound and supremum are normally synonymous) Note that the two
       definitions do not have the same value when there is no such supremum.
       In that case, ` sup ( A , B , .< ) ` will take the value ` (/) ` , but
       ` ( ( lub `` K ) `` A ) ` takes the value ` ( Undef `` B ) ` ,
       therefore, we restrict this theorem only to the case where this supremum
       exists, which is expressed by the last assumption.  (Contributed by
       Thierry Arnoux, 15-Feb-2018.) $)
    toslub $p |- ( ph -> ( ( lub ` K ) ` A ) = sup ( A , B , .< ) ) $=
      ( vc wbr wral wa wcel wn wb club cfv cv cple crio csup ctos wss wceq eqid
      lubval syl2anc wrex ad2antrr simplr adantr sselda tltnle syl3anc ralbidva
      wi con2bid simpll simpr sseldd syl3an1 3expa syl21anc breq2 notbid ralnex
      cbvralv bitri syl6bb adantlr imbi12d con34b syl6bbr breq1 rexbidv anbi12d
      syl riotabidva wor cid cres tosso ibi simpld supval2 eqtr4d eqtrd ) ABEUA
      UBZUBZGUCZFUCZEUDUBZOZGBPZWONUCZWQOZGBPZWPWTWQOZVAZNCPZQZFCUEZBCDUFZAEUGR
      ZBCUHZWNXGUIKLFGNUGCBWMEWQIWQUJZWMUJUKULAXGWPWODOZSZGBPZWOWPDOZWOHUCZDOZH
      BUMZVAZGCPZQZFCUEXHAXFYAFCAWPCRZQZWSXNXEXTYCWRXMGBYCWOBRZQZXLWRYEXIYBWOCR
      ZXLWRSTAXIYBYDKUNAYBYDUOYCBCWOAXJYBLUPUQCDEWQWPWOIXKJURUSVBUTYCXEWTWPDOZW
      TXPDOZHBUMZVAZNCPXTYCXDYJNCYCWTCRZQZXDYISZYGSZVAYJYLXBYMXCYNAYKXBYMTYBAYK
      QZXBWTWODOZSZGBPZYMYOXAYQGBYOYDQZAYKYFXAYQTAYKYDVCZAYKYDUOYSBCWOYSAXJYTLW
      BYOYDVDVEYOYFQYPXAAYKYFYPXASTZAXIYKYFUUAKCDEWQWTWOIXKJURVFVGVBVHUTYRYHSZH
      BPYMYQUUBGHBWOXPUIYPYHWOXPWTDVIVJVLYHHBVKVMVNVOYLYGXCYLXIYKYBYGXCSTAXIYBY
      KKUNYCYKVDAYBYKUOCDEWQWTWPIXKJURUSVBVPYGYIVQVRUTXSYJGNCWOWTUIZXOYGXRYIWOW
      TWPDVSUUCXQYHHBWOWTXPDVSVTVPVLVRWAWCAFGHCBDAXICDWDZKXIUUDWECWFWQUHZXIUUDU
      UEQCDEWQUGIXKJWGWHWIWBMWJWKWL $.
  $}


  ${
    $d a b c d .< $.  $d a b c d A $.  $d a b c d B $.  $d a b c K $.
    $d a b c ph $.
    tosglb.b $e |- B = ( Base ` K ) $.
    tosglb.l $e |- .< = ( lt ` K ) $.
    tosglb.1 $e |- ( ph -> K e. Toset ) $.
    tosglb.2 $e |- ( ph -> A C_ B ) $.
    tosglb.3 $e |- ( ph -> E. a e. B
       ( A. b e. A -. b .< a /\ A. b e. B ( a .< b -> E. d e. A d .< b ) ) ) $.
    $( Same theorem as ~ toslub , for infinimum.  (Contributed by Thierry
       Arnoux, 17-Feb-2018.) $)
    tosglb $p |- ( ph -> ( ( glb ` K ) ` A ) = sup ( A , B , `' .< ) ) $=
      ( wbr wral wa wcel wn wb cvv vc cglb cfv cv cple crio ccnv csup ctos wceq
      wss eqid glbval syl2anc wrex ad2antrr adantr sselda simplr tltnle syl3anc
      wi con2bid ralbidva simpll syl simpr sseldd syl3an1 3com23 3expa syl21anc
      breq1 notbid cbvralv ralnex syl6bb adantlr imbi12d con34b syl6bbr rexbidv
      bitri breq2 anbi12d vex brcnvg mp2an notbii ralbii rexbii imbi12i anbi12i
      riotabidva wor cid cres tosso ibi simpld cnvso sylib sylibr supval2 eqtrd
      eqtr4d ) ABEUBUCZUCZFUDZGUDZEUEUCZNZGBOZUAUDZXJXKNZGBOZXNXIXKNZVBZUACOZPZ
      FCUFZBCDUGZUHZAEUIQZBCUKZXHYAUJKLFGUAUICBXGEXKIXKULZXGULUMUNAYAXIXJYBNZRZ
      GBOZXJXIYBNZXJHUDZYBNZHBUOZVBZGCOZPZFCUFYCAXTYPFCAXICQZPZXTXJXIDNZRZGBOZX
      IXJDNZYKXJDNZHBUOZVBZGCOZPZYPYRXMUUAXSUUFYRXLYTGBYRXJBQZPZYSXLUUIYDXJCQZY
      QYSXLRSAYDYQUUHKUPYRBCXJAYEYQLUQURAYQUUHUSCDEXKXJXIIYFJUTVAVCVDYRXSXIXNDN
      ZYKXNDNZHBUOZVBZUACOUUFYRXRUUNUACYRXNCQZPZXRUUMRZUUKRZVBUUNUUPXPUUQXQUURA
      UUOXPUUQSYQAUUOPZXPXJXNDNZRZGBOZUUQUUSXOUVAGBUUSUUHPZAUUOUUJXOUVASAUUOUUH
      VEZAUUOUUHUSUVCBCXJUVCAYEUVDLVFUUSUUHVGVHUUSUUJPUUTXOAUUOUUJUUTXORSZAUUJU
      UOUVEAYDUUJUUOUVEKCDEXKXJXNIYFJUTVIVJVKVCVLVDUVBUULRZHBOUUQUVAUVFGHBXJYKU
      JUUTUULXJYKXNDVMVNVOUULHBVPWCVQVRUUPUUKXQUUPYDYQUUOUUKXQRSAYDYQUUOKUPAYQU
      UOUSYRUUOVGCDEXKXIXNIYFJUTVAVCVSUUKUUMVTWAVDUUEUUNGUACXJXNUJZUUBUUKUUDUUM
      XJXNXIDWDUVGUUCUULHBXJXNYKDWDWBVSVOWAWEYIUUAYOUUFYHYTGBYGYSXITQZXJTQZYGYS
      SFWFZGWFZXIXJTTDWGWHWIWJYNUUEGCYJUUBYMUUDUVIUVHYJUUBSUVKUVJXJXITTDWGWHYLU
      UCHBUVIYKTQYLUUCSUVKHWFXJYKTTDWGWHWKWLWJWMZWAWNAFGHCBYBAYDCYBWOZKYDCDWOZU
      VMYDUVNWPCWQXKUKZYDUVNUVOPCDEXKUIIYFJWRWSWTCDXAXBVFAUUGFCUOYPFCUOMYPUUGFC
      UVLWKXCXDXFXE $.
  $}


$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Complete lattices
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    clatp0ex.b $e |- B = ( Base ` W ) $.
    clatp0ex.0 $e |- .0. = ( 0. ` W ) $.
    $( The poset zero of a complete lattice belongs to its base.  (Contributed
       by Thierry Arnoux, 17-Feb-2018.) $)
    clatp0ex $p |- ( W e. CLat -> .0. e. B ) $=
      ( ccla wcel cglb cfv eqid p0val wss ssid clatglbcl mpan2 eqeltrd ) BFGZCA
      BHIZIZAARBFCDRJZEKQAALSAGAMAARBDTNOP $.
  $}

  ${
    clatp1ex.b $e |- B = ( Base ` W ) $.
    clatp1ex.1 $e |- .1. = ( 1. ` W ) $.
    $( The poset one of a complete lattice belongs to its base.  (Contributed
       by Thierry Arnoux, 17-Feb-2018.) $)
    clatp1ex $p |- ( W e. CLat -> .1. e. B ) $=
      ( ccla wcel club cfv eqid p1val wss ssid clatlubcl mpan2 eqeltrd ) CFGZBA
      CHIZIZAARBCFDRJZEKQAALSAGAMAARCDTNOP $.
  $}


$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Extended reals Structure - misc additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $( Assume the scalar component of the extended real structure is the field of
     the real numbers (this has to be defined in the main body of set.mm)
     (Contributed by Thierry Arnoux, 22-Oct-2017.) $)
  ax-xrssca $a |- ( CCfld |`s RR ) = ( Scalar ` RR*s ) $.

  $( Assume the scalar product of the extended real structure is the extended
     real number multiplication operation (this has to be defined in the main
     body of set.mm) (Contributed by Thierry Arnoux, 22-Oct-2017.) $)
  ax-xrsvsca $a |- *e = ( .s ` RR*s ) $.

  $( The zero of the extended real numbers.  The extended real is not a group,
     as its addition is not associative.  (cf. ~ xaddass and ~ df-xrs ),
     however it has a zero.  (Contributed by Thierry Arnoux, 13-Jun-2017.) $)
  xrs0 $p |- 0 = ( 0g ` RR*s ) $=
    ( cc0 cxrs c0g cfv wceq wtru cxr cxad cbs xrsbas a1i cplusg xrsadd wcel 0xr
    vx cv co xaddid2 adantl xaddid1 grpidd trud ) ABCDEFPGHBAGBIDEFJKHBLDEFMKAG
    NFOKPQZGNZAUDHRUDEFUDSTUEUDAHRUDEFUDUATUBUC $.

  $( The "strictly less than" relation for the extended real structure.
     (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
  xrslt $p |- < = ( lt ` RR*s ) $=
    ( clt cle cid cdif cxrs cplt cfv dflt2 cvv wcel wceq xrsex xrsle eqid ax-mp
    pltfval eqtr4i ) ABCDZEFGZHEIJSRKLISEBMSNPOQ $.

  ${
    $d x B $.
    $( The inversion operation in the extended real numbers.  The extended real
       is not a group, as its addition is not associative.  (cf. ~ xaddass and
       ~ df-xrs ), however it has an inversion operation.  (Contributed by
       Thierry Arnoux, 13-Jun-2017.) $)
    xrsinvgval $p |- ( B e. RR* -> ( ( invg ` RR*s ) ` B ) = -e B ) $=
      ( vx cxr wcel cxrs cminusg cfv cxad cc0 wceq crio cxne xrsbas xrsadd xrs0
      cv co eqid grpinvval xnegcl wb xaddeq0 ancoms riota5 eqtrd ) ACDZAEFGZGBP
      ZAHQIJZBCKALZBCHEUGAIMNOUGRSUFUIBCUJATUHCDUFUIUHUJJUAUHAUBUCUDUE $.
  $}

  ${
    $d n A $.  $d m n x y B $.
    $( The "multiple" function in the extended real numbers structure.
       (Contributed by Thierry Arnoux, 14-Jun-2017.) $)
    xrsmulgzz $p |- ( ( A e. ZZ /\ B e. RR* ) ->
                                        ( A ( .g ` RR*s ) B ) = ( A *e B ) ) $=
      ( cxr wcel cxrs co cxmu wceq c1 oveq1 eqeq12d xrsbas wa cxad simpr oveq1d
      cc0 adantl cr a1i vn vm vx vy cz cmg cv cneg caddc xrs0 eqid mulg0 xmul02
      cfv eqtr4d cn0 cn simpll xrsadd mulgnnp1 syl2anc simpl eqtrd 0p1e1 syl6eq
      xaddid2 mulg1 3eqtr4rd elnn0 sylib mpjaodan adantr cle wbr nn0ssre ressxr
      wo sstri sseldi nn0ge0 ad2antlr 1re rexri 0le1 xadddi2r syl221anc xmulid2
      rexadd syl oveq2d 3eqtr3d 3eqtr4d exp31 cxne xnegeq cminusg mulgnegnn cvv
      ancoms xrsex wss ssid simp2 simp3 xaddcld mulgnnsubcl 3anidm12 xrsinvgval
      w3a nnssre sseli rexneg xmulneg1 eqtr3d zindd impcom ) BCDZAUEDABEUFUNZFZ
      ABGFZHZUAUGZBXRFZYBBGFZHQBXRFZQBGFZHUBUGZBXRFZYGBGFZHZYGUHZBXRFZYKBGFZHZY
      GIUIFZBXRFZYOBGFZHZYAXQUAUBAYBQHYCYEYDYFYBQBXRJYBQBGJKYBYGHYCYHYDYIYBYGBX
      RJYBYGBGJKYBYOHYCYPYDYQYBYOBXRJYBYOBGJKYBYKHYCYLYDYMYBYKBXRJYBYKBGJKYBAHY
      CXSYDXTYBABXRJYBABGJKXQYEQYFCXREBQLUJXRUKZULZBUMUOXQYGUPDZYJYRXQUUAMZYJMZ
      YHBNFZYIBNFZYPYQUUCYHYIBNUUBYJOPUUBYPUUDHZYJUUBYGUQDZUUFYGQHZUUBUUGMUUGXQ
      UUFUUBUUGOXQUUAUUGURCNXREYGBLYSUSUTVAUUBUUHMUUHXQUUFUUBUUHOXQUUAUUHURUUHX
      QMZQBNFZBUUDYPXQUUJBHUUHBVFRUUIYHQBNUUIYHYEQUUIYGQBXRUUHXQVBZPXQYEQHUUHYT
      RVCPUUIYPIBXRFZBUUIYOIBXRUUIYOQIUIFIUUIYGQIUIUUKPVDVEPXQUULBHUUHCXREBLYSV
      GRVCVHVAUUBUUAUUGUUHVQXQUUAOZYGVIVJVKVLUUCYGINFZBGFZYIIBGFZNFZYQUUEUUCYGC
      DZQYGVMVNZICDZQIVMVNZXQUUOUUQHUUCUPCYGUPSCVOVPVRUUBUUAYJUUMVLZVSUUAUUSXQY
      JYGVTWAUUTUUCIWBWCTUVAUUCWDTXQUUAYJURZYGIBWEWFUUCUUNYOBGUUCYGSDZISDZUUNYO
      HUUCUPSYGVOUVBVSUVEUUCWBTYGIWHVAPUUCUUPBYINUUCXQUUPBHUVCBWGWIWJWKWLWMXQUU
      GYJYNXQUUGMZYJMYHWNZYIWNZYLYMYJUVGUVHHUVFYHYIWORUVFYLUVGHYJUVFYLYHEWPUNZU
      NZUVGUUGXQYLUVJHCXREUVIYGBLYSUVIUKWQWSUVFYHCDZUVJUVGHUUGXQUVKUUGXQUVKUUGU
      CUDCNCXREYGWRBLYSUSEWRDUUGWTTCCXAUUGCXBTUUGUCUGZCDZUDUGZCDZXIUVLUVNUUGUVM
      UVOXCUUGUVMUVOXDXEXFXGWSYHXHWIVCVLUVFYMUVHHYJUVFYGWNZBGFZYMUVHUVFUVPYKBGU
      VFUVDUVPYKHUUGUVDXQUQSYGXJXKRYGXLWIPUVFUURXQUVQUVHHUVFUQCYGUQSCXJVPVRXQUU
      GOVSXQUUGVBYGBXMVAXNVLWLWMXOXP $.
  $}

  ${
    $d x y z $.
    $( The extended real numbers form a toset.  (Contributed by Thierry Arnoux,
       15-Feb-2018.) $)
    xrstos $p |- RR*s e. Toset $=
      ( vx vy vz cxrs ctos wcel cpo cv cle wbr wo cxr wral cvv wa rgen2a xrsbas
      wi xrsle mpbir2an wceq w3a xrleid ad2antrr xrletri3 biimprd adantr xrletr
      xrsex 3expa 3jca ralrimiva ispos xrletri istos ) DEFDGFZAHZBHZIJZURUQIJZK
      ZBLMALMUPDNFUQUQIJZUSUTOZUQURUAZRZUSURCHZIJOUQVFIJRZUBZCLMZBLMALMUIVIABLU
      QLFZURLFZOZVHCLVLVFLFZOVBVEVGVJVBVKVMUQUCUDVLVEVMVLVDVCUQURUEUFUGVJVKVMVG
      UQURVFUHUJUKULPABCLDIQSUMTVAABLUQURUNPABLDIQSUOT $.
  $}

  ${
    $d a b c x $.
    $( The extended real numbers form a complete lattice.  (Contributed by
       Thierry Arnoux, 15-Feb-2018.) $)
    xrsclat $p |- RR*s e. CLat $=
      ( vx va vb vc cxrs ccla wcel cpo cxr wss club cfv xrstos clt xrsbas xrslt
      cv csup eqeltrd eqid cglb wa wi wal ctos tospos ax-mp a1i xrsupss supxrcl
      id toslub ccnv xrinfmss tosglb infmxrcl jca ax-gen isclat mpbir2an ) EFGE
      HGZAQZIJZVBEKLZLZIGZVBEUALZLZIGZUBUCZAUDEUEGZVAMEUFUGVJAVCVFVIVCVEVBINRIV
      CVBINEBCDOPVKVCMUHZVCUKZBCDVBUIULVBUJSVCVHVBINUMRIVCVBINEBCDOPVLVMBCDVBUN
      UOVBUPSUQURIVDVGEAOVDTVGTUSUT $.
  $}

  ${
    $d x y z $.
    $( The poset 0 of the extended real numbers is minus infinity.
       (Contributed by Thierry Arnoux, 18-Feb-2018.) $)
    xrsp0 $p |- -oo = ( 0. ` RR*s ) $=
      ( vx vy vz cxrs cp0 cfv cxr cglb clt ccnv csup cmnf cvv wcel xrsex xrsbas
      wceq eqid p0val ax-mp wss ssid xrslt xrstos a1i id xrinfmss tosglb xrinfm
      ctos 3eqtrri ) DEFZGDHFZFZGGIJKZLDMNULUNQOGUMDMULPUMRULRSTGGUAZUNUOQGUBUP
      GGIDABCPUCDUJNUPUDUEUPUFABCGUGUHTUIUK $.

    $( The poset 1 of the extended real numbers is plus infinity.  (Contributed
       by Thierry Arnoux, 18-Feb-2018.) $)
    xrsp1 $p |- +oo = ( 1. ` RR*s ) $=
      ( vx vy vz cxrs cp1 cfv cxr club clt csup cpnf cvv wcel wceq xrsex xrsbas
      eqid p1val ax-mp wss ssid xrslt ctos xrstos a1i id xrsupss toslub 3eqtrri
      xrsup ) DEFZGDHFZFZGGIJZKDLMUKUMNOGULUKDLPULQUKQRSGGTZUMUNNGUAUOGGIDABCPU
      BDUCMUOUDUEUOUFABCGUGUHSUJUI $.
  $}

  ${
    ressmulgnn.1 $e |- H = ( G |`s A ) $.
    ressmulgnn.2 $e |- A C_ ( Base ` G ) $.
    ressmulgnn.3 $e |- .* = ( .g ` G ) $.
    ressmulgnn.4 $e |- I = ( invg ` G ) $.
    $( Values for the group multiple function in a restricted structure
       (Contributed by Thierry Arnoux, 12-Jun-2017.) $)
    ressmulgnn $p |-
                ( ( N e. NN /\ X e. A ) -> ( N ( .g ` H ) X ) = ( N .* X ) ) $=
      ( cn wcel cfv co c1 cbs wceq eqid ax-mp cmg csn cxp cseq wss ressbas2 cvv
      wa cplusg fvex ssexi ressplusg seqeq2 mulgnn simpr sseldi syldan eqtr4d )
      FLMZGAMZUHZFGCUANZOFBUINZLGUBUCZPUDZNZFGEOZACUINZVEVBCFGABQNZUEACQNRIAVIC
      BHVISZUFTVHSVBSVCVHRZVEVHVDPUDRAUGMVKAVIBQUJIUKAVCBCUGHVCSZULTVCVHVDPUMTU
      NUSUTGVIMVGVFRVAAVIGIUSUTUOUPVIVCVEEBFGVJVLJVESUNUQUR $.

    ressmulgnn0.4 $e |- ( 0g ` G ) = ( 0g ` H ) $.
    $( Values for the group multiple function in a restricted structure
       (Contributed by Thierry Arnoux, 14-Jun-2017.) $)
    ressmulgnn0 $p |-
               ( ( N e. NN0 /\ X e. A ) -> ( N ( .g ` H ) X ) = ( N .* X ) ) $=
      ( wcel wa cfv co wceq cc0 simpr eqid cn0 cn cmg simplr ressmulgnn syl2anc
      c0g cbs wss ressbas2 ax-mp mulg0 syl oveq1d sseldi eqtr4d wo elnn0 biimpi
      3eqtr4d adantr mpjaodan ) FUAMZGAMZNZFUBMZFGCUCOZPZFGEPZQZFRQZVEVFNVFVDVJ
      VEVFSVCVDVFUDABCDEFGHIJKUEUFVEVKNZVHRGEPZVIVLRGVGPZBUGOZVHVMVLVDVNVOQVCVD
      VKUDZAVGCGVOABUHOZUIACUHOQIAVQCBHVQTZUJUKLVGTULUMVLFRGVGVEVKSZUNVLGVQMVMV
      OQVLAVQGIVPUOVQEBGVOVRVOTJULUMUTVLFRGEVSUNUPVCVFVKUQZVDVCVTFURUSVAVB $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     The extended non-negative real numbers monoid
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $( The base of the extended non-negative real numbers.  (Contributed by
     Thierry Arnoux, 30-Jan-2017.) $)
  xrge0base $p |- ( 0 [,] +oo ) = ( Base ` ( RR*s |`s ( 0 [,] +oo ) ) ) $=
    ( cc0 cpnf cicc cxr cin cxrs cress cbs cfv wss wceq iccssxr df-ss mpbi wcel
    co cvv ovex eqid xrsbas ressbas ax-mp eqtr3i ) ABCPZDEZUDFUDGPZHIZUDDJUEUDK
    ABLUDDMNUDQOUEUGKABCRUDDUFQFUFSTUAUBUC $.

  $( The zero of the extended non-negative real numbers monoid.  (Contributed
     by Thierry Arnoux, 30-Jan-2017.) $)
  xrge00 $p |- 0 = ( 0g ` ( RR*s |`s ( 0 [,] +oo ) ) ) $=
    ( cxrs cxr cmnf cdif cress co cmnd wcel cc0 cpnf cicc wss cfv wceq ax-mp wn
    wbr mpbi cin cvv csn c0g eqid xrs1mnd ccmn xrge0cmn cmnmnd cle wa clt mnflt
    cr 0re wb mnfxr 0xr xrltnle mp2an intnan elxrge0 mtbir difsn ssdif eqsstr3i
    iccssxr 0le0 mpbir2an cbs difss df-ss xrex difexg xrsbas ressbas xrs10 ovex
    eqtr3i ressress dfss incom eqtr2i oveq2i submnd0 mp4an ) ABCUAZDZEFZGHAIJKF
    ZEFZGHZWHWFLZIWHHZIWIUBMNWGWGUCZUDWIUEHWJUFWIUGOWHWHWEDZWFCWHHZPWNWHNWOCBHZ
    ICUHQZUIWQWPCIUJQZWQPZIULHWRUMIUKOWPIBHZWRWSUNUOUPCIUQURRUSCUTVACWHVBOWHBLW
    NWFLIJVEWHBWEVCOVDZWLWTIIUHQUPVFIUTVGWFWHWGWIIWFBSZWFWGVHMZWFBLXBWFNBWEVIWF
    BVJRWFTHZXBXCNBTHXDVKBWETVLOZWFBWGTAWMVMVNOVQWGWMVOWGWHEFZAWFWHSZEFZWIXDWHT
    HXFXHNXEIJKVPWFWHATTVRURXGWHAEWHWHWFSZXGWKWHXINXAWHWFVSRWHWFVTWAWBWAWCWD $.

  $( The additive law of the extended non-negative real numbers monoid is the
     addition in the extended real numbers.  (Contributed by Thierry Arnoux,
     20-Mar-2017.) $)
  xrge0plusg $p |- +e = ( +g ` ( RR*s |`s ( 0 [,] +oo ) ) ) $=
    ( cc0 cpnf cicc co cvv wcel cxad cxrs cress cplusg wceq ovex eqid ressplusg
    cfv xrsadd ax-mp ) ABCDZEFGHRIDZJOKABCLRGHSESMPNQ $.

  $( The group multiple function in the extended non-negative real numbers.
     (Contributed by Thierry Arnoux, 14-Jun-2017.) $)
  xrge0mulgnn0 $p |- ( ( A e. NN0 /\ B e. ( 0 [,] +oo ) ) ->
                  ( A ( .g ` ( RR*s |`s ( 0 [,] +oo ) ) ) B ) = ( A *e B ) ) $=
    ( cn0 wcel cc0 cpnf cicc co wa cxrs cress cmg cfv cxmu cminusg eqid cxr cbs
    iccssxr c0g xrsbas sseqtri xrs0 xrge00 eqtr3i ressmulgnn0 cz wceq xrsmulgzz
    nn0z sseli syl2an eqtrd ) ACDZBEFGHZDZIABJUOKHZLMHABJLMZHZABNHZUOJUQJOMZURA
    BUQPUOQJRMEFSZUAUBURPVAPEJTMUQTMUCUDUEUFUNAUGDBQDUSUTUHUPAUJUOQBVBUKABUIULU
    M $.

  $( Associativity of extended non-negative real addition.  (Contributed by
     Thierry Arnoux, 8-Jun-2017.) $)
  xrge0addass $p |- ( ( A e. ( 0 [,] +oo ) /\ B e. ( 0 [,] +oo ) /\
    C e. ( 0 [,] +oo ) ) -> ( ( A +e B ) +e C ) = ( A +e ( B +e C ) ) ) $=
    ( cc0 cpnf co wcel cxr cmnf wne cxad sseldi cle wbr wa elicc4 syl3anc mpbid
    wb simpld cicc w3a iccssxr simp1 0xr a1i pnfxr ge0nemnf syl2anc simp2 simp3
    wceq xaddass syl222anc ) ADEUAFZGZBUOGZCUOGZUBZAHGZAIJZBHGZBIJZCHGZCIJZABKF
    CKFABCKFKFULUSUOHADEUCZUPUQURUDZLZUSUTDAMNZVAVHUSVIAEMNZUSUPVIVJOZVGUSDHGZE
    HGZUTUPVKSVLUSUEUFZVMUSUGUFZVHDEAPQRTAUHUIUSUOHBVFUPUQURUJZLZUSVBDBMNZVCVQU
    SVRBEMNZUSUQVRVSOZVPUSVLVMVBUQVTSVNVOVQDEBPQRTBUHUIUSUOHCVFUPUQURUKZLZUSVDD
    CMNZVEWBUSWCCEMNZUSURWCWDOZWAUSVLVMVDURWESVNVOWBDECPQRTCUHUIABCUMUN $.

  $( An extended non-negative real cannot be minus infinity.  (Contributed by
     Thierry Arnoux, 9-Jun-2017.) $)
  xrge0neqmnf $p |- ( A e. ( 0 [,] +oo ) -> A =/= -oo ) $=
    ( cc0 cpnf cicc co wcel cmnf wn wceq cle wbr cxr w3a clt cr 0re mp2an con3i
    wb 0xr mnflt ax-mp mnfxr xrltnle mpbi simp2 pnfxr elicc1 biimpi mp2b nelneq
    mpan2 neneqad ) ABCDEZFZAGUOGUNFZHZAGIHBGJKZHZGLFZURGCJKZMZHUQGBNKZUSBOFVCP
    BUAUBUTBLFZVCUSSUCTGBUDQUEVBURUTURVAUFRUPVBUPVBVDCLFUPVBSTUGBCGUHQUIRUJAGUN
    UKULUM $.

  $( An extended real which is not a real is plus infinity.  (Contributed by
     Thierry Arnoux, 16-Oct-2017.) $)
  xrge0nre $p |- ( ( A e. ( 0 [,] +oo ) /\ -. A e. RR ) -> A = +oo ) $=
    ( cc0 cpnf cicc co wcel cr wceq cxr cmnf wne wo iccssxr xrge0neqmnf xrnemnf
    sseli wa biimpi syl2anc orcanai ) ABCDEZFZAGFZACHZUBAIFZAJKZUCUDLZUAIABCMPA
    NUEUFQUGAORST $.

  $( The sum of nonnegative and positive numbers is positive.  See ~ addgtge0
     (Contributed by Thierry Arnoux, 6-Jul-2017.) $)
  xrge0addgt0 $p |- ( ( ( A e. ( 0 [,] +oo ) /\ B e. ( 0 [,] +oo ) ) /\ 0 < A )
                                                         -> 0 < ( A +e B ) ) $=
    ( cc0 cpnf cicc co wcel wa clt wbr cxad wceq cxr 0xr xaddid1 simplr simplll
    a1i sseldi breq2d ax-mp simpr wi iccssxr simpllr xlt2add syl22anc syl5eqbrr
    mp2and oveq2 adantl syl bitr3d mpbird cle wo iccgelb syl3anc xrleloe biimpa
    pnfxr syl21anc mpjaodan ) ACDEFZGZBVDGZHZCAIJZHZCBIJZCABKFZIJZCBLZVIVJHZCCC
    KFZVKICMGZVOCLNCOUAVNVHVJVOVKIJZVGVHVJPVIVJUBVNVPVPAMGZBMGZVHVJHVQUCVPVNNRZ
    VTVNVDMACDUDZVEVFVHVJQSVNVDMBWAVEVFVHVJUESCCABUFUGUIUHVIVMHZVLVHVGVHVMPWBCA
    CKFZIJVLVHWBWCVKCIVMWCVKLVICBAKUJUKTWBWCACIWBVRWCALWBVDMAWAVEVFVHVMQSAOULTU
    MUNVIVPVSCBUOJZVJVMUPZVPVINRZVIVDMBWAVEVFVHPZSVIVPDMGZVFWDWFWHVIVARWGCDBUQU
    RVPVSHWDWECBUSUTVBVC $.

  $( Distributivity of extended non-negative real multiplication over
     addition.  (Contributed by Thierry Arnoux, 30-Jun-2017.) $)
  xrge0adddir $p |- ( ( A e. ( 0 [,] +oo ) /\ B e. ( 0 [,] +oo ) /\ C e.
    ( 0 [,] +oo ) ) -> ( ( A +e B ) *e C ) = ( ( A *e C ) +e ( B *e C ) ) ) $=
    ( cc0 cpnf co wcel cxad cxmu wceq wa cxr cr sseldi wbr pnfxr syl2anc oveq1d
    cmnf syl cicc w3a cico iccssxr simpl1 simpl2 cioo clt cle mnfxr mnflt ax-mp
    wss 0re pnfge icossioo mp4an ioomax sseqtri xadddir syl3anc simpll1 simpll2
    simpr xaddcld xrge0addgt0 syl21anc xmulpnf1 oveq2 wne ge0xmulcl xrge0neqmnf
    ad2antlr simpll3 xaddpnf2 3eqtr4d eqtrd eqtr4d xmul02 oveq1 xmulcld xaddid2
    adantl 3eqtr3d 3eqtr2rd wo 0xr a1i iccgelb xrleloe biimpa mpjaodan wb mp3an
    eliccelico 3anbi3i simp3bi ) ADEUAFZGZBWRGZCWRGZUBZCDEUCFZGZABHFZCIFZACIFZB
    CIFZHFZJZCEJZXBXDKZALGZBLGZCMGXJXLWRLADEUDZWSWTXAXDUENXLWRLBXOWSWTXAXDUFNXL
    XCMCXCSEUGFZMSLGELGZSDUHOZEEUIOZXCXPUMUJPDMGXRUNDUKULXQXSPEUOULSEDEUPUQURUS
    XBXDVDNABCUTVAXBXKKZDAUHOZXJDAJZXTYAKZXFEXHHFZXIYCXEEIFZEXFYDYCXELGDXEUHOZY
    EEJYCABYCWRLAXOWSWTXAXKYAVBZNZYCWRLBXOWSWTXAXKYAVCZNVEYCWSWTYAYFYGYIXTYAVDZ
    ABVFVGXEVHQXKXFYEJXBYACEXEIVIVMYCXHLGZXHSVJZYDEJYCWRLXHXOYCWTXAXHWRGZYIWSWT
    XAXKYAVNBCVKQZNYCYMYLYNXHVLTXHVOQVPYCXGEXHHYCXGAEIFZEXKXGYOJXBYACEAIVIVMYCX
    MYAYOEJYHYJAVHQVQRVRXTYBKZXIXHDBHFZCIFZXFYPDCIFZXHHFDXHHFZXIXHYPYSDXHHYPCLG
    YSDJYPWRLCXOWSWTXAXKYBVNNZCVSTRYPYSXGXHHYBYSXGJXTDACIVTWCRYPYKYTXHJYPBCYPWR
    LBXOWSWTXAXKYBVCNZUUAWAXHWBTWDYPYQBCIYPXNYQBJUUBBWBTRYBYRXFJXTYBYQXECIDABHV
    TRWCWEXTDLGZXMDAUIOZYAYBWFZUUCXTWGWHZXTWRLAXOWSWTXAXKUEZNXTUUCXQWSUUDUUFXQX
    TPWHUUGDEAWIVAUUCXMKUUDUUEDAWJWKVGWLXBWSWTXDXKWFZXAUUHWSWTUUCXQDEUIOZXAUUHW
    MWGPUUCUUIWGDUOULDECWOWNWPWQWL $.

  $( Extended non-negative real version of ~ npcan .  (Contributed by Thierry
     Arnoux, 9-Jun-2017.) $)
  xrge0npcan $p |- ( ( A e. ( 0 [,] +oo ) /\ B e. ( 0 [,] +oo ) /\ B <_ A ) ->
     ( ( A +e -e B ) +e B ) = A ) $=
    ( cc0 cpnf co wcel cle wbr wceq cxne wa cxr simpl1 sseldi simpr syl2anc syl
    cxad cmnf wne cicc w3a iccssxr simpl3 eqbrtrrd xgepnf biimpa xnegeq oveq12d
    pnfxr xnegid syl6eq oveq1d oveq2d xaddid2 mp1i 3eqtrd eqtr4d wn xrge0neqmnf
    ax-mp simpl2 xnegcld xnegneg sylan9req xnegmnf ex con3and neneqad syl222anc
    xaddass xnegcl xaddcom mpancom eqtrd xaddid1 sylan9eqr pm2.61dan ) ACDUAEZF
    ZBVSFZBAGHZUBZBDIZABJZREZBREZAIWCWDKZWGDAWHWGCBRECDREZDWHWFCBRWHWFDDJZREZCW
    HADWEWJRWHALFZDAGHZADIZWHVSLACDUCZVTWAWBWDMNWHBDAGWCWDOZVTWAWBWDUDUEWLWMWNA
    UFUGPZWHWDWEWJIWPBDUHQUIDLFZWKCIUJDUKVAULUMWHBDCRWPUNWRWIDIWHUJDUOUPUQWQURW
    CWDUSZKZWGAWEBREZREZAWTWLASTZWELFZWESTZBLFZBSTZWGXBIWTVSLAWOVTWAWBWSMZNZWTV
    TXCXHAUTQWTBWTVSLBWOVTWAWBWSVBZNZVCWTXFWSXEXKWCWSOXFWSKWESXFWESIZWDXFXLWDXF
    XLKBSJZDXFXLBWEJXMBVDWESUHVEVFULVGVHVIPXKWTWAXGXJBUTQAWEBVKVJWTWLXFXBAIXIXK
    XFWLXBACREAXFXACARXFXABWEREZCXDXFXAXNIBVLWEBVMVNBUKVOUNAVPVQPVOVR $.

  ${
    $d k x y A $.  $d x y B $.  $d k x y ph $.
    fsumrp0cl.1 $e |- ( ph -> A e. Fin ) $.
    fsumrp0cl.2 $e |- ( ( ph /\ k e. A ) -> B e. ( 0 [,) +oo ) ) $.
    $( Closure of a finite sum of positive integers.  (Contributed by Thierry
       Arnoux, 25-Jun-2017.) $)
    fsumrp0cl $p |- ( ph -> sum_ k e. A B e. ( 0 [,) +oo ) ) $=
      ( cc0 cpnf co cr cmnf cxr wcel clt wbr cle pnfxr ax-mp w3a 0xr vx vy cico
      cc wss cioo mnfxr 0re mnflt pnfge icossioo mp4an ioomax sseqtri ax-resscn
      sstri a1i cv wa caddc simprl sseldi simprr readdcld rexrd wb elico1 mp2an
      simp2bi syl addge0d ltpnf syl3anbrc lbico1 mp3an fsumcllem ) AUAUBBCGHUCI
      ZDVQUDUEAVQJUDVQKHUFIZJKLMHLMZKGNOZHHPOZVQVRUEUGQGJMZVTUHGUIRVSWAQHUJRKHG
      HUKULUMUNZUOUPUQAUAURZVQMZUBURZVQMZUSUSZWDWFUTIZLMZGWIPOZWIHNOZWIVQMZWHWI
      WHWDWFWHVQJWDWCAWEWGVAZVBZWHVQJWFWCAWEWGVCZVBZVDZVEWHWDWFWOWQWHWEGWDPOZWN
      WEWDLMZWSWDHNOZGLMZVSWEWTWSXASVFTQGHWDVGVHVIVJWHWGGWFPOZWPWGWFLMZXCWFHNOZ
      XBVSWGXDXCXESVFTQGHWFVGVHVIVJVKWHWIJMWLWRWIVLVJXBVSWMWJWKWLSVFTQGHWIVGVHV
      MEFGVQMZAXBVSGHNOZXFTQWBXGUHGVLRGHVNVOUQVP $.
  $}


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        Algebra
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Finitely supported group sums - misc additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    $d k A $.  $d k B $.  $d k D $.  $d k E $.  $d k ph $.  $d k V $.
    $d k W $.
    sumpr.1 $e |- ( k = A -> C = D ) $.
    sumpr.2 $e |- ( k = B -> C = E ) $.
    sumpr.3 $e |- ( ph -> ( D e. CC /\ E e. CC ) ) $.
    sumpr.4 $e |- ( ph -> ( A e. V /\ B e. W ) ) $.
    sumpr.5 $e |- ( ph -> A =/= B ) $.
    $( A sum over a pair is the sum of the elements.  (Contributed by Thierry
       Arnoux, 12-Dec-2016.) $)
    sumpr $p |- ( ph -> sum_ k e. { A , B } C = ( D + E ) ) $=
      ( csu csn caddc wceq wcel cc cpr co wne cin disjsn2 syl cun df-pr a1i cfn
      c0 prfi wral wa wb eleq1d ralprg mpbird r19.21bi fsumsplit simpld syl2anc
      cv sumsn simprd oveq12d eqtrd ) ABCUAZDFOBPZDFOZCPZDFOZQUBEGQUBAVIVKDVHFA
      BCUCVIVKUDUKRNBCUEUFVHVIVKUGRABCUHUIVHUJSABCULUIADTSZFVHAVMFVHUMZETSZGTSZ
      UNZLABHSZCISZUNVNVQUOMVMVOVPFBCHIFVCZBRDETJUPVTCRDGTKUPUQUFURUSUTAVJEVLGQ
      AVRVOVJERAVRVSMVAAVOVPLVADEFBHJVDVBAVSVPVLGRAVRVSMVEAVOVPLVEDGFCIKVDVBVFV
      G $.
  $}

  ${
    $d k B $.  $d k C $.  $d k G $.  $d k M $.  $d k ph $.
    gsumsn2.b $e |- B = ( Base ` G ) $.
    gsumsn2.g $e |- G e. Mnd $.
    gsumsn2.s $e |- ( ( ph /\ k = M ) -> A = C ) $.
    gsumsn2.m $e |- ( ph -> M e. V ) $.
    gsumsn2.c $e |- ( ph -> C e. B ) $.
    $( Group sum of a singleton.  (Contributed by Thierry Arnoux,
       30-Jan-2017.) $)
    gsumsn2 $p |- ( ph -> ( G gsum ( k e. { M } |-> A ) ) = C ) $=
      ( cmpt cgsu co cfv c1 wcel wceq csn chash cmg elsni sylan2 mpteq2dva cmnd
      oveq2d cfn a1i snfi eqid gsumconst syl3anc eqtrd hashsng syl oveq1d mulg1
      cv 3eqtrd ) AFEGUAZBNZOPZVBUBQZDFUCQZPZRDVFPZDAVDFEVBDNZOPZVGAVCVIFOAEVBB
      DEUTZVBSAVKGTBDTVKGUDKUEUFUHAFUGSZVBUISZDCSZVJVGTVLAJUJVMAGUKUJMVBCVFEFDI
      VFULZUMUNUOAVERDVFAGHSVERTLGHUPUQURAVNVHDTMCVFFDIVOUSUQVA $.
  $}

  ${
    $d a b A $.  $d a b B $.  $d a b f m n s t x F $.  $d a b f m n s t x G $.
    $d a b f m n s t x H $.  $d a b f m n s t x ph $.
    gsumpropd2.f $e |- ( ph -> F e. V ) $.
    gsumpropd2.g $e |- ( ph -> G e. W ) $.
    gsumpropd2.h $e |- ( ph -> H e. X ) $.
    gsumpropd2.b $e |- ( ph -> ( Base ` G ) = ( Base ` H ) ) $.
    gsumpropd2.c $e |- ( ( ph /\ ( s e. ( Base ` G ) /\ t e. ( Base ` G ) ) )
                                -> ( s ( +g ` G ) t ) e. ( Base ` G ) ) $.
    gsumpropd2.e $e |- ( ( ph /\ ( s e. ( Base ` G ) /\ t e. ( Base ` G ) ) )
                                -> ( s ( +g ` G ) t ) = ( s ( +g ` H ) t ) ) $.
    gsumpropd2.n $e |- ( ph -> Fun F ) $.
    gsumpropd2.r $e |- ( ph -> ran F C_ ( Base ` G ) ) $.
    ${
      gsumprop2dlem.1 $e |- A = ( `' F " ( _V \ { s e. ( Base ` G ) | A. t e. (
       Base ` G ) ( ( s ( +g ` G ) t ) = t /\ ( t ( +g ` G ) s ) = t ) } ) ) $.
      gsumprop2dlem.2 $e |- B = ( `' F " ( _V \ { s e. ( Base ` H ) | A. t e. (
       Base ` H ) ( ( s ( +g ` H ) t ) = t /\ ( t ( +g ` H ) s ) = t ) } ) ) $.
      $( Lemma for ~ gsumpropd2 (Contributed by Thierry Arnoux,
         28-Jun-2017.) $)
      gsumpropd2lem $p |- ( ph -> ( G gsum F ) = ( H gsum F ) ) $=
        ( vm vn vx vf va vb crn cv cplusg cfv co wceq cbs wral crab wss c0g cdm
        wa cfz wcel cseq cuz wrex wex cio c1 chash wf1o ccom cif cgsu adantr wb
        eqeq1d proplem ancom2s anbi12d anassrs raleqbidva rabeqbidva grpidpropd
        sseq2d eqidd simprl ad2antrr wfun simpr simplrr eleqtrrd fvelrn syl2anc
        sseldd adantlr seqfeq4 eqeq2d pm5.32da rexbidva iotabidv ccnv cdif cima
        exbidv cvv difeq2d imaeq2d 3eqtr4g fveq2d ad3antrrr f1ofun f1odm oveq2d
        ad3antlr eqtrd fvco difpreima syl syl5eq difss syl6eqss dfdm4 syl6sseqr
        dfrn4 eqtri sylan wn c0 wfn 1z seqfn fndm mp2b sylnibr ndmfv bitrd eqid
        eleq2i a1i gsumvalx wf ffvelrnd eqeltrd simpll caovclg eqtr4d pm2.61dan
        f1of cz f1oeq2 f1oeq3 anbi1d ifeq12d ifbieq12d 3eqtr4d ) AEUHZKUIZBUIZF
        UJUKZULZUURUMZUURUUQUUSULZUURUMZUTZBFUNUKZUOZKUVEUPZUQZFURUKZEUSZVAUHVB
        ZUVJUBUIZUCUIZVAULZUMZUDUIZUVMUUSEUVLVCUKZUMZUTZUCUVLVDUKZVEZUBVFZUDVGZ
        VHCVIUKZVAULZCUEUIZVJZUVPUWDUUSEUWFVKZVHVCZUKZUMZUTZUEVFZUDVGZVLZVLUUPU
        UQUURGUJUKZULZUURUMZUURUUQUWPULZUURUMZUTZBGUNUKZUOZKUXBUPZUQZGURUKZUVKU
        VOUVPUVMUWPEUVLVCUKZUMZUTZUCUVTVEZUBVFZUDVGZVHDVIUKZVAULZDUWFVJZUVPUXMU
        WPUWHVHVCZUKZUMZUTZUEVFZUDVGZVLZVLFEVMULGEVMULAUVHUXEUVIUWOUXFUYBAUVGUX
        DUUPAUVFUXCKUVEUXBOAUUQUVEVBZUTUVDUXABUVEUXBAUVEUXBUMUYCOVNAUYCUURUVEVB
        ZUVDUXAVOAUYCUYDUTZUTZUVAUWRUVCUWTUYFUUTUWQUURQVPUYFUVBUWSUURAUYDUYCUVB
        UWSUMAUFUGUVEUVEUUSUWPUURUUQAKBUVEUVEUUSUWPUFUIZUGUIZQVQZVQVRVPVSVTWAWB
        ZWDAKBUVEFGAUVEWEOQWCAUVKUWCUXLUWNUYAAUWBUXKUDAUWAUXJUBAUVSUXIUCUVTAUVM
        UVTVBZUTUVOUVRUXHAUYKUVOUVRUXHVOAUYKUVOUTZUTZUVQUXGUVPUYMKBUUSUWPUVEEUV
        LUVMAUYKUVOWFUYMUUQUVNVBZUTZUUPUVEUUQEUKZAUUPUVEUQZUYLUYNSWGUYOEWHZUUQU
        VJVBUYPUUPVBAUYRUYLUYNRWGUYOUUQUVNUVJUYMUYNWIAUYKUVOUYNWJWKUUQEWLWMWNAU
        YEUUTUVEVBUYLPWOAUYEUUTUWQUMUYLQWOWPWQVTWRWSXDWTAUWMUXTUDAUWLUXSUEAUWLU
        WGUXRUTUXSAUWGUWKUXRAUWGUTZUWJUXQUVPUYSUWJUXMUWIUKZUXQAUWJUYTUMUWGAUWDU
        XMUWIACDVIAEXAZXEUVGXBZXCZVUAXEUXDXBZXCZCDAVUBVUDVUAAUVGUXDXEUYJXFXGTUA
        XHZXIZXIVNUYSUXMVHVDUKZVBZUYTUXQUMZUYSVUIUTZUFUGUUSUWPUVEUWHVHUXMUYSVUI
        WIVUKUYGUXNVBZUTZUUPUVEUYGUWHUKZAUYQUWGVUIVULSXJVUMVUNUYGUWFUKZEUKZUUPV
        UMUWFWHZUYGUWFUSZVBVUNVUPUMUWGVUQAVUIVULUWECUWFXKXNVUMUYGUXNVURVUKVULWI
        ZVUMVURUWEUXNUWGVURUWEUMAVUIVULUWECUWFXLXNAUWEUXNUMZUWGVUIVULAUWDUXMVHV
        AVUGXMZXJZXOWKUYGEUWFXPWMVUMUYRVUOUVJVBVUPUUPVBAUYRUWGVUIVULRXJVUMCUVJV
        UOACUVJUQUWGVUIVULACVUAXEXCZUVJACVVCVUAUVGXCZXBZVVCACVUCVVETAUYRVUCVVEU
        MRXEUVGEXQXRXSVVCVVDXTYAUVJVUAUHVVCEYBVUAYDYEYCXJVUMUWECUYGUWFUWGUWECUW
        FUUAAVUIVULUWECUWFUUHXNVUMUYGUXNUWEVUSVVBWKUUBWNVUOEWLWMUUCWNVUKAUYGUVE
        VBUYHUVEVBUTZUYGUYHUUSULZUVEVBAUWGVUIUUDZAKBUYGUYHUVEUVEUVEUUSPUUEYFVUK
        AVVFVVGUYGUYHUWPULUMVVHUYIYFWPAVUIYGZVUJUWGAVVIUTZUYTYHUXQVVJUXMUWIUSZV
        BZYGUYTYHUMVVJVUIVVLAVVIWIZVVKVUHUXMVHUUIVBZUWIVUHYIVVKVUHUMYJUUSUWHVHY
        KVUHUWIYLYMYRYNUXMUWIYOXRVVJUXMUXPUSZVBZYGUXQYHUMVVJVUIVVPVVMVVOVUHUXMV
        VNUXPVUHYIVVOVUHUMYJUWPUWHVHYKVUHUXPYLYMYRYNUXMUXPYOXRUUFWOUUGXOWQWRAUW
        GUXOUXRAUWGUXNCUWFVJZUXOAVUTUWGVVQVOVVAUWEUXNCUWFUUJXRACDUMVVQUXOVOVUFC
        DUXNUWFUUKXRYPUULYPXDWTUUMUUNAUDBUVJUVEUUSUEUBUCEFUVGICHUVIKUVEYQUVIYQU
        USYQUVGYQCVUCUMATYSMLAUVJWEZYTAUDBUVJUXBUWPUEUBUCEGUXDJDHUXFKUXBYQUXFYQ
        UWPYQUXDYQDVUEUMAUAYSNLVVRYTUUO $.
    $}

    $( A stronger version of ~ gsumpropd , working for magma, where only the
       closure of the addition operation on a common base is required.
       (Contributed by Thierry Arnoux, 28-Jun-2017.) $)
    gsumpropd2 $p |- ( ph -> ( G gsum F ) = ( H gsum F ) ) $=
      ( cfv co wceq ccnv cvv cv cplusg wa cbs wral crab cdif cima gsumpropd2lem
      eqid ) ABCUAZUBIUCZBUCZDUDRZSUOTUOUNUPSUOTUEBDUFRZUGIUQUHUIUJZUMUBUNUOEUD
      RZSUOTUOUNUSSUOTUEBEUFRZUGIUTUHUIUJZCDEFGHIJKLMNOPQURULVAULUK $.
  $}

  ${
    $d k l A $.  $d l B $.  $d l G $.  $d l X $.
    gsumconstf.k $e |- F/_ k X $.
    gsumconstf.b $e |- B = ( Base ` G ) $.
    gsumconstf.m $e |- .x. = ( .g ` G ) $.
    $( Sum of a constant series (Contributed by Thierry Arnoux, 5-Jul-2017.) $)
    gsumconstf $p |- ( ( G e. Mnd /\ A e. Fin /\ X e. B ) ->
      ( G gsum ( k e. A |-> X ) ) = ( ( # ` A ) .x. X ) ) $=
      ( vl cmnd wcel cfn w3a cmpt cgsu co chash cfv nfcv eqidd cbvmpt gsumconst
      weq oveq2i syl5eq ) EKLAMLFBLNEDAFOZPQEJAFOZPQARSFCQUGUHEPDJAFFJFTGDJUDFU
      AUBUEABCJEFHIUCUF $.
  $}

  ${
    $d r s u v w y z A $.  $d r s u v w y z F $.  $d r s u v w y z ph $.
    $d r s u v w y z G $.  $d r u v w y z S $.
    xrge0tsmsd.g $e |- G = ( RR*s |`s ( 0 [,] +oo ) ) $.
    xrge0tsmsd.a $e |- ( ph -> A e. V ) $.
    xrge0tsmsd.f $e |- ( ph -> F : A --> ( 0 [,] +oo ) ) $.
    xrge0tsmsd.s $e |- ( ph -> S = sup (
      ran ( s e. ( ~P A i^i Fin ) |-> ( G gsum ( F |` s ) ) ) , RR* , < ) ) $.
    $( Any finite or infinite sum in the nonnegative extended reals is uniquely
       convergent to the supremum of all finite sums.  (Contributed by Mario
       Carneiro, 13-Sep-2015.)  (Revised by Thierry Arnoux, 30-Jan-2017.) $)
    xrge0tsmsd $p |- ( ph -> ( G tsums F ) = { S } ) $=
      ( vz co wcel cc0 cxr wbr wa cvv syl vu vy vx vv vr vw ctsu wceq cpnf cicc
      csn cv wss cres cgsu wi cpw cfn cin wral wrex cle cordt cfv crest crn clt
      cmpt csup cxrs ax-mp cmnf cdif cress eqid wne ge0nemnf elxrge0 mp2an ccmn
      wf jca eqeltri a1i elfpw simprbi simplbi fssres fisuppfi gsumcl sseldi c0
      cc reseq2 syl6eq oveq2d elrnmpt1s supxrub sylancl breqtrrd sylanbrc letop
      ctop wb ovex inss1 cioo simplrl simplrr simpr elin syl2anc simprrr adantr
      simprrl sstrd simprlr xrge0gsumle xrltletrd weq w3a mpbir3and sseldd expr
      cr ralrimiva ad3antrrr breqtrd mpbid sylib reximddv syl5ibrcom syl5bi mpd
      eleq2 simprr ad2antrr ad2antrl ctps cha iccssxr xrsbas ressbas2 xrge0subm
      cbs csubmnd difexg simpl eldifsn 3imtr4i ssriv ressabs eqtr4i xrs10 subm0
      c0g xrex xrge0cmn adantl syl2an frn supxrcl eqeltrd 0ss 0fin mpbir2an 0cn
      fmptd res0 gsum0 sseli ctg reex elrestr mp3an12 xrtgioo syl6eleqr tg2 cxp
      elrest wfn ioof ffn ovelrn mp2b syl6ss simp-4l simprll eliooord xrlelttrd
      ssfi simprd elioo1 anassrs simpld supxrlub rgenw cbvmptv rexrnmpt anbi12d
      breq2 imbi1d rexlimdvva rexlimdv cioc eqeltrrd pnfnei simp-5l rexr simprl
      sseq1 pnfge pnfxr elioc1 simplr rexlimddv wo xrnemnf mpjaodan syl5 imbi2d
      rexralbidv imbi12d rexlimdva ralrimiv cts xrstset resstset topnval xrstps
      ltpnf resstps eltsms mpbir2and ctsr letsr ordthaus resthaus haustsms2
      mp1i ) ACEDUGMZNZVUACUKUHAVUBCOUIUJMZNZCUAULZNZLULZUBULZUMZEDVUHUNZUOMZVU
      ENZUPZUBBUQURUSZUTLVUNVAZUPZUAVBVCVDZVUCVEMZUTACPNZOCVBQZVUDACGVUNEDGULZU
      NZUOMZVHZVFZPVGVIZPKAVVEPUMZVVFPNAVUNPVVDWAVVGAGVUNVVCPVVDAVVAVUNNZRZVUCP
      VVCOUIUUAZVVIVVAVUCVVBEUROVUCPUMVUCEUUEVDUHVVJVUCPEVJHUUBUUCVKZVUCVJPVLUK
      ZVMZVNMZUUFVDNOEUUPVDUHVVNVVNVOZUUDVUCEVVNOEVJVUCVNMZVVNVUCVNMZHVVMSNZVUC
      VVMUMVVQVVPUHPSNVVRUUQPVVLSUUGVKUCVUCVVMUCULZPNZOVVSVBQZRZVVTVVSVLVPZRVVS
      VUCNVVSVVMNVWBVVTVWCVVTVWAUUHVVSVQWBVVSVRVVSPVLUUIUUJUUKVVMVUCVJSUULVSUUM
      VVNVVOUUNUUOVKZEVTNZVVIEVVPVTHUURWCZWDVVHVVAURNZAVVHVVABUMZVWGVVABWEZWFUU
      SZABVUCDWAZVWHVVAVUCVVBWAVVHJVVHVWHVWGVWIWGBVUCVVADWHUUTZVVIVVAVUCSOUKVMZ
      VVBVWJVWLWIWJWKVVDVOZUVHVUNPVVDUVATZVVEUVBTUVCZAOVVFCVBAVVGOVVENZOVVFVBQV
      WOWLVUNNZOWMNVWQVWRWLBUMWLURNBUVDUVEWLBWEUVFUVGGVUNVVCOWLVVDWMVWNVVAWLUHZ
      VVCEWLUOMOVWSVVBWLEUOVWSVVBDWLUNWLVVAWLDWNDUVIWOWPEOVWDUVJWOWQVSVVEOWRWSK
      WTZCVRXAAVUPUAVURVUEVURNZVUEUDULZVUCUSZUHZUDVUQVAZAVUPVUQXCNZVUCSNZVXAVXE
      XDXBOUIUJXEZUDVUEVUCVUQXCSUVTVSAVXDVUPUDVUQAVXBVUQNZRZVUPVXDCVXCNZVUIVUKV
      XCNZUPZUBVUNUTZLVUNVAZUPVXKCVXBNZVXJVXOVXCVXBCVXBVUCXFUVKAVXIVXPVXOAVXIVX
      PRZRZCYENZVXOCUIUHZVXRVXSRZVUFVUEVXBYEUSZUMZRZUAXGVFZVAZVXOVYAVYBVYEUVLVD
      ZNCVYBNZVYFVYAVYBVUQYEVEMZVYGVYAVXIVYBVYINZAVXIVXPVXSXHVXFYESNVXIVYJXBUVM
      VXBYEVUQXCSUVNUVOTVYIVYIVOUVPUVQVYAVXPVXSVYHAVXIVXPVXSXIVXRVXSXJCVXBYEXKX
      AUAVYBVYECUVRXLVYAVYDVXOUAVYEVUEVYENZVUEUEULZUFULZXGMZUHZUFPVAUEPVAZVYAVY
      DVXOUPZPPUVSZYEUQZXGWAXGVYRUWAVYKVYPXDUWBVYRVYSXGUWCUEUFPPVUEXGUWDUWEVYAV
      YOVYQUEUFPPVYAVYLPNZVYMPNZRZRVYQVYOCVYNNZVYNVYBUMZRZVXOUPVYAWUBWUEVXOVYAW
      UBWUERZRZVYLEDVUGUNZUOMZVGQZVXNLVUNWUGVUGVUNNZWUJRZRZVXMUBVUNWUMVUHVUNNZV
      UIVXLWUGWULWUNVUIRZVXLWUGWULWUORZRZVUKVXBNZVUKVUCNZVXLWUQVYNVXBVUKWUQVYNV
      YBVXBWUGWUDWUPVYAWUBWUCWUDXMXNVXBYEXFUWFWUQVUKVYNNZVUKPNZVYLVUKVGQZVUKVYM
      VGQZWUQVUCPVUKVVJWUQVUHVUCVUJEUROVVKVWDVWEWUQVWFWDZWUQWUNVUHURNZWUGWULWUN
      VUIXOZWUNVUHBUMZWVEVUHBWEZWFZTZWUQVWKWVGVUHVUCVUJWAZWUQAVWKAVXQVXSWUFWUPU
      WGZJTZWUQWUNWVGWVFWUNWVGWVEWVHWGZTZBVUCVUHDWHZXLZWUQVUHVUCVWMVUJWVJWVQWIW
      JZWKZWUQVYLWUIVUKWUGVYTWUPVYAVYTWUAWUEUWHZXNZWUQVUCPWUIVVJWUQVUGVUCWUHEUR
      OVVKVWDWVDWUQWVEVUIVUGURNZWVJWUGWULWUNVUIXMZVUHVUGUWKZXLZWUQVWKVUGBUMZVUG
      VUCWUHWAZWVMWUQVUGVUHBWWCWVOXPBVUCVUGDWHZXLZWUQVUGVUCVWMWUHWWEWWIWIWJWKWV
      SWUGWUKWUJWUOXQWUQBVUHVUGDEFHWUQABFNZWVLITWVMWVFWWCXRXSWUQVUKCVYMWVSWUQAV
      USWVLVWPTWUGWUAWUPVYAVYTWUAWUEXQXNZWUQVUKVVFCVBWUQVVGVUKVVENZVUKVVFVBQWUQ
      AVVGWVLVWOTWUQWUNVUKSNWWLWVFEVUJUOXEGVUNVVCVUKVUHVVDSVWNGUBXTVVBVUJEUOVVA
      VUHDWNWPWQWSVVEVUKWRXLWUQACVVFUHZWVLKTWTWUGCVYMVGQZWUPWUGVYLCVGQZWWNWUGWU
      CWWOWWNRVYAWUBWUCWUDXOCVYLVYMUWITZUWLXNUWJWUQVYTWUAWUTWVAWVBWVCYAXDWWAWWK
      VYLVYMVUKUWMXLYBYCWVRVUKVXBVUCXKZXAUWNYDYFWUGVYLVYMVGQZUFVVEVAZWUJLVUNVAZ
      WUGVYLVVFVGQZWWSWUGVYLCVVFVGWUGWWOWWNWWPUWOAWWMVXQVXSWUFKYGYHWUGVVGVYTWXA
      WWSXDZAVVGVXQVXSWUFVWOYGWVTUFVVEVYLUWPZXLYIWUISNZLVUNUTWWSWWTXDWXDLVUNEWU
      HUOXEUWQWWRWUJLUFVUNWUIVVDSGLVUNVVCWUIGLXTVVBWUHEUOVVAVUGDWNWPUWRVYMWUIVY
      LVGUXAUWSVKZYJYKYDVYOVYDWUEVXOVYOVUFWUCVYCWUDVUEVYNCYOVUEVYNVYBUXKUWTUXBY
      LUXCYMUXDYNVXRVXTRZVYLUIUXEMZVXBUMZVXOUEYEWXFVXIUIVXBNWXHUEYEVAAVXIVXPVXT
      XHWXFCUIVXBVXRVXTXJAVXIVXPVXTXIUXFUEVXBUXGXLWXFVYLYENZWXHRZRZWUJVXNLVUNWX
      KWULRZVXMUBVUNWXLWUNVUIVXLWXLWUORZWURWUSVXLWXMWXGVXBVUKWXKWXHWULWUOWXFWXI
      WXHYPYQWXMVUKWXGNZWVAWVBVUKUIVBQZWXMVUCPVUKVVJWXMVUHVUCVUJEUROVVKVWDVWEWX
      MVWFWDZWUNWVEWXLVUIWVIYRZWXMVWKWVGWVKWXMAVWKAVXQVXTWXJWULWUOUXHZJTZWUNWVG
      WXLVUIWVNYRZWVPXLZWXMVUHVUCVWMVUJWXQWYAWIWJZWKZWXMVYLWUIVUKWXKVYTWULWUOWX
      IVYTWXFWXHVYLUXIYRZYQZWXMVUCPWUIVVJWXMVUGVUCWUHEUROVVKVWDWXPWXMWVEVUIWWBW
      XQWXLWUNVUIYPZWWDXLZWXMVWKWWFWWGWXSWXMVUGVUHBWYFWXTXPWWHXLZWXMVUGVUCVWMWU
      HWYGWYHWIWJWKWYCWXKWUKWUJWUOXIWXMBVUHVUGDEFHWXMAWWJWXRITWXSWXLWUNVUIUXJWY
      FXRXSWXMWVAWXOWYCVUKUXLTWXMVYTUIPNWXNWVAWVBWXOYAXDWYEUXMVYLUIVUKUXNWSYBYC
      WYBWWQXAYDYFWXKWWSWWTWXKWXAWWSWXKVYLCVVFVGWXKVYLUICVGWXIVYLUIVGQWXFWXHVYL
      UYKYRVXRVXTWXJUXOWTAWWMVXQVXTWXJKYGYHWXKVVGVYTWXBAVVGVXQVXTWXJVWOYGWYDWXC
      XLYIWXEYJYKUXPVXRVUSCVLVPZRZVXSVXTUXQAWYJVXQAVUSWYIVWPAVUSVUTWYIVWPVWTCVQ
      XLWBXNCUXRYJUXSYDUXTVXDVUFVXKVUOVXOVUEVXCCYOVXDVUMVXMLUBVUNVUNVXDVULVXLVU
      IVUEVXCVUKYOUYAUYBUYCYLUYDYMUYEAUBLUABVUCCVUNDEVURFVVKVUCVUQEVVKVXGVUQEUY
      FVDUHVXHVUCVJEVUQSHUYGUYHVKUYIZVUNVOVWEAVWFWDZEYSNAEVVPYSHVJYSNVXGVVPYSNU
      YJVXHVUCVJSUYLVSWCWDZIJUYMUYNABVUCDEVURFCVVKWYLWYMIJWYKAVUQYTNZVXGVURYTNV
      BUYONWYNAUYPVBUYQUYTVXHVUCVUQSUYRWSUYSYN $.
  $}

  ${
    $d x A $.  $d x F $.  $d x G $.  $d x ph $.
    xrge0tsmseq.g $e |- G = ( RR*s |`s ( 0 [,] +oo ) ) $.
    xrge0tsmseq.a $e |- ( ph -> A e. V ) $.
    xrge0tsmseq.f $e |- ( ph -> F : A --> ( 0 [,] +oo ) ) $.
    $( Any limit of a finite or infinite sum in the nonnegative extended reals
       is the union of the sets limits, since this set is a singleton.
       (Contributed by Thierry Arnoux, 23-Jun-2017.) $)
    xrge0tsmsbi $p |- ( ph ->
                           ( C e. ( G tsums F ) <-> C = U. ( G tsums F ) ) ) $=
      ( ctsu co wcel cuni csn wceq c1o cen wbr cc0 cvv cpnf wf xrge0tsms2 sylib
      cicc syl2anc en1b eleq2d wb ovex uniex eleq1 mpbiri elsncg syl ibir elsni
      impbii syl6bbr ) ACEDJKZLCUTMZNZLZCVAOZAUTVBCAUTPQRZUTVBOABFLBSUAUEKDUBVE
      HIBDEFGUCUFUTUGUDUHVDVCVDVCVDCTLZVCVDUIVDVFVATLUTEDJUJUKCVATULUMCVATUNUOU
      PCVAUQURUS $.
    ${
      xrge0tsmseq.h $e |- ( ph -> C e. ( G tsums F ) ) $.
      $( Any limit of a finite or infinite sum in the nonnegative extended
         reals is the union of the sets limits, since this set is a singleton.
         (Contributed by Thierry Arnoux, 24-Mar-2017.) $)
      xrge0tsmseq $p |- ( ph -> C = U. ( G tsums F ) ) $=
        ( ctsu co cuni csn wcel c1o cen wbr wceq syl2anc cc0 cpnf wf xrge0tsms2
        cicc en1eqsn unieqd unisng syl eqtr2d ) AEDKLZMCNZMZCAUKULACUKOZUKPQRZU
        KULSJABFOBUAUBUELDUCUOHIBDEFGUDTCUKUFTUGAUNUMCSJCUKUHUIUJ $.
    $}
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
    Rings - misc additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    dvrdir.b $e |- B = ( Base ` R ) $.
    dvrdir.u $e |- U = ( Unit ` R ) $.
    dvrdir.p $e |- .+ = ( +g ` R ) $.
    dvrdir.t $e |- ./ = ( /r ` R ) $.
    $( Distributive law for the division operation of a ring.  (Contributed by
       Thierry Arnoux, 30-Oct-2017.) $)
    dvrdir $p |- ( ( R e. Ring /\ ( X e. B /\ Y e. B /\ Z e. U ) ) ->
                     ( ( X .+ Y ) ./ Z ) = ( ( X ./ Z ) .+ ( Y ./ Z ) ) ) $=
      ( crg wcel co cfv wceq eqid dvrval syl2anc w3a cinvr simpr1 simpr2 unitss
      wa cmulr simpl simpr3 unitinvcl syldan sseldi rngdir syl13anc cgrp rnggrp
      adantr grpcl syl3anc oveq12d 3eqtr4d ) DMNZFANZGANZHENZUAZUFZFGCOZHDUBPZP
      ZDUGPZOZFVJVKOZGVJVKOZCOZVHHBOZFHBOZGHBOZCOVGVBVCVDVJANVLVOQVBVFUHVBVCVDV
      EUCZVBVCVDVEUDZVGEAVJADEIJUEVBVFVEVJENVBVCVDVEUIZDEVIHJVIRZUJUKULACDVKFGV
      JIKVKRZUMUNVGVHANZVEVPVLQVGDUONZVCVDWDVBWEVFDUPUQVSVTACDFGIKURUSWAABDVKEV
      IVHHIWCJWBLSTVGVQVMVRVNCVGVCVEVQVMQVSWAABDVKEVIFHIWCJWBLSTVGVDVEVRVNQVTWA
      ABDVKEVIGHIWCJWBLSTUTVA $.

    rdivmuldivd.p $e |- .x. = ( .r ` R ) $.
    rdivmuldivd.r $e |- ( ph -> R e. CRing ) $.
    rdivmuldivd.a $e |- ( ph -> X e. B ) $.
    rdivmuldivd.b $e |- ( ph -> Y e. U ) $.
    rdivmuldivd.c $e |- ( ph -> Z e. B ) $.
    rdivmuldivd.d $e |- ( ph -> W e. U ) $.
    $( Multiplication of two ratios.  Theorem I.14 of [Apostol] p. 18.
       (Contributed by Thierry Arnoux, 30-Oct-2017.) $)
    rdivmuldivd $p |- ( ph -> ( ( X ./ Y ) .x. ( Z ./ W ) ) =
                             ( ( X .x. Z ) ./ ( Y .x. W ) ) ) $=
      ( co cinvr cfv wcel wceq wa eqid dvrval oveq1d syl2anc crg crngrng unitss
      ccrg unitinvcl sseldi dvrcl syl3anc rngass syl13anc crngcom oveq2d 3eqtrd
      syl cmgp cress cplusg cgrp unitgrp unitgrpbas invrfval grpinvadd cvv fvex
      cui eqeltri mgpress sylancl fveq2d cmulr ressmulr ax-mp mgpplusg syl6reqr
      oveqd 3eqtr4d rngcl unitmulcl eqtr4d 3eqtr3rd 3eqtr4rd eqtrd ) AIJCUBZKHC
      UBZFUBZIWOJEUCUDZUDZFUBZFUBZIKFUBZJHFUBZCUBZAWPIWRFUBZWOFUBZIWRWOFUBZFUBZ
      WTAIBUEZJGUEZWPXEUFRSXHXIUGWNXDWOFBCEFGWQIJLPMWQUHZOUIUJUKAEULUEZXHWRBUEZ
      WOBUEZXEXGUFAEUOUEZXKQEUMVEZRAGBWRBEGLMUNZAXKXIWRGUEXOSEGWQJMXJUPUKUQZAXK
      KBUEZHGUEZXMXOTUABCEGKHLMOURUSZBEFIWRWOLPUTVAAXFWSIFAXNXLXMXFWSUFQXQXTBEF
      WRWOLPVBUSVCVDAXAXBWQUDZFUBZXAHWQUDZWRFUBZFUBZXCWTAYAYDXAFAJHEVFUDZGVGUBZ
      VHUDZUBZWQUDZYCWRYHUBZYAYDAYGVIUEZXIXSYJYKUFAXKYLXOEGYGMYGUHZVJVESUAGYHYG
      WQJHEGYGMYMVKYHUHEGYGWQMYMXJVLVMUSAXBYIWQAFYHJHAYHEGVGUBZVFUDZVHUDFAYGYOV
      HAXKGVNUEZYGYOUFXOGEVPUDVNMEVPVOVQZGEYNYFULVNYNUHZYFUHVRVSVTYNFYOYOUHYPFY
      NWAUDUFYQGEYNFVNYRPWBWCWDWEZWFVTAFYHYCWRYSWFWGVCAXABUEZXBGUEZXCYBUFAXKXHX
      RYTXORTBEFIKLPWHUSZAXKXIXSUUAXOSUAEFGJHMPWIUSBCEFGWQXAXBLPMXJOUIUKAXAYCFU
      BZWRFUBZIWOFUBZWRFUBZYEWTAUUCUUEWRFAUUCIKYCFUBZFUBZUUEAXKXHXRYCBUEZUUCUUH
      UFXORTAGBYCXPAXKXSYCGUEXOUAEGWQHMXJUPUKUQZBEFIKYCLPUTVAAWOUUGIFAXRXSWOUUG
      UFTUABCEFGWQKHLPMXJOUIUKVCWJUJAXKYTUUIXLUUDYEUFXOUUBUUJXQBEFXAYCWRLPUTVAA
      XKXHXMXLUUFWTUFXORXTXQBEFIWOWRLPUTVAWKWLWM $.
  $}

  ${
    $d y R $.  $d y U $.  $d y X $.
    rnginvval.b $e |- B = ( Base ` R ) $.
    rnginvval.p $e |- .* = ( .r ` R ) $.
    rnginvval.o $e |- .1. = ( 1r ` R ) $.
    rnginvval.n $e |- N = ( invr ` R ) $.
    rnginvval.u $e |- U = ( Unit ` R ) $.
    $( The ring inverse expressed in terms of multiplication.  (Contributed by
       Thierry Arnoux, 23-Oct-2017.) $)
    rnginvval $p |- ( ( R e. Ring /\ X e. U ) ->
                             ( N ` X ) = ( iota_ y e. U ( y .* X ) = .1. ) ) $=
      ( wcel wa cfv co wceq eqid cvv crg cv cmgp c0g crio unitgrpbas cplusg cui
      cress fvex eqeltri mgpplusg ressplusg invrfval grpinvval adantl unitgrpid
      ax-mp adantr eqeq2d riotabidva eqtr4d ) CUANZHDNZOHGPZAUBZHFQZCUCPZDUIQZU
      DPZRZADUEZVGERZADUEZVDVEVLRVCADFVIGHVJCDVIMVISZUFDTNFVIUGPRDCUHPTMCUHUJUK
      DFVHVITVOCFVHVHSJULUMURVJSCDVIGMVOLUNUOUPVCVNVLRVDVCVMVKADVCVFDNZOEVJVGVC
      EVJRVPCDEVIMVOKUQUSUTVAUSVB $.
  $}

  ${
    dvrcan5.b $e |- B = ( Base ` R ) $.
    dvrcan5.o $e |- U = ( Unit ` R ) $.
    dvrcan5.d $e |- ./ = ( /r ` R ) $.
    dvrcan5.t $e |- .x. = ( .r ` R ) $.
    $( Cancellation law for common factor in ratio.  ( ~ divcan5 analog.)
       (Contributed by Thierry Arnoux, 26-Oct-2016.) $)
    dvrcan5 $p |- ( ( R e. Ring /\ ( X e. B /\ Y e. U /\ Z e. U ) ) ->
      ( ( X .x. Z ) ./ ( Y .x. Z ) ) = ( X ./ Y ) ) $=
      ( wcel co cfv wceq sseldi eqid syl2anc cvv crg w3a wa cinvr unitss simpr3
      unitmulcl 3adant3r1 dvrval cmgp cress simpl unitgrp syl simpr2 unitgrpbas
      cgrp cplusg cui fvex eqeltri mgpplusg ressplusg invrfval grpinvadd oveq2d
      syl3anc cur unitrinv oveq1d 3ad2antr3 unitinvcl 3ad2antr2 rngass syl13anc
      ax-mp rnglidm 3eqtr3d 3eqtrd simpr1 dvrass 3eqtr4d ) CUAMZFAMZGEMZHEMZUBZ
      UCZFHGHDNZBNZDNZFGCUDOZOZDNZFHDNWIBNZFGBNZWHWJWMFDWHWJHWIWLOZDNZHHWLOZWMD
      NZDNZWMWHHAMZWIEMZWJWRPWHEAHACEIJUEZWCWDWEWFUFZQZWCWEWFXCWDCDEGHJLUGUHZAB
      CDEWLHWIILJWLRZKUISWHCUJOZEUKNZUQMZWEWFWRXAPWHWCXKWCWGULZCEXJJXJRZUMUNWCW
      DWEWFUOZXEXKWEWFUBWQWTHDEDXJWLGHCEXJJXMUPETMDXJUROPECUSOTJCUSUTVAEDXIXJTX
      MCDXIXIRLVBVCVPCEXJWLJXMXHVDVEVFVGWHHWSDNZWMDNZCVHOZWMDNZXAWMWCWDWFXPXRPW
      EWCWFUCXOXQWMDCDEXQWLHJXHLXQRZVIVJVKWHWCXBWSAMWMAMZXPXAPXLXFWHEAWSXDWCWDW
      FWSEMWECEWLHJXHVLVKQWHEAWMXDWCWDWEWMEMWFCEWLGJXHVLVMQZACDHWSWMILVNVOWHWCX
      TXRWMPXLYAACDXQWMILXSVQSVRVSVFWHWCWDXBXCWOWKPXLWCWDWEWFVTZXFXGABCDEFHWIIJ
      KLWAVOWHWDWEWPWNPYBXNABCDEWLFGILJXHKUISWB $.
  $}

  ${
    $( If ` A ` is a subring of ` R ` , then they have the same
       characteristic.  (Contributed by Thierry Arnoux, 24-Feb-2018.) $)
    subrgchr $p |- ( A e. ( SubRing ` R ) ->
      ( chr ` ( R |`s A ) ) = ( chr ` R ) ) $=
      ( csubrg cfv wcel cress cur cod cchr csubg wceq subrgsubg subrg1cl subgod
      co eqid syl2anc subrg1 fveq2d chrval eqtr2d 3eqtr3g ) ABCDEZBAFOZGDZUDHDZ
      DZBGDZBHDZDZUDIDZBIDZUCUJUHUFDZUGUCABJDEUHAEUJUMKABLABUHUHPZMUHUFBUDUIAUD
      PZUIPZUFPZNQUCUHUEUFABUDUHUOUNRSUAUKUDUEUFUQUEPUKPTULBUHUIUPUNULPTUB $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
    Ordered groups
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $c oGrp $.

  $( Extend class notation with the class of all ordered groups. $)
  cogrp $a class oGrp $.

  ${
    $d a b c g l p v z $.
    $( Define class of all ordered groups.  An ordered group is a group with a
       total ordering compatible with its operation.  (Contributed by Thierry
       Arnoux, 30-Jan-2018.) $)
    df-ogrp $a |- oGrp = { g e. Grp | [. ( Base ` g ) / v ].
      [. ( +g ` g ) / p ]. [. ( le ` g ) / l ]. ( g e. Toset /\
      A. a e. v A. b e. v A. c e. v ( a l b -> ( a p c ) l ( b p c ) ) ) } $.
  $}

$(
  @{
    @d a b c f l p t v z B @.  @d a b c f l p t v z F @.  @d f l p t z .+ @.
    @d f l t z .0. @.  @d f l .<_ @.  @d f l t .x. @.
    isogrp.0 @e |- B = ( Base ` G ) @.
    isogrp.1 @e |- .+ = ( +g ` G ) @.
    isogrp.2 @e |- .<_ = ( le ` G ) @.
    @( An ordered group is a group with a total ordering compatible with its
       operation.  (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    isogrp @p |- ( G e. oGrp <-> ( G e. Grp /\ G e. Toset /\
      A. a e. B A. b e. B A. c e. B ( a .<_ b -> ( a .+ c ) .<_ ( b .+ c ) )
      ) ) @=
      ? @.
  @}

  @{
    @d x y z F @.
    @( An ordered group is a group.  (Contributed by Thierry Arnoux,
       20-Jan-2018.) @)
    ogrpgrp @p |- ( G e. oGrp -> G e. Grp ) @=
      ? @.

    @( An ordered group is a totally ordered set.  (Contributed by Thierry
       Arnoux, 30-Jan-2018.) @)
    ogrptos @p |- ( G e. oGrp -> G e. Toset ) @=
      ? @.

    ogrpadd.0 @e |- B = ( Base ` G ) @.
    ogrpadd.1 @e |- .<_ = ( le ` G ) @.
    ogrpadd.2 @e |- .+ = ( +g ` G ) @.
    @( In an ordered group, the ordering is compatible with group addition.
       (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    ogrpadd @p |- ( ( G e. oGrp /\ ( X e. B /\ Y e. B /\ Z e. B )
      /\ X .<_ Y ) -> ( X .+ Z ) .<_ ( Y .+ Z ) ) @=
      ? @.

    @{
      ogrpsub.2 @e |- .- = ( -g ` G ) @.
      @( In an ordered group, the ordering is compatible with group subtraction
         (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
      ogrpsub @p |- ( ( G e. oGrp /\ ( X e. B /\ Y e. B /\ Z e. B )
        /\ X .<_ Y ) -> ( X .- Z ) .<_ ( Y .- Z ) ) @=
        ? @.
    @}

    ogrpmul.2 @e |- .x. = ( .g ` G ) @.
    @( In an ordered group, the ordering is compatible with group power.
       (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    ogrpmul @p |- ( ( G e. oGrp /\ ( X e. B /\ Y e. B /\ N e. NN )
      /\ X .<_ Y ) -> ( N .x. X ) .<_ ( N .x. Y ) ) @=
      ? @.

    ogrpmul.3 @e |- .0. = ( 0g ` G ) @.
    @( In an ordered group, the ordering is compatible with group power.
       (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    ogrpmul2 @p |- ( ( G e. oGrp /\ ( X e. B /\ N e. NN ) /\ .0. .<_ X ) ->
      .0. .<_ ( N .x. Y ) ) @=
      ? @.

    ogrpneg.4 @e |- I = ( invg ` G ) @.
    @( In an ordered group, the ordering is compatible with group power.
       (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    ogrpneg @p |- ( ( G e. oGrp /\ X e. B /\ .0. .<_ X ) -> ( I ` X ) .<_ .0. )
      @=
      ? @.

    @( In an ordered group, commuting an operation preserves sign.
       (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    ogrpcom @p |- ( ( ( G e. oGrp /\ X e. B /\ Y e. B ) /\ .0. .<_ ( X .+ Y ) )
      -> .0. .<_ ( Y .+ X ) ) @=
      ? @.
  @}

  @{
    ogrpltadd.0 @e |- B = ( Base ` G ) @.
    ogrpltadd.1 @e |- .< = ( lt ` G ) @.
    ogrpltadd.2 @e |- .+ = ( +g ` G ) @.
    @( In an ordered group, the ordering is compatible with group addition.
       (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    ogrpltadd @p |- ( ( G e. oGrp /\ ( X e. B /\ Y e. B /\ Z e. B )
      /\ X .< Y ) -> ( X .+ Z ) .< ( Y .+ Z ) ) @=
      ? @.
  @}
$)

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
    Ordered fields
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $c oField $.

  $( Extend class notation with the class of all ordered fields. $)
  cofld $a class oField $.

  ${
    $d a b c f l p t v z $.
    $( Define class of all ordered fields.  An ordered field is a field with a
       total ordering compatible with the operations.  (Contributed by Thierry
       Arnoux, 18-Jan-2018.) $)
    df-ofld $a |- oField = { f e. Field | [. ( Base ` f ) / v ].
      [. ( +g ` f ) / p ]. [. ( 0g ` f ) / z ]. [. ( .r ` f ) / t ].
      [. ( le ` f ) / l ]. ( f e. Toset /\ A. a e. v A. b e. v
        ( A. c e. v ( a l b -> ( a p c ) l ( b p c ) )
        /\ ( ( z l a /\ z l b ) -> z l ( a t b ) ) ) ) } $.
  $}

  ${
    $d a b c f l p t v z B $.  $d a b c f l p t v z F $.  $d f l p t z .+ $.
    $d f l t z .0. $.  $d f l .<_ $.  $d f l t .x. $.
    isofld.0 $e |- B = ( Base ` F ) $.
    isofld.1 $e |- .+ = ( +g ` F ) $.
    isofld.2 $e |- .0. = ( 0g ` F ) $.
    isofld.3 $e |- .x. = ( .r ` F ) $.
    isofld.4 $e |- .<_ = ( le ` F ) $.
    $( An ordered field is a field with a total ordering compatible with the
       operations.  (Contributed by Thierry Arnoux, 18-Jan-2018.) $)
    isofld $p |- ( F e. oField <-> ( F e. Field /\ F e. Toset /\
      A. a e. B A. b e. B ( A. c e. B ( a .<_ b -> ( a .+ c ) .<_ ( b .+ c ) )
      /\ ( ( .0. .<_ a /\ .0. .<_ b ) -> .0. .<_ ( a .x. b ) ) ) ) ) $=
      ( vl wbr wral wa wsbc wceq vf vp vv vz vt cofld wcel cfield ctos cv co wi
      w3a cple cfv cmulr c0g cplusg cbs cvv fvex a1i simpr fveq2 adantr syl6eqr
      wb eqtrd raleq anbi1d raleqbi1dv syl anbi2d sbcbidv sbcied breq12d imbi2d
      oveqd ralbidv breq1d anbi12d 3bitrd breq2d simpl fveq2d breqd eleq1 bitrd
      2ralbidv imbi12d df-ofld elrab2 3anass bitr4i ) DUFUGDUHUGZDUIUGZGUJZHUJZ
      EPZWQIUJZBUKZWRWTBUKZEPZULZIAQZFWQEPZFWREPZRZFWQWRCUKZEPZULZRZHAQGAQZRZRW
      OWPXMUMUAUJZUIUGZWQWROUJZPZWQWTUBUJZUKZWRWTXSUKZXQPZULZIUCUJZQZUDUJZWQXQP
      ZYFWRXQPZRZYFWQWRUEUJZUKZXQPZULZRZHYDQZGYDQZRZOXOUNUOZSZUEXOUPUOZSZUDXOUQ
      UOZSZUBXOURUOZSZUCXOUSUOZSZXNUADUHUFXODTZUUGXPXRXAXBXQPZULZIAQZFWQXQPZFWR
      XQPZRZFYKXQPZULZRZHAQGAQZRZOYRSZUEYTSZXNUUHUUGXPYCIAQZYMRZHAQZGAQZRZOYRSZ
      UEYTSZUDUUBSZUBUUDSZXPUUKYMRZHAQGAQZRZOYRSZUEYTSZUDUUBSZUVAUUHUUEUVJUCUUF
      UTUUFUTUGUUHXOUSVAVBUUHYDUUFTZRZUUCUVIUBUUDUVRUUAUVHUDUUBUVRYSUVGUEYTUVRY
      QUVFOYRUVRYPUVEXPUVRYDATZYPUVEVGUVRYDDUSUOZAUVRYDUUFUVTUUHUVQVCUUHUUFUVTT
      UVQXODUSVDVEVHJVFYOUVDGYDAYNUVCHYDAUVSYEUVBYMYCIYDAVIVJVKVKVLVMVNVNVNVNVO
      UUHUVIUVPUBUUDUTUUDUTUGUUHXOURVAVBUUHXSUUDTZRZUVHUVOUDUUBUWBUVGUVNUEYTUWB
      UVFUVMOYRUWBUVEUVLXPUWBUVCUVKGHAAUWBUVBUUKYMUWBYCUUJIAUWBYBUUIXRUWBXTXAYA
      XBXQUWBXSBWQWTUWBXSDURUOZBUWBXSUUDUWCUUHUWAVCUUHUUDUWCTUWAXODURVDVEVHKVFZ
      VRUWBXSBWRWTUWDVRVPVQVSVJWIVMVNVNVNVOUUHUVOUVAUDUUBUTUUBUTUGUUHXOUQVAVBUU
      HYFUUBTZRZUVNUUTUEYTUWFUVMUUSOYRUWFUVLUURXPUWFUVKUUQGHAAUWFYMUUPUUKUWFYIU
      UNYLUUOUWFYGUULYHUUMUWFYFFWQXQUWFYFDUQUOZFUWFYFUUBUWGUUHUWEVCUUHUUBUWGTUW
      EXODUQVDVEVHLVFZVTUWFYFFWRXQUWHVTWAUWFYFFYKXQUWHVTWJVMWIVMVNVNVOWBUUHUVAX
      PUUKUUNFXIXQPZULZRZHAQGAQZRZOYRSZXPXMRZXNUUHUUTUWNUEYTUTYTUTUGUUHXOUPVAVB
      UUHYJYTTZRZUUSUWMOYRUWQUURUWLXPUWQUUQUWKGHAAUWQUUPUWJUUKUWQUUOUWIUUNUWQYK
      XIFXQUWQYJCWQWRUWQYJDUPUOZCUWQYJYTUWRUUHUWPVCUUHYTUWRTUWPXODUPVDVEVHMVFVR
      WCVQVMWIVMVNVOUUHUWMUWOOYRUTYRUTUGUUHXOUNVAVBUUHXQYRTZRZUWLXMXPUWTUWKXLGH
      AAUWTUUKXEUWJXKUWTUUJXDIAUWTXRWSUUIXCUWTXQEWQWRUWTXQDUNUOZEUWTXQYRUXAUUHU
      WSVCUWTXODUNUUHUWSWDWEVHNVFZWFUWTXQEXAXBUXBWFWJVSUWTUUNXHUWIXJUWTUULXFUUM
      XGUWTXQEFWQUXBWFUWTXQEFWRUXBWFWAUWTXQEFXIUXBWFWJWAWIVMVOUUHXPWPXMXODUIWGV
      JWBWHUDUCUEUAUBGHIOWKWLWOWPXMWMWN $.
  $}

  ${
    $d x y z F $.
    $( An ordered field is a field.  (Contributed by Thierry Arnoux,
       20-Jan-2018.) $)
    ofldfld $p |- ( F e. oField -> F e. Field ) $=
      ( vx vy vz cofld wcel cfield ctos cv cple cfv wbr cplusg co wi cbs c0g wa
      wral eqid cmulr isofld simp1bi ) AEFAGFAHFBIZCIZAJKZLUDDIZAMKZNUEUGUHNUFL
      ODAPKZSAQKZUDUFLUJUEUFLRUJUDUEAUAKZNUFLORCUISBUISUIUHUKAUFUJBCDUITUHTUJTU
      KTUFTUBUC $.

    $( An ordered field is a totally ordered set.  (Contributed by Thierry
       Arnoux, 20-Jan-2018.) $)
    ofldtos $p |- ( F e. oField -> F e. Toset ) $=
      ( vx vy vz cofld wcel cfield ctos cv cple cfv wbr cplusg co wi cbs c0g wa
      wral eqid cmulr isofld simp2bi ) AEFAGFAHFBIZCIZAJKZLUDDIZAMKZNUEUGUHNUFL
      ODAPKZSAQKZUDUFLUJUEUFLRUJUDUEAUAKZNUFLORCUISBUISUIUHUKAUFUJBCDUITUHTUJTU
      KTUFTUBUC $.

    $d a b c B $.  $d a b c F $.  $d a b c X $.  $d b c Y $.  $d c Z $.
    $d a b c .<_ $.
    ofldadd.0 $e |- B = ( Base ` F ) $.
    ofldadd.1 $e |- .<_ = ( le ` F ) $.
    ${
      $d a b c .+ $.
      ofldadd.2 $e |- .+ = ( +g ` F ) $.
      $( In an ordered field, the ordering is compatible with group addition.
         (Contributed by Thierry Arnoux, 20-Jan-2018.) $)
      ofldadd $p |- ( ( F e. oField /\ ( X e. B /\ Y e. B /\ Z e. B )
        /\ X .<_ Y ) -> ( X .+ Z ) .<_ ( Y .+ Z ) ) $=
        ( vc vb va wcel wbr co wi wral wa imbi12d cofld w3a cv c0g cmulr cfield
        ctos eqid isofld simp3bi 3ad2ant1 wceq breq1 oveq1 breq1d ralbidv breq2
        cfv anbi1d breq2d anbi12d rspcv 3ad2ant2 mpd anbi2d oveq2 simp3 breq12d
        simpld imbi2d 3ad2ant3 mp2d ) CUANZEANZFANZGANZUBZEFDOZUBZVREKUCZBPZFVT
        BPZDOZQZKARZVREGBPZFGBPZDOZVSWECUDURZEDOZWIFDOZSZWIEFCUEURZPZDOZQZVSELU
        CZDOZWAWQVTBPZDOZQZKARZWJWIWQDOZSZWIEWQWMPZDOZQZSZLARZWEWPSZVSMUCZWQDOZ
        XKVTBPZWSDOZQZKARZWIXKDOZXCSZWIXKWQWMPZDOZQZSZLARZMARZXIVMVQYDVRVMCUFNC
        UGNYDABWMCDWIMLKHJWIUHWMUHIUIUJUKVQVMYDXIQZVRVNVOYEVPYCXIMEAXKEULZYBXHL
        AYFXPXBYAXGYFXOXAKAYFXLWRXNWTXKEWQDUMYFXMWAWSDXKEVTBUNUOTUPYFXRXDXTXFYF
        XQWJXCXKEWIDUQUSYFXSXEWIDXKEWQWMUNUTTVAUPVBUKVCVDVQVMXIXJQZVRVOVNYGVPXH
        XJLFAWQFULZXBWEXGWPYHXAWDKAYHWRVRWTWCWQFEDUQYHWSWBWADWQFVTBUNUTTUPYHXDW
        LXFWOYHXCWKWJWQFWIDUQVEYHXEWNWIDWQFEWMVFUTTVAVBVCVCVDVIVMVQVRVGVQVMWEVR
        WHQZQZVRVPVNYJVOWDYIKGAVTGULZWCWHVRYKWAWFWBWGDVTGEBVFVTGFBVFVHVJVBVKVCV
        L $.
    $}

    ${
      $d a b .x. $.  $d a b .0. $.
      ofldmul.2 $e |- .0. = ( 0g ` F ) $.
      ofldmul.3 $e |- .x. = ( .r ` F ) $.
      $( In an ordered field, the ordering is compatible with the ring
         multiplication operation.  (Contributed by Thierry Arnoux,
         20-Jan-2018.) $)
      ofldmul $p |- ( ( F e. oField
        /\ ( X e. B /\ .0. .<_ X ) /\ ( Y e. B /\ .0. .<_ Y ) )
        -> .0. .<_ ( X .x. Y ) ) $=
        ( vc vb va wcel wbr wa co wi wral cofld w3a simp2r simp3r cv cplusg cfv
        cfield ctos eqid isofld simp3bi wceq breq1 oveq1 breq1d imbi12d ralbidv
        3ad2ant1 breq2 anbi1d breq2d anbi12d rspcv adantr 3ad2ant2 anbi2d oveq2
        mpd 3ad2ant3 simprd mp2and ) CUAOZEAOZGEDPZQZFAOZGFDPZQZUBZVOVRGEFBRZDP
        ZVMVNVOVSUCVMVPVQVRUDVTEFDPZELUEZCUFUGZRZFWDWERZDPZSZLATZVOVRQZWBSZVTEM
        UEZDPZWFWMWDWERZDPZSZLATZVOGWMDPZQZGEWMBRZDPZSZQZMATZWJWLQZVTNUEZWMDPZX
        GWDWERZWODPZSZLATZGXGDPZWSQZGXGWMBRZDPZSZQZMATZNATZXEVMVPXTVSVMCUHOCUIO
        XTAWEBCDGNMLHWEUJJKIUKULUSVPVMXTXESZVSVNYAVOXSXENEAXGEUMZXRXDMAYBXLWRXQ
        XCYBXKWQLAYBXHWNXJWPXGEWMDUNYBXIWFWODXGEWDWEUOUPUQURYBXNWTXPXBYBXMVOWSX
        GEGDUTVAYBXOXAGDXGEWMBUOVBUQVCURVDVEVFVIVSVMXEXFSZVPVQYCVRXDXFMFAWMFUMZ
        WRWJXCWLYDWQWILAYDWNWCWPWHWMFEDUTYDWOWGWFDWMFWDWEUOVBUQURYDWTWKXBWBYDWS
        VRVOWMFGDUTVGYDXAWAGDWMFEBVHVBUQVCVDVEVJVIVKVL $.

      $( In an ordered field, all squares are positive.  (Contributed by
         Thierry Arnoux, 20-Jan-2018.) $)
      ofldsqr $p |- ( ( F e. oField /\ X e. B ) -> .0. .<_ ( X .x. X ) ) $=
        ( wcel wa wbr co cfv 3syl syl eqid wceq wo cofld simpll simpr syl122anc
        simplr ofldmul cminusg cgrp crg cfield cdr ofldfld ccrg simplbi drngrng
        wn isfld ad2antrr rnggrp grpinvcl syl2anc cplusg grpidcl cplt w3a simpl
        3jca pltle con3and sylan w3o wor ctos ofldtos cid cres wss tosso simpld
        ibi solin syl12anc 3orass sylib orel1 sylc orcom eqcom orbi2i bitri cpo
        tospos pleval2 syl3anc mpbird ofldadd syl131anc grprinv grplid rngm2neg
        wb 3brtr3d breqtrd pm2.61dan ) CUAKZEAKZLZFEDMZFEEBNZDMZXGXHLXEXFXHXFXH
        XJXEXFXHUBXEXFXHUEZXGXHUCZXKXLABCDEEFGHIJUFUDXGXHUPZLZFECUGOZOZXPBNZXID
        XNXEXPAKZFXPDMZXRXSFXQDMXEXFXMUBZXNCUHKZXFXRXNCUIKZYAXEYBXFXMXECUJKZCUK
        KZYBCULYCYDCUMKCUQUNCUOPZURZCUSZQZXEXFXMUEZACXOEGXORZUTVAZXNEXPCVBOZNZF
        XPYLNZFXPDXNXEXFFAKZXREFDMZYMYNDMXTYIXNYAYOYHACFGIVCZQZYKXNYPEFCVDOZMZE
        FSZTZXNFESZYTTZUUBXNFEYSMZUPZUUEUUDTZUUDXGXEYOXFVEZXMUUFXGXEYOXFXEXFVFZ
        XGXEYOUUIXEYBYAYOYEYGYQPQXEXFUCVGUUHUUEXHUAAAYSCDFEHYSRZVHVIVJXNUUEUUCY
        TVKZUUGXNAYSVLZYOXFUUKXNXECVMKZUULXTCVNZUUMUULVOAVPDVQZUUMUULUUOLAYSCDV
        MGHUUJVRVTVSPYRYIAFEYSWAWBUUEUUCYTWCWDUUEUUDWEWFUUDYTUUCTUUBUUCYTWGUUCU
        UAYTFEWHWIWJWDXNCWKKZXFYOYPUUBXAXNXEUUMUUPXTUUNCWLPYIYRAYSCDEFGHUUJWMWN
        WOAYLCDEFXPGHYLRZWPWQXNYAXFYMFSYHYIAYLCXOEFGUUQIYJWRVAXNYAXRYNXPSYHYKAY
        LCXPFGUUQIWSVAXBZYKUURABCDXPXPFGHIJUFUDXNACBXOEEGJYJYFYIYIWTXCXD $.
    $}
  $}

  ${
    $( TODO: Could be shortened using ~ grprcan instead of ~ grppncan $)
    ofldaddlt.0 $e |- B = ( Base ` F ) $.
    ofldaddlt.1 $e |- .< = ( lt ` F ) $.
    ofldaddlt.2 $e |- .+ = ( +g ` F ) $.
    $( In an ordered field, the ordering is compatible with group addition.
       (Contributed by Thierry Arnoux, 20-Jan-2018.) $)
    ofldaddlt $p |- ( ( F e. oField /\ ( X e. B /\ Y e. B /\ Z e. B )
      /\ X .< Y ) -> ( X .+ Z ) .< ( Y .+ Z ) ) $=
      ( cofld wcel w3a wbr co cfv wne wa wceq cvv cple simp1 simp21 simp22 eqid
      simp3 pltle syl31anc ofldadd syld3an3 pltne simpr oveq1d cgrp cfield ccrg
      imp csg crg ofldfld cdr isfld simprbi crngrng rnggrp 4syl simplr1 simplr3
      ad2antrr syl3anc simplr2 3eqtr3d ex necon3d 3impia wb ovex pltval mp3an23
      grppncan 3ad2ant1 mpbir2and ) DKLZEALZFALZGALZMZEFCNZMZEGBOZFGBOZCNZWJWKD
      UAPZNZWJWKQZWCWGWHEFWMNZWNWIWCWDWEWHWPWCWGWHUBZWCWDWEWFWHUCZWCWDWEWFWHUDZ
      WCWGWHUFZWCWDWEMZWHWPKAACDWMEFWMUEZIUGUQUHABDWMEFGHXBJUIUJWCWGWHEFQZWOWIW
      CWDWEWHXCWQWRWSWTXAWHXCKAACDEFIUKUQUHWCWGXCWOWCWGRZWJWKEFXDWJWKSZEFSXDXER
      ZWJGDURPZOZWKGXGOZEFXFWJWKGXGXDXEULUMXFDUNLZWDWFXHESWCXJWGXEWCDUOLZDUPLZD
      USLXJDUTXKDVALXLDVBVCDVDDVEVFVIZWDWEWFWCXEVGWDWEWFWCXEVHZABDXGEGHJXGUEZVT
      VJXFXJWEWFXIFSXMWDWEWFWCXEVKXNABDXGFGHJXOVTVJVLVMVNVOUJWCWGWLWNWORVPZWHWC
      WJTLWKTLXPEGBVQFGBVQKTTCDWMWJWKXBIVRVSWAWB $.
  $}

  ${
    ofld0le1.1 $e |- .0. = ( 0g ` F ) $.
    ofld0le1.2 $e |- .1. = ( 1r ` F ) $.
    ${
      ofld0le1.3 $e |- .<_ = ( le ` F ) $.
      $( In an ordered field, the ring unit is positive.  (Contributed by
         Thierry Arnoux, 21-Jan-2018.) $)
      ofld0le1 $p |- ( F e. oField -> .0. .<_ .1. ) $=
        ( cofld wcel cmulr cfv co cbs wbr crg cfield ccrg ofldfld cdr eqid 3syl
        isfld simprbi crngrng rngidcl syl ofldsqr mpdan rnglidm syl2anc breqtrd
        wceq ) BHIZDAABJKZLZACUMABMKZIZDUOCNUMBOIZUQUMBPIZBQIZURBRUSBSIUTBUBUCB
        UDUAZUPBAUPTZFUEUFZUPUNBCADVBGEUNTZUGUHUMURUQUOAULVAVCUPBUNAAVBVDFUIUJU
        K $.
    $}

    ${
      ofld0lt1.3 $e |- .< = ( lt ` F ) $.
      $( In an ordered field, the ring unit is strictly positive.  (Contributed
         by Thierry Arnoux, 21-Jan-2018.) $)
      ofldlt1 $p |- ( F e. oField -> .0. .< .1. ) $=
        ( cofld wcel wbr cple cfv wne eqid ofld0le1 cvv c0g fvex eqeltri cur wa
        cfield ofldfld ccrg isfld simplbi drngunz 3syl necomd wb pltval mp3an23
        cdr mpbir2and ) CHIZDBAJZDBCKLZJZDBMZBCUQDEFUQNZOUOBDUOCUBIZCUMIZBDMCUC
        VAVBCUDICUEUFCBDEFUGUHUIUODPIBPIUPURUSUAUJDCQLPECQRSBCTLPFCTRSHPPACUQDB
        UTGUKULUN $.
    $}
  $}

  ${
    $d m n F $.  $d n y F $.
    $( The characteristic of an ordered field is zero.  (Contributed by Thierry
       Arnoux, 21-Jan-2018.) $)
    ofldchr $p |- ( F e. oField -> ( chr ` F ) = 0 ) $=
      ( vy wcel cfv cc0 eqid cv co wceq cn wa wbr wi c1 oveq1 breq2d imbi2d syl
      ad2antlr cvv vn vm cofld cchr cur cod chrval cmg c0g crab c0 cr ccnv csup
      clt cif crg cbs cdr ofldfld ccrg isfld simplbi drngrng 3syl rngidcl odval
      cfield wn wral cplt wne caddc ofldlt1 mulg1 breqtrrd cpo w3a ctos ofldtos
      tospos cgrp rnggrp grpidcl grpmnd simpll mulgnncl syl3anc peano2nnd simpr
      cmnd 3jca cplusg simplr ofldaddlt syl131anc grplid eqcomd mulgnnp1 rngcmn
      syl2anc ccmn cmncom eqtrd 3brtr4d plttr imp syl22anc exp31 a2d nnind fvex
      impcom ovex pltne adantr mpd necomd neneqd ralrimiva rabeq0 sylibr iftrue
      mp3an23 syl5eqr ) AUCCZAUDDZAUEDZAUFDZDZEYGAYHYIYIFZYHFZYGFUGYFYJBGZYHAUH
      DZHZAUIDZIZBJUJZUKIZEYRULUOUMUNZUPZEYFAUQCZYHAURDZCZYJUUAIYFAVHCZAUSCZUUB
      AUTUUEUUFAVACAVBVCAVDVEZUUCAYHUUCFZYLVFZBYHYNAYRYIUUCYPUUHYNFZYPFZYKYRFVG
      VEYFYSUUAEIYFYQVIZBJVJYSYFUULBJYFYMJCZKZYOYPUUNYPYOUUNYPYOAVKDZLZYPYOVLZU
      UMYFUUPYFYPUAGZYHYNHZUUOLZMYFYPNYHYNHZUUOLZMYFYPUBGZYHYNHZUUOLZMYFYPUVCNV
      MHZYHYNHZUUOLZMYFUUPMUAUBYMUURNIZUUTUVBYFUVIUUSUVAYPUUOUURNYHYNOPQUURUVCI
      ZUUTUVEYFUVJUUSUVDYPUUOUURUVCYHYNOPQUURUVFIZUUTUVHYFUVKUUSUVGYPUUOUURUVFY
      HYNOPQUURYMIZUUTUUPYFUVLUUSYOYPUUOUURYMYHYNOPQYFYPYHUVAUUOUUOYHAYPUUKYLUU
      OFZVNZYFUUDUVAYHIYFUUBUUDUUGUUIRZUUCYNAYHUUHUUJVORVPUVCJCZYFUVEUVHUVPYFUV
      EUVHUVPYFKZUVEKZAVQCZYPUUCCZUVDUUCCZUVGUUCCZVRZUVEUVDUVGUUOLZUVHYFUVSUVPU
      VEYFAVSCUVSAVTAWARSUVRUVTUWAUWBUVRAWBCZUVTYFUWEUVPUVEYFUUBUWEUUGAWCRSZUUC
      AYPUUHUUKWDRZUVRAWKCZUVPUUDUWAUVRUWEUWHUWFAWERZUVPYFUVEWFZYFUUDUVPUVEUVOS
      ZUUCYNAUVCYHUUHUUJWGWHZUVRUWHUVFJCUUDUWBUWIUVRUVCUWJWIUWKUUCYNAUVFYHUUHUU
      JWGWHWLUVQUVEWJUVRYPUVDAWMDZHZYHUVDUWMHZUVDUVGUUOUVRYFUVTUUDUWAYPYHUUOLZU
      WNUWOUUOLUVPYFUVEWNZUWGUWKUWLYFUWPUVPUVEUVNSUUCUWMUUOAYPYHUVDUUHUVMUWMFZW
      OWPUVRUWNUVDUVRUWEUWAUWNUVDIUWFUWLUUCUWMAUVDYPUUHUWRUUKWQXAWRUVRUVGUVDYHU
      WMHZUWOUVRUVPUUDUVGUWSIUWJUWKUUCUWMYNAUVCYHUUHUUJUWRWSXAUVRAXBCZUWAUUDUWS
      UWOIUVRYFUUBUWTUWQUUGAWTVEUWLUWKUUCUWMAUVDYHUUHUWRXCWHXDXEUVSUWCKUVEUWDKU
      VHUUCUUOAYPUVDUVGUUHUVMXFXGXHXIXJXKXMYFUUPUUQMZUUMYFYPTCYOTCUXAAUIXLYMYHY
      NXNUCTTUUOAYPYOUVMXOYDXPXQXRXSXTYQBJYAYBYSEYTYCRXDYE $.
  $}

  ${
    $d a b c x y A $.  $d a b c x y F $.
    $( Every subfield of an ordered field is also an ordered field.
       (Contributed by Thierry Arnoux, 21-Jan-2018.) $)
    subofld $p |- ( ( F e. oField /\ ( F |`s A ) e. Field )
      -> ( F |`s A ) e. oField ) $=
      ( va vb vc vx wcel cress co wa cv cfv wbr cvv adantr wceq eqid syl sseldd
      c0 vy cofld cfield ctos cple cplusg wi cbs wral c0g cmulr simpr reldmress
      ofldtos wn ovprc2 fveq2d adantl base0 syl6eqr wne wreu wrex crg cdr isfld
      ccrg simprbi crngrng rngideu reurex rexn0 ad2antlr neneqd resstos syl2anc
      3syl condan simp-5l wss ad2antrr cin ressbas inss2 simp-4r simpllr simplr
      syl6eqssr ressle breqd biimpar ofldadd syl131anc ressplusg oveqd breq123d
      wb mpbid ralrimiva simp-4l ad3antrrr simprl cgrp ofldfld rnggrp ressinbas
      ex csubg oveq2d eqtrd eqeltrrd issubg syl3anbrc subg0 eqtr4d eqidd mpbird
      4syl jca simprr ofldmul syl3anc ressmulr isofld ) BUBGZBAHIZUCGZJZYGYFUDG
      ZCKZDKZYFUELZMZYJEKZYFUFLZIZYKYNYOIZYLMZUGZEYFUHLZUIZYFUJLZYJYLMZUUBYKYLM
      ZJZUUBYJYKYFUKLZIZYLMZUGZJZDYTUIZCYTUIYFUBGYEYGULZYHBUDGZANGZYIYEUUMYGBUN
      OYHUUNYTTPYHUUNUOZJZYTTUHLZTUUOYTUUQPYHUUOYFTUHBAHUMUPUQURUSUTUUPYTTYGYTT
      VAZYEUUOYGFKZUAKZUUFIUUTPUUTUUSUUFIUUTPJUAYTUIZFYTVBZUVAFYTVCUURYGYFVGGZY
      FVDGZUVBYGYFVEGUVCYFVFVHZYFVIZUAFYTYFUUFYTQZUUFQZVJVQUVAFYTVKUVAFYTVLVQVM
      VNVRZABNVOVPYHUUKCYTYHYJYTGZJZUUJDYTUVKYKYTGZJZUUAUUIUVMYSEYTUVMYNYTGZJZY
      MYRUVOYMJZYJYNBUFLZIZYKYNUVQIZBUELZMZYRUVPYEYJBUHLZGZYKUWBGZYNUWBGYJYKUVT
      MZUWAYEYGUVJUVLUVNYMVSUVPYTUWBYJUVOYTUWBVTZYMUVOUUNUWFUVMUUNUVNYHUUNUVJUV
      LUVIWAZOZUUNYTAUWBWBZUWBAUWBYFNBYFQZUWBQZWCZAUWBWDWHZROZYHUVJUVLUVNYMWESU
      VPYTUWBYKUWNUVKUVLUVNYMWFSUVPYTUWBYNUWNUVMUVNYMWGSUVOUWEYMUVOUVTYLYJYKUVM
      UVTYLPZUVNUVMUUNUWOUWGABUVTNYFUWJUVTQZWIRZOZWJWKUWBUVQBUVTYJYKYNUWKUWPUVQ
      QZWLWMUVOUWAYRWQYMUVOUVRYPUVSYQUVTYLUVOUVQYOYJYNUVOUUNUVQYOPUWHAUVQBYFNUW
      JUWSWNRZWOUWRUVOUVQYOYKYNUWTWOWPOWRXGWSUVMUUEUUHUVMUUEJZBUJLZYJYKBUKLZIZU
      VTMZUUHUXAYEUWCUXBYJUVTMZJUWDUXBYKUVTMZJUXEYEYGUVJUVLUUEWTUXAUWCUXFUXAYTU
      WBYJYHUWFUVJUVLUUEYHUUNUWFUVIUWMRZXAZYHUVJUVLUUEWFSUXAUXFUUCUVMUUCUUDXBUV
      MUXFUUCWQUUEUVMUXBUUBYJYJUVTYLYHUXBUUBPZUVJUVLYHUXBBYTHIZUJLZUUBYHYTBXHLG
      ZUXBUXLPYHBXCGZUWFUXKXCGUXMYEUXNYGYEBUCGZBVGGZBVDGUXNBXDUXOBVEGUXPBVFVHBV
      IBXEXROUXHYHYFUXKXCYHUUNYFUXKPUVIUUNYFBUWIHIUXKAUWBBNUWKXFUUNUWIYTBHUWLXI
      XJRZYHYGUVCUVDYFXCGUULUVEUVFYFXEXRXKUWBYTBUWKXLXMYTBUXKUXBUXKQUXBQZXNRYHY
      FUXKUJUXQUQXOWAZUWQUVMYJXPWPOXQXSUXAUWDUXGUXAYTUWBYKUXIUVKUVLUUEWGSUXAUXG
      UUDUVMUUCUUDXTUVMUXGUUDWQUUEUVMUXBUUBYKYKUVTYLUXSUWQUVMYKXPWPOXQXSUWBUXCB
      UVTYJYKUXBUWKUWPUXRUXCQZYAYBUXAUXBUUBUXDUUGUVTYLUVMUXJUUEUXSOUVMUWOUUEUWQ
      OUXAUXCUUFYJYKUXAUUNUXCUUFPUVMUUNUUEUWGOABYFUXCNUWJUXTYCRWOWPWRXGXSWSWSYT
      YOUUFYFYLUUBCDEUVGYOQUUBQUVHYLQYDXM $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
    The Archimedean property for generic algebraic structures
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $c <<< $.
  $c Archi $.

  $( Class notation for the infinitesimal relation. $)
  cinftm $a class <<< $.

  $( Class notation for the Archimedean property. $)
  carchi $a class Archi $.

  ${
    $d n w x y $.
    $( Define the relation " ` x ` is infinitesimal with respect to ` y ` " for
       a structure ` w ` .  (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
    df-inftm $a |- <<< = ( w e. _V |-> { <. x , y >. | ( ( x e. ( Base ` w ) /\
      y e. ( Base ` w ) ) /\ ( ( 0g ` w ) ( lt ` w ) x /\
      A. n e. NN ( n ( .g ` w ) x ) ( lt ` w ) y ) ) } ) $.
  $}

  $( A structure said to be Archimedean if it has no infinitesimal elements.
     (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
  df-archi $a |- Archi = { w e. _V | ( <<< ` w ) = (/) } $.

  ${
    $d w x y B $.  $d n w x y W $.  $d n x y X $.  $d n x y Y $.
    $d w x y .< $.  $d w x y .x. $.  $d w x y .0. $.
    inftm.b $e |- B = ( Base ` W ) $.
    $( The infinitesimal relation for a structure ` W ` (Contributed by Thierry
       Arnoux, 30-Jan-2018.) $)
    inftmrel $p |- ( W e. V -> ( <<< ` W ) C_ ( B X. B ) ) $=
      ( vx vy vn vw wcel cfv cv wa c0g cplt wbr cmg cn cvv cbs fveq2 wral copab
      cinftm cxp wceq elex syl6eqr eleq2d anbi12d eqidd breq123d oveqd opabbidv
      co ralbidv df-inftm fvex eqeltri xpex opabssxp ssexi fvmpt syl syl6eqss )
      CBIZCUCJZEKZAIZFKZAIZLZCMJZVGCNJZOZGKZVGCPJZUNZVIVMOZGQUAZLZLZEFUBZAAUDZV
      ECRIVFWBUECBUFHCVGHKZSJZIZVIWEIZLZWDMJZVGWDNJZOZVOVGWDPJZUNZVIWJOZGQUAZLZ
      LZEFUBWBRUCWDCUEZWQWAEFWRWHVKWPVTWRWFVHWGVJWRWEAVGWRWECSJZAWDCSTDUGZUHWRW
      EAVIWTUHUIWRWKVNWOVSWRWIVLVGVGWJVMWDCMTWDCNTZWRVGUJUKWRWNVRGQWRWMVQVIVIWJ
      VMWRWLVPVOVGWDCPTULXAWRVIUJUKUOUIUIUMEFHGUPWBWCAAAWSRDCSUQURZXBUSVTEFAAUT
      ZVAVBVCXCVD $.

    inftm.0 $e |- .0. = ( 0g ` W ) $.
    inftm.x $e |- .x. = ( .g ` W ) $.
    inftm.l $e |- .< = ( lt ` W ) $.
    $( Express ` x ` is infinitesimal with respect to ` y ` for a structure
       ` W ` .  (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
    isinftm $p |- ( ( W e. V /\ X e. B /\ Y e. B ) ->
      ( X ( <<< ` W ) Y <-> ( .0. .< X /\ A. n e. NN ( n .x. X ) .< Y ) ) ) $=
      ( vx vy wcel cfv wbr wa cn vw w3a cinftm cv wral copab wceq elex 3ad2ant1
      co cvv cbs c0g cplt cmg fveq2 syl6eqr eleq2d anbi12d eqidd breq123d oveqd
      ralbidv opabbidv df-inftm cxp fvex eqeltri opabssxp ssexi fvmpt syl breqd
      xpex wb eleq1 bi2anan9 simpl breq2 oveq2d simpr breq12d eqid brabga bitrd
      3adant1 3simpc biantrurd bitr4d ) FEPZGAPZHAPZUBZGHFUCQZRZWKWLSZIGBRZDUDZ
      GCUJZHBRZDTUEZSZSZXBWMWOGHNUDZAPZOUDZAPZSZIXDBRZWRXDCUJZXFBRZDTUEZSZSZNOU
      FZRZXCWMWNXOGHWMFUKPZWNXOUGWJWKXQWLFEUHUIUAFXDUAUDZULQZPZXFXSPZSZXRUMQZXD
      XRUNQZRZWRXDXRUOQZUJZXFYDRZDTUEZSZSZNOUFXOUKUCXRFUGZYKXNNOYLYBXHYJXMYLXTX
      EYAXGYLXSAXDYLXSFULQZAXRFULUPJUQZURYLXSAXFYNURUSYLYEXIYIXLYLYCIXDXDYDBYLY
      CFUMQIXRFUMUPKUQYLYDFUNQBXRFUNUPMUQZYLXDUTVAYLYHXKDTYLYGXJXFXFYDBYLYFCWRX
      DYLYFFUOQCXRFUOUPLUQVBYOYLXFUTVAVCUSUSVDNOUADVEXOAAVFAAAYMUKJFULVGVHZYPVN
      XMNOAAVIVJVKVLVMWKWLXPXCVOWJXNXCNOGHXOAAXDGUGZXFHUGZSZXHWPXMXBYQXEWKYRXGW
      LXDGAVPXFHAVPVQYSXIWQXLXAYSYQXIWQVOYQYRVRZXDGIBVSVLYSXKWTDTYSXJWSXFHBYSXD
      GWRCYTVTYQYRWAWBVCUSUSXOWCWDWFWEWMWPXBWJWKWLWGWHWI $.
  $}

  ${
    $d x y B $.  $d x y w W $.
    isarchi.b $e |- B = ( Base ` W ) $.
    isarchi.0 $e |- .0. = ( 0g ` W ) $.
    isarchi.i $e |- .< = ( <<< ` W ) $.
    $( Express the predicate " ` W ` is Archimedean ".  (Contributed by Thierry
       Arnoux, 30-Jan-2018.) $)
    isarchi $p |- ( W e. V -> ( W e. Archi <-> A. x e. B A. y e. B -. x .< y )
      ) $=
      ( vw wcel carchi cinftm cfv c0 wceq cv wral wb wbr wn elex fveq2 df-archi
      cvv eqeq1d elrab2 baib syl cxp wss inftmrel cop ss0b ssrel2 syl5bbr breqi
      wi noel df-br bitri xchnxbir pm2.21i dfbi2 mpbiran2 2ralbii syl6bbr bitrd
      nbn ) FELZFMLZFNOZPQZARZBRZDUAZUBZBCSACSZVKFUFLZVLVNTFEUCVLVTVNKRZNOZPQVN
      KFUFMWAFQWBVMPWAFNUDUGKUEUHUIUJVKVMCCUKULZVNVSTCEFHUMWCVNVOVPUNZVMLZWDPLZ
      USZBCSACSZVSVNVMPULWCWHVMUOABCCVMPUPUQVRWGABCCVRWEWFTZWGWEWIVQWFWEWDUTZVJ
      VQVOVPVMUAWEVOVPDVMJURVOVPVMVAVBVCWIWGWFWEUSWFWEWJVDWEWFVEVFVBVGVHUJVI $.
  $}

  ${
    $d n A $.
    $( Plus infinity is an infinite for the completed real line, as any real
       number is infinitesimal compared to it.  (Contributed by Thierry Arnoux,
       1-Feb-2018.) $)
    pnfinf $p |- ( A e. RR+ -> A ( <<< ` RR*s ) +oo ) $=
      ( vn crp wcel cpnf cfv wbr cc0 clt co cn wa cr cxr adantr syl2anc eqeltrd
      cxrs syl cvv cinftm cv cmg wral rpgt0 cxmu wceq nnz adantl rpxr xrsmulgzz
      cz zred rpre cmul rexmul remulcl ltpnf ralrimiva jca wb xrsex xrsbas xrs0
      pnfxr eqid xrslt isinftm mp3an13 mpbird ) ACDZAERUAFGZHAIGZBUBZARUCFZJZEI
      GZBKUDZLZVKVMVRAUEVKVQBKVKVNKDZLZVPMDVQWAVPVNAUFJZMWAVNULDZANDZVPWBUGVTWC
      VKVNUHUIZVKWDVTAUJZOVNAUKPWAVNMDZAMDZWBMDWAVNWEUMVKWHVTAUNOWGWHLWBVNAUOJM
      VNAUPVNAUQQPQVPURSUSUTVKWDVLVSVAZWFRTDWDENDWIVBVENIVOBTRAEHVCVDVOVFVGVHVI
      SVJ $.
  $}

  ${
    $d x y $.
    $( The completed real line is not Archimedean.  (Contributed by Thierry
       Arnoux, 1-Feb-2018.) $)
    xrnarchi $p |- -. RR*s e. Archi $=
      ( vx vy cv cxrs cinftm cfv wbr cxr wrex carchi wcel wn c1 1re rexri pnfxr
      cpnf ax-mp wral cvv crp 1rp pnfinf breq1 breq2 mp3an rexnal dfrex2 rexbii
      rspc2ev wb xrsex cc0 xrsbas xrs0 eqid isarchi notbii 3bitr4i mpbi ) ACZBC
      ZDEFZGZBHIZAHIZDJKZLZMHKQHKMQVCGZVFMNOPMUAKVIUBMUCRVDVIMVBVCGABMQHHVAMVBV
      CUDVBQMVCUEUJUFVDLBHSZLZAHIVJAHSZLVFVHVJAHUGVEVKAHVDBHUHUIVGVLDTKVGVLUKUL
      ABHVCTDUMUNUOVCUPUQRURUSUT $.
  $}

  ${
    $d n x y B $.  $d n x y W $.
    isarchi2.b $e |- B = ( Base ` W ) $.
    isarchi2.0 $e |- .0. = ( 0g ` W ) $.
    isarchi2.x $e |- .x. = ( .g ` W ) $.
    isarchi2.l $e |- .<_ = ( le ` W ) $.
    isarchi2.t $e |- .< = ( lt ` W ) $.
    $( Alternative way to express the predicate " ` W ` is Archimedean ", for
       Tosets.  (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
    isarchi2 $p |- ( ( W e. Toset /\ W e. Grp ) -> ( W e. Archi <->
      A. x e. B A. y e. B ( .0. .< x -> E. n e. NN y .<_ ( n .x. x ) ) ) ) $=
      ( wcel wbr wn wral cn wb ctos cgrp wa carchi cv cinftm co wrex wi isarchi
      cfv eqid adantr w3a simpl1l cz simpl1r simpr simpl2 mulgcl syl3anc simpl3
      tltnle con2bid rexbidva imbi2d isinftm notbid rexnal imbi2i bitr2i syl6bb
      nnzd imnan 3adant1r bitr4d 3expb 2ralbidva ) HUAOZHUBOZUCZHUDOZAUEZBUEZHU
      FUKZPZQZBCRACRZIWCDPZWDFUEZWCEUGZGPZFSUHZUIZBCRACRVSWBWHTVTABCWEUAHIJKWEU
      LUJUMWAWNWGABCCWAWCCOZWDCOZWNWGTWAWOWPUNZWNWIWKWDDPZQZFSUHZUIZWGWQWMWTWIW
      QWLWSFSWQWJSOZUCZVSWKCOZWPWLWSTVSVTWOWPXBUOXCVTWJUPOWOXDVSVTWOWPXBUQXCWJW
      QXBURVMWAWOWPXBUSCEHWJWCJLUTVAWAWOWPXBVBVSXDWPUNWRWLCDHGWKWDJMNVCVDVAVEVF
      VSWOWPWGXATVTVSWOWPUNZWGWIWRFSRZUCZQZXAXEWFXGCDEFUAHWCWDIJKLNVGVHXAWIXFQZ
      UIXHWTXIWIWRFSVIVJWIXFVNVKVLVOVPVQVRVP $.
  $}

$(
  @{
    @d m n x y @.  @d n x y B @.  @d n x y W @.  @d m n .< @.  @d m n .x. @.
    @d n .0. @.
    isarchi3.b @e |- B = ( Base ` W ) @.
    isarchi3.0 @e |- .0. = ( 0g ` W ) @.
    isarchi3.i @e |- .< = ( lt ` W ) @.
    isarchi3.x @e |- .x. = ( .g ` W ) @.
    @( This is the usual definition of the Archimedean property for an ordered
       group. (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    isarchi3 @p |- ( W e. oGrp -> ( W e. Archi <->
      A. x e. B A. y e. B ( .0. .< x -> E. n e. NN y .< ( n .x. x ) ) ) ) @=
      ( vm wcel wbr co cn wa c1 wceq cogrp carchi cv cple cfv wrex wi wral ctos
      cgrp wb ogrptos ogrpgrp eqid isarchi2 syl2anc nfv nfre1 nfan caddc adantr
      peano2nnd cplusg simp-4l grpidcl 3syl simp-4r ad4antr nnzd mulgcl syl3anc
      simpr cz simpllr ogrpltadd syl131anc syl grplid nncn ax-1cn addcom oveq1d
      cc mpan2 cmnd grpmnd 1nn a1i mulgnndir syl13anc mulg1 3eqtrrd 3brtr3d cpo
      tospos peano2zd plelttr impl mpdan oveq1 breq2d adantllr r19.29af cbvrexv
      rspcev sylib pltle reximdva imp impbida pm5.74da ralbidva bitrd ) GUANZGU
      BNZHAUCZDOZBUCZFUCZXPEPZGUDUEZOZFQUFZUGZBCUHZACUHZXQXRXTDOZFQUFZUGZBCUHZA
      CUHXNGUINZGUJNZXOYFUKGULZGUMZABCDEFYAGHIJLYAUNZKUOUPXNYEYJACXNXPCNZRZYDYI
      BCYQXRCNZRZXQYCYHYSXQRZYCYHYTYCRZXRMUCZXPEPZDOZMQUFZYHUUAYBUUEFQYTYCFYTFU
      QYBFQURUSYTXSQNZYBUUEYCYTUUFRZYBRZXSSUTPZQNXRUUIXPEPZDOZUUEUUHXSUUGUUFYBY
      TUUFVLZVAZVBUUHXTUUJDOZUUKUUHHXTGVCUEZPZXPXTUUOPZXTUUJDUUHXNHCNZYPXTCNZXQ
      UUPUUQDOUUGXNYBXNYPYRXQUUFVDZVAZUUHXNYLUURUVAYNCGHIJVEVFUUGYPYBXNYPYRXQUU
      FVGZVAZUUGUUSYBUUGYLXSVMNYPUUSXNYLYPYRXQUUFYNVHZUUGXSUULVIZUVBCEGXSXPILVJ
      VKZVAZYSXQUUFYBVNCUUODGHXPXTIKUUOUNZVOVPUUHYLUUSUUPXTTUUHXNYLUVAYNVQUVGCU
      UOGXTHIUVHJVRUPUUHUUJSXSUTPZXPEPZSXPEPZXTUUOPZUUQUUHUUFUUJUVJTUUMUUFUUIUV
      IXPEUUFXSWCNZUUIUVITZXSVSUVMSWCNUVNVTXSSWAWDVQWBVQUUHGWENZSQNZUUFYPUVJUVL
      TUUHXNYLUVOUVAYNGWFVFUVPUUHWGWHUUMUVCCUUOEGSXSXPILUVHWIWJUUHUVKXPXTUUOUUH
      YPUVKXPTUVCCEGXPILWKVQWBWLWMUUGYBUUNUUKUUGGWNNZYRUUSUUJCNZYBUUNRUUKUGUUGX
      NYKUVQUUTYMGWOVFYQYRXQUUFVNZUVFUUGYLUUIVMNYPUVRUVDUUGXSUVEWPUVBCEGUUIXPIL
      VJVKCDGYAXRXTUUJIYOKWQWJWRWSUUDUUKMUUIQUUBUUITUUCUUJXRDUUBUUIXPEWTXAXEUPX
      BYTYCVLXCUUDYGMFQUUBXSTUUCXTXRDUUBXSXPEWTXAXDXFYTYHYCYTYGYBFQUUGXNYRUUSYG
      YBUGUUTUVSUVFUACCDGYAXRXTYOKXGVKXHXIXJXKXLXLXM @.
  @}
$)

$(
  @{
    archiexdiv.b @e |- B = ( Base ` W ) @.
    archiexdiv.0 @e |- .0. = ( 0g ` W ) @.
    archiexdiv.i @e |- .< = ( lt ` W ) @.
    archiexdiv.x @e |- .x. = ( .g ` W ) @.
    @( In an Archimedean group, given two positive elements, there exists a
       "divisor" ` n ` . (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    archiexdiv @p |- ( ( ( W e. oGrp /\ W e. Archi ) /\ ( X e. B /\ Y e. B )
      /\ .0. .< X ) -> E. n e. NN Y .< ( n .x. X ) ) @=
      ? @.
  @}
$)

$(
  @{
    archiembre.r @e |- R = ( CCfld |`s RR ) @.
    @( By a result of Otto Hoelder, every Archimedean group is isomorphic to a
       subgroup of ` RR ` .  (Contributed by Thierry Arnoux, 30-Jan-2018.) @)
    archiembre @p |- ( ( W e. oGrp /\ W e. Archi ) ->
      E. a e. ( SubGrp ` R ) ( CCfld |`s a ) ~=g W ) @=
      ? @.
  @}
$)

$(
  @{
    @( use ~ subgabl @)
    @( Every Archimedean ordered group is Abelian.  (Contributed by Thierry
       Arnoux, 30-Jan-2018.) @)
    archiabl @p |- ( ( W e. oGrp /\ W e. Archi ) -> W e. Abel ) @=
      ? @.
  @}

  @{
    isarchiofld.b @e |- B = ( Base ` W ) @.
    isarchiofld.h @e |- H = ( ZRHom ` W ) @.
    isarchiofld.l @e |- .< = ( lt ` W ) @.
    @( Axiom of Archimedes : a characterization of the Archimedean property for
       ordered fields. @)
    isarchiofld @p |- ( W e. oField ->
      ( W e. Archi <-> A. x e. B E. n e. NN x .< ( H ` n ) ) ) @=
      ? @.
  @}

  @{
    @( The field of the real numbers is Archimedean. See also ~ arch .
       @)
    rearchi @p |- ( CCfld |`s RR ) e. Archi @=
      ? @.
  @}
$)

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
    Ring homomorphisms - misc additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    $d c y A $.  $d c y B $.  $d c y F $.  $d c R $.  $d c y S $.  $d c X $.
    $d c .|| $.
    rhmdvdsr.x $e |- X = ( Base ` R ) $.
    rhmdvdsr.m $e |- .|| = ( ||r ` R ) $.
    rhmdvdsr.n $e |- ./ = ( ||r ` S ) $.
    $( A ring homomorphism preserves the divisibility relation.  (Contributed
       by Thierry Arnoux, 22-Oct-2017.) $)
    rhmdvdsr $p |- ( ( ( F e. ( R RingHom S ) /\ A e. X /\ B e. X )
      /\ A .|| B ) -> ( F ` A ) ./ ( F ` B ) ) $=
      ( vy vc co wcel wa cfv wceq wrex syl2anc crh w3a wbr cbs cv simpl1 simpl2
      cmulr eqid rhmf ffvelrnda wral simpll1 simpr adantr rhmmul syl3anc dvdsr2
      ralrimiva biimpac r19.29 fveq2d eqtr3d reximi syl eqeq1d rspcev rexlimivw
      simpl oveq1 dvdsr sylanbrc ) GEFUANOZAHOZBHOZUBZABCUCZPZAGQZFUDQZOZLUEZVS
      FUHQZNZBGQZRZLVTSZVSWEDUCVRVMVNWAVMVNVOVQUFVMVNVOVQUGZVMHVTAGHVTEFGIVTUIZ
      UJZUKTVRMUEZGQZVTOZWLVSWCNZWERZPZMHSZWGVRWMMHULWOMHSZWQVRWMMHVRWKHOZPZVMW
      SWMVMVNVOVQWSUMZVRWSUNZVMHVTWKGWJUKTUSVRWKAEUHQZNZGQZWNRZMHULZXDBRZMHSZWR
      VRXFMHWTVMWSVNXFXAXBVRVNWSWHUOWKAEFXCWCGHIXCUIZWCUIZUPUQUSVRVQVNXIVPVQUNW
      HVNVQXIMHCEXCABIJXJURUTTXGXIPXFXHPZMHSWRXFXHMHVAXLWOMHXLXEWNWEXFXHVIXLXDB
      GXFXHUNVBVCVDVETWMWOMHVATWPWGMHWFWOLWLVTWBWLRWDWNWEWBWLVSWCVJVFVGVHVELVTD
      FWCVSWEWIKXKVKVL $.
  $}

  ${
    $d x y F $.  $d x y R $.  $d x y S $.
    $( A ring homomorphism is also a ring homomorphism for the opposite rings.
       (Contributed by Thierry Arnoux, 27-Oct-2017.) $)
    rhmopp $p |- ( F e. ( R RingHom S )
       -> F e. ( ( oppR ` R ) RingHom ( oppR ` S ) ) ) $=
      ( vx vy wcel coppr cfv cbs cmulr cur eqid crg opprrngb sylib oppr1 eqcomi
      co cv wa crh rhmrcl1 rhmrcl2 rhm1 wceq simpl simprr opprbas simprl rhmmul
      syl6eleqr syl3anc opprmul fveq2i 3eqtr4g cgrp cplusg wral cghm rnggrp syl
      wf rhmf rhmghm ad2antrr simplr simpr ghmlin ralrimiva jca31 oppradd isghm
      jca sylibr isrhm2d ) CABUARFZDEAGHZIHZVQBGHZVQJHZVSJHZVQKHZCVSKHZVRLWBLWC
      LVTLZWALZVPAMFVQMFZABCUBAVQVQLZNOZVPBMFVSMFZABCUCBVSVSLZNOZABWBCWCAKHZWBA
      WLVQWGWLLPQBKHZWCBWMVSWJWMLPQUDVPDSZVRFZESZVRFZTZTZWPWNAJHZRZCHZWPCHZWNCH
      ZBJHZRZWNWPVTRZCHXDXCWARWSVPWPAIHZFZWNXHFZXBXFUEVPWRUFWSWPVRXHVPWOWQUGXHA
      VQWGXHLZUHZUKWSWNVRXHVPWOWQUIXLUKWPWNABWTXECXHXKWTLZXELZUJULXGXACXHAVTWTV
      QWNWPXKXMWGWDUMUNBIHZBWAXEVSXDXCXOLZXNWJWEUMUOVPVQUPFZVSUPFZTXHXOCVBZWNWP
      AUQHZRCHXDXCBUQHZRUEZEXHURZDXHURZTZTCVQVSUSRFVPXQXRYEVPWFXQWHVQUTVAVPWIXR
      WKVSUTVAVPXSYDXHXOABCXKXPVCVPYCDXHVPXJTZYBEXHYFXITCABUSRFZXJXIYBVPYGXJXIA
      BCVDVEVPXJXIVFYFXIVGXTYAABWNCWPXHXKXTLZYALZVHULVIVIVMVJEDXTYAVQVSCXHXOXLX
      OBVSWJXPUHXTAVQWGYHVKYABVSWJYIVKVLVNVO $.
  $}

  ${
    $( Ring homomorphisms preserve unit elements.  (Contributed by Thierry
       Arnoux, 23-Oct-2017.) $)
    elrhmunit $p |- ( ( F e. ( R RingHom S ) /\ A e. ( Unit ` R ) )
      -> ( F ` A ) e. ( Unit ` S ) ) $=
      ( crh co wcel cui cfv wa cur cdsr wbr coppr eqid isunit rhmdvdsr syl31anc
      wb adantr cbs simpl unitss simpr sseldi rhmrcl1 rngidcl 3syl sylib simpld
      crg rhm1 breq2d mpbid rhmopp simprd opprbas sylanbrc ) DBCEFGZABHIZGZJZAD
      IZCKIZCLIZMZVCVDCNIZLIZMZVCCHIZGVBVCBKIZDIZVEMZVFVBUSABUAIZGZVKVNGZAVKBLI
      ZMZVMUSVAUBZVBUTVNAVNBUTVNOZUTOZUCUSVAUDZUEZVBUSBUKGVPVSBCDUFVNBVKVTVKOZU
      GUHZVBVRAVKBNIZLIZMZVBVAVRWHJWBVQBWFUTVKWGAWAWDVQOZWFOZWGOZPUIZUJAVKVQVEB
      CDVNVTWIVEOZQRUSVMVFSVAUSVLVDVCVEBCVKDVDWDVDOZULZUMTUNVBVCVLVHMZVIVBDWFVG
      EFGZVOVPWHWPUSWQVABCDUOTWCWEVBVRWHWLUPAVKWGVHWFVGDVNVNBWFWJVTUQWKVHOZQRUS
      WPVISVAUSVLVDVCVHWOUMTUNVECVGVJVDVHVCVJOWNWMVGOWRPUR $.
  $}

$(
  @{
    rhmdvr.u @e |- U = ( Unit ` R ) @.
    rhmdvr.x @e |- X = ( Base ` R ) @.
    rhmdvr.m @e |- ./ = ( /r ` R ) @.
    rhmdvr.d @e |- .|| = ( ||r ` R ) @.
    rhmdvr.n @e |- D = ( /r ` S ) @.
    @( A ring homomorphism preserves ring division.  (Contributed  by Thierry
       Arnoux, 22-Oct-2017.) @)
    rhmdvr @p |- ( ( F e. ( R RingHom S ) /\ A e. X /\ B .|| A ) ->
      ( F ` ( A ./ B ) ) = ( ( F ` A ) D ( F ` B ) ) ) @=
      ? @.
  @}
$)

  ${
    rhmdvd.u $e |- U = ( Unit ` S ) $.
    rhmdvd.x $e |- X = ( Base ` R ) $.
    rhmdvd.d $e |- ./ = ( /r ` S ) $.
    rhmdvd.m $e |- .x. = ( .r ` R ) $.
    $( A ring homomorphism preserves ratios.  (Contributed by Thierry Arnoux,
       22-Oct-2017.) $)
    rhmdvd $p |- ( ( F e. ( R RingHom S ) /\ ( A e. X /\ B e. X /\ C e. X )
      /\ ( ( F ` B ) e. U /\ ( F ` C ) e. U ) ) -> ( ( F ` A ) ./ ( F ` B ) )
         = ( ( F ` ( A .x. C ) ) ./ ( F ` ( B .x. C ) ) ) ) $=
      ( co wcel w3a cfv wceq eqid crh cmulr simp21 simp23 rhmmul syl3anc simp22
      wa simp1 oveq12d crg cbs rhmrcl2 3ad2ant1 wf rhmf ffvelrnd simp3l dvrcan5
      simp3r syl13anc eqtr2d ) IEFUAOPZAJPZBJPZCJPZQZBIRZHPZCIRZHPZUHZQZACGOIRZ
      BCGOIRZDOAIRZVJFUBRZOZVHVJVQOZDOZVPVHDOZVMVNVRVOVSDVMVCVDVFVNVRSVCVGVLUIZ
      VCVDVEVFVLUCZVCVDVEVFVLUDZACEFGVQIJLNVQTZUEUFVMVCVEVFVOVSSWBVCVDVEVFVLUGW
      DBCEFGVQIJLNWEUEUFUJVMFUKPZVPFULRZPVIVKVTWASVCVGWFVLEFIUMUNVMJWGAIVCVGJWG
      IUOVLJWGEFILWGTZUPUNWCUQVCVGVIVKURVCVGVIVKUTWGDFVQHVPVHVJWHKMWEUSVAVB $.
  $}

  ${
    $d x y A $.  $d y F $.  $d x y R $.  $d y S $.
    $( Ring homomorphisms preserve the inverse of unit elements.  (Contributed
       by Thierry Arnoux, 23-Oct-2017.) $)
    rhmunitinv $p |- ( ( F e. ( R RingHom S ) /\ A e. ( Unit ` R ) )
      -> ( F ` ( ( invr ` R ) ` A ) ) = ( ( invr ` S ) ` ( F ` A ) ) ) $=
      ( co wcel cui cfv cinvr cmulr wceq cur crg eqid unitlinv unitinvcl sseldi
      sylan adantr elrhmunit crh rhmrcl1 fveq2d cbs simpl unitss rhmmul syl3anc
      wa simpr rhm1 3eqtr3d rhmrcl2 syl2anc eqtr4d cmgp cress wb unitgrp syldan
      cgrp syl unitgrpbas cplusg fvex mgpplusg ressplusg ax-mp grprcan syl13anc
      cvv mpbid ) DBCUAEFZABGHZFZUIZABIHZHZDHZADHZCJHZEZVTCIHZHZVTWAEZKZVSWDKZV
      PWBCLHZWEVPVRABJHZEZDHZBLHZDHZWBWHVPWJWLDVMBMFZVOWJWLKBCDUBZBWIVNWLVQAVNN
      ZVQNZWINZWLNZORUCVPVMVRBUDHZFAWTFWKWBKVMVOUEVPVNWTVRWTBVNWTNZWPUFZVMWNVOV
      RVNFZWOBVNVQAWPWQPRZQVPVNWTAXBVMVOUJQVRABCWIWADWTXAWRWANZUGUHVMWMWHKVOBCW
      LDWHWSWHNZUKSULVPCMFZVTCGHZFZWEWHKVMXGVOBCDUMZSZABCDTZCWAXHWHWCVTXHNZWCNZ
      XEXFOUNUOVPCUPHZXHUQEZVAFZVSXHFZWDXHFZXIWFWGURVMXQVOVMXGXQXJCXHXPXMXPNZUS
      VBSVMVOXCXRXDVRBCDTUTVPXGXIXSXKXLCXHWCVTXMXNPUNXLXHWAXPVSWDVTCXHXPXMXTVCX
      HVKFWAXPVDHKCGVEXHWAXOXPVKXTCWAXOXONXEVFVGVHVIVJVL $.
  $}

$(
  @{
    rhmuntghm.1 @e |- G = ( ( mulGrp ` R ) |`s ( Unit ` R ) ) @.
    rhmuntghm.2 @e |- H = ( ( mulGrp ` S ) |`s ( Unit ` S ) ) @.
    @( A ring homomorphism induces a group homomorphism on the group units
       @)
    rhmuntghm @p |- ( F e. ( R RingHom S ) -> ( F |` G ) e. ( G GrpHom H ) ) @=
      ? @.
  @}
$)

  ${
    $d x .0. $.  $d x .1. $.  $d x F $.  $d x R $.  $d x S $.  $d x U $.
    kerunit.1 $e |- U = ( Unit ` R ) $.
    kerunit.2 $e |- .0. = ( 0g ` S ) $.
    kerunit.3 $e |- .1. = ( 1r ` S ) $.
    $( If a unit element lies in the kernel of a ring homomorphism, then
       ` 0 = 1 ` , i.e. the target ring is the zero ring.  (Contributed by
       Thierry Arnoux, 24-Oct-2017.) $)
    kerunit $p |- ( ( F e. ( R RingHom S ) /\
      ( U i^i ( `' F " { .0. } ) ) =/= (/) ) -> .1. = .0. ) $=
      ( vx co wcel wa wceq cfv cmulr crg eqid syldan adantr crh ccnv csn cin c0
      cima wne wrex cinvr cur elin biimpi adantl simpld rhmrcl1 unitlinv fveq2d
      cv sylan cbs simpl rnginvcl syl2anc unitcl syl rhmmul syl3anc simprd rhmf
      wf wfn wb elpreima 3syl simplbda fvex elsnc sylib oveq2d rhmrcl2 ffvelrnd
      ffn rngrz 3eqtrd rhm1 3eqtr3rd reximdva0 id rexlimivw ) EABUAKLZCEUBFUCZU
      FZUDZUEUGMDFNZJWMUHWNWJWNJWMWJJURZWMLZMZWOAUIOZOZWOAPOZKZEOZAUJOZEOZFDWJW
      PWOCLZXBXDNZWQXEWOWLLZWPXEXGMZWJWPXHWOCWLUKULUMZUNZWJAQLZXEXFABEUOZXKXEMX
      AXCEAWTCXCWRWOGWRRZWTRZXCRZUPUQUSSWQXBWSEOZWOEOZBPOZKZXPFXRKZFWQWJWSAUTOZ
      LZWOYALZXBXSNWJWPVAWQXKXEYBWJXKWPXLTXJYAACWRWOGXMYARZVBVCZWQXEYCXJYAACWOY
      DGVDVEWSWOABWTXREYAYDXNXRRZVFVGWQXQFXPXRWQXQWKLZXQFNWJWPXGYGWQXEXGXIVHWJX
      GYCYGWJYABUTOZEVJZEYAVKXGYCYGMVLYAYHABEYDYHRZVIZYAYHEWBYAWOWKEVMVNVOSXQFW
      OEVPVQVRVSWQBQLZXPYHLXTFNWJYLWPABEVTTWQYAYHWSEWJYIWPYKTYEWAYHBXRXPFYJYFHW
      CVCWDWJXDDNWPABXCEDXOIWETWFWGWNWNJWMWNWHWIVE $.
  $}

$(
  @{
    ker2idl.i @e |- I = ( 2Ideal ` R ) @.
    ker2idl.0 @e |- .0. = ( 0g ` S ) @.
    @( The kernel of a ring homomorphism is a two-sided ideal.
       See also ~ keridl . @)
    ker2idl @p |- ( F e. ( R RingHom S ) -> ( `' F " { .0. } ) e. I ) @=
      ? @.
  @}
$)

  ${
    $d x y .0. $.  $d x y A $.  $d x B $.  $d x y F $.  $d x y N $.
    $d x y R $.  $d x y S $.
    kerf1hrm.a $e |- A = ( Base ` R ) $.
    kerf1hrm.b $e |- B = ( Base ` S ) $.
    kerf1hrm.n $e |- N = ( 0g ` R ) $.
    kerf1hrm.0 $e |- .0. = ( 0g ` S ) $.
    $( TODO use ~ ghmf1 to shorten one direction $)
    $( A ring homomorphism ` F ` is injective if and only if its kernel is the
       singleton ` { N } ` .  (Contributed by Thierry Arnoux, 27-Oct-2017.) $)
    kerf1hrm $p |- ( F e. ( R RingHom S ) -> ( F : A -1-1-> B <->
      ( `' F " { .0. } ) = { N } ) ) $=
      ( vx vy co wcel wceq wa cfv wb adantr crh wf1 ccnv csn cima cv simpl f1fn
      wfn adantl elpreima syl biimpa simpld simprd fvex elsnc sylib cghm rhmghm
      ghmid ad2antrr eqeq2d wi wral cgrp rhmrcl1 rnggrp grpidcl 3syl wf simprbi
      crg dff13 r19.21bi fveq2 eqeq2 imbi12d rspcva syl2anc sylbird syl21anc ex
      imp elsn syl6ibr ssrdv wss rhmf ffn mpbir2and snssd eqssd w3a csg simpr2l
      sylibr simpr2r simpr3 eqid ghmeqker simpr1 eleqtrd ovex grpsubeq0 syl3anc
      syl31anc mpbid 3anassrs ralrimivva sylanbrc impbida ) ECDUANOZABEUBZEUCGU
      DZUEZFUDZPZXMXNQZXPXQXSLXPXQXSLUFZXPOZXTFPZXTXQOXSYAYBXSYAQZXSXTAOZXTERZG
      PZYBXSYAUGYCYDYEXOOZXSYAYDYGQZXSEAUIZYAYHSXNYIXMABEUHUJAXTXOEUKULUMZUNYCY
      GYFYCYDYGYJUOYEGXTEUPUQURXSYDQZYFYBYKYFYEFERZPZYBYKYLGYEXMYLGPZXNYDXMECDU
      SNOZYNCDEUTZCDEFGJKVAULZVBVCYKFAOZYEMUFZERZPZXTYSPZVDZMAVEZYMYBVDZYKCVMOZ
      CVFOZYRXMUUFXNYDCDEVGZVBCVHZACFHJVIZVJXSUUDLAXNUUDLAVEZXMXNABEVKZUUKLMABE
      VNZVLUJVOUUCUUEMFAYSFPZUUAYMUUBYBUUNYTYLYEYSFEVPVCYSFXTVQVRVSVTWAWDWBWCLF
      WEWFWGXMXQXPWHXNXMFXPXMFXPOZYRYLXOOZXMUUFUUGYRUUHUUIUUJVJXMYNUUPYQYLGFEUP
      UQWQXMUULYIUUOYRUUPQSABCDEHIWIZABEWJAFXOEUKVJWKWLTWMXMXRQZUULUUKXNXMUULXR
      UUQTUURUUCLMAAUURYDYSAOZQZQUUAUUBXMXRUUTUUAUUBXMXRUUTUUAWNZQZXTYSCWORZNZF
      PZUUBUVBUVDXQOUVEUVBUVDXPXQUVBYOYDUUSUUAUVDXPOZXMYOUVAYPTYDUUSXRUUAXMWPZY
      DUUSXRUUAXMWRZXMXRUUTUUAWSYOYDUUSWNUUAUVFACDXTEXPUVCYSGHKXPWTUVCWTZXAUMXG
      XMXRUUTUUAXBXCUVDFXTYSUVCXDUQURUVBUUGYDUUSUVEUUBSUVBUUFUUGXMUUFUVAUUHTUUI
      ULUVGUVHACUVCXTYSFHJUVIXEXFXHXIWCXJUUMXKXL $.

$(
    @( If ` R ` is a field and ` S ` is a non-zero ring then a ring
       homomorphism between ` R ` and ` S ` is injective. @)
    hrmf1 @p |- ( ( F e. ( R RingHom S ) /\ R e. Field /\ S e. NzRing ) ->
      F : A -1-1-> B ) @=
      ? @.
$)
  $}


$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
    The ring of integers
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    zzs.1 $e |- Z = ( CCfld |`s ZZ ) $.
    $( The base of the ring of integers.  (Contributed by Thierry Arnoux,
       31-Oct-2017.) $)
    zzsbase $p |- ZZ = ( Base ` Z ) $=
      ( cz cc wss cbs cfv wceq zsscn ccnfld cnfldbas ressbas2 ax-mp ) CDECAFGHI
      CDAJBKLM $.

    $( The addition operation of the ring of integers.  (Contributed by Thierry
       Arnoux, 8-Nov-2017.) $)
    zzsplusg $p |- + = ( +g ` Z ) $=
      ( cz cvv wcel caddc cplusg cfv wceq zex ccnfld cnfldadd ressplusg ax-mp )
      CDEFAGHIJCFKADBLMN $.

    $d x y $.
    $( The multiplication (group power) opereation of the group of integers.
       (Contributed by Thierry Arnoux, 31-Oct-2017.) $)
    zzsmulg $p |- ( ( A e. ZZ /\ B e. ZZ )
      -> ( A ( .g ` Z ) B ) = ( A x. B ) ) $=
      ( vx vy cz wcel wa ccnfld cmg cfv co cmul csubg wceq c1 cv zcn eqid 1z cc
      zaddcl znegcl cnsubglem subgmulg mp3an1 simpr cnfldmulg syldan eqtr3d
      zcnd ) AGHZBGHZIZABJKLZMZABCKLZMZABNMZGJOLHUMUNUQUSPEFGQERZSVAFRUCVAUDUAU
      EGURUPJCABUPTDURTUFUGUMUNBUBHUQUTPUOBUMUNUHULABUIUJUK $.

    $( The multiplication operation of the ring of integers.  (Contributed by
       Thierry Arnoux, 1-Nov-2017.) $)
    zzsmulr $p |- x. = ( .r ` Z ) $=
      ( cz cvv wcel cmul cmulr cfv wceq zex ccnfld cnfldmul ressmulr ax-mp ) CD
      EFAGHIJCKAFDBLMN $.

    $( The neutral element of the ring of integers.  (Contributed by Thierry
       Arnoux, 1-Nov-2017.) $)
    zzs0 $p |- 0 = ( 0g ` Z ) $=
      ( ccnfld cmnd wcel cc0 cz wss c0g cfv wceq ccrg crg cncrng crngrng rngmnd
      cc mp2b 0z zsscn cnfldbas cnfld0 ress0g mp3an ) CDEZFGEGQHFAIJKCLECMEUENC
      OCPRSTGQCAFBUAUBUCUD $.

    $( The multiplicative neutral element of the ring of integers (Contributed
       by Thierry Arnoux, 1-Nov-2017.) $)
    zzs1 $p |- 1 = ( 1r ` Z ) $=
      ( cz ccnfld csubrg cfv wcel c1 cur wceq zsubrg cnfld1 subrg1 ax-mp ) CDEF
      GHAIFJKCDAHBLMN $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
    The ordered field of reals
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    re.1 $e |- R = ( CCfld |`s RR ) $.
    $( The base of the field of reals.  (Contributed by Thierry Arnoux,
       1-Nov-2017.) $)
    rebase $p |- RR = ( Base ` R ) $=
      ( cr cc wss cbs cfv wceq ax-resscn ccnfld cnfldbas ressbas2 ax-mp ) CDECA
      FGHICDAJBKLM $.

    $d x y $.
    $( The multiplication (group power) operation of the group of reals.
       (Contributed by Thierry Arnoux, 1-Nov-2017.) $)
    remulg $p |- ( ( N e. ZZ /\ A e. RR )
      -> ( N ( .g ` R ) A ) = ( N x. A ) ) $=
      ( vx vy cz wcel cr wa ccnfld cmg cfv co cmul csubg wceq c1 cv eqid mp3an1
      recn readdcl renegcl 1re cnsubglem subgmulg simpr cnfldmulg syldan eqtr3d
      cc recnd ) CGHZAIHZJZCAKLMZNZCABLMZNZCAONZIKPMHUNUOURUTQEFIRESZUBVBFSUCVB
      UDUEUFIUSUQKBCAUQTDUSTUGUAUNUOAULHURVAQUPAUNUOUHUMCAUIUJUK $.

    $( The addition operation of the field of reals.  (Contributed by Thierry
       Arnoux, 21-Jan-2018.) $)
    replusg $p |- + = ( +g ` R ) $=
      ( cr cvv wcel caddc cplusg cfv wceq reex ccnfld cnfldadd ressplusg ax-mp
      ) CDEFAGHIJCFKADBLMN $.

    $( The multiplication operation of the field of reals.  (Contributed by
       Thierry Arnoux, 1-Nov-2017.) $)
    remulr $p |- x. = ( .r ` R ) $=
      ( cr cvv wcel cmul cmulr cfv wceq reex ccnfld cnfldmul ressmulr ax-mp ) C
      DEFAGHIJCKAFDBLMN $.

    $( The neutral element of the field of reals.  (Contributed by Thierry
       Arnoux, 1-Nov-2017.) $)
    re0g $p |- 0 = ( 0g ` R ) $=
      ( ccnfld cmnd wcel cc0 cr wss c0g cfv wceq ccrg crg cncrng crngrng rngmnd
      cc mp2b 0re ax-resscn cnfldbas cnfld0 ress0g mp3an ) CDEZFGEGQHFAIJKCLECM
      EUENCOCPRSTGQCAFBUAUBUCUD $.

    $( The multiplicative neutral element of the field of reals.  (Contributed
       by Thierry Arnoux, 1-Nov-2017.) $)
    re1r $p |- 1 = ( 1r ` R ) $=
      ( cr ccnfld csubrg cfv wcel c1 cur wceq cress co cdr simpli cnfld1 subrg1
      resubdrg ax-mp ) CDEFGZHAIFJSDCKLMGQNCDAHBOPR $.

    $( The ordering relation of the field of reals.  (Contributed by Thierry
       Arnoux, 21-Jan-2018.) $)
    rele2 $p |- <_ = ( le ` R ) $=
      ( cr cvv wcel cle cple cfv wceq reex ccnfld cnfldle ressle ax-mp ) CDEFAG
      HIJCKFDABLMN $.

    $( The ordering relation of the field of reals.  (Contributed by Thierry
       Arnoux, 21-Jan-2018.) $)
    relt $p |- < = ( lt ` R ) $=
      ( clt cle cid cdif cplt cfv dflt2 cvv wcel wceq ccnfld cress ovex eqeltri
      cr co rele2 eqid pltfval ax-mp eqtr4i ) CDEFZAGHZIAJKUEUDLAMQNRJBMQNOPJUE
      ADABSUETUAUBUC $.

    $( The division operation of the field of reals.  (Contributed by Thierry
       Arnoux, 1-Nov-2017.) $)
    redvr $p |- ( ( A e. RR /\ B e. RR /\ B =/= 0 )
      -> ( A ( /r ` R ) B ) = ( A / B ) ) $=
      ( wcel cc0 wne w3a cdiv cdvr cfv ccnfld csubrg cui wceq cdr resubdrg eqid
      cr co cress simpli simp1 wa 3simpc wb simpri eqeltri rebase re0g drngunit
      a1i ax-mp sylibr cnflddiv subrgdv syl3anc eqcomd ) ASEZBSEZBFGZHZABITZABC
      JKZTZVBSLMKEZUSBCNKZEZVCVEOVFVBVFLSUATZPEZQUBULUSUTVAUCVBUTVAUDZVHUSUTVAU
      ECPEVHVKUFCVIPDVFVJQUGUHSCVGBFCDUIVGRZCDUJUKUMUNSILCVGVDABDUOVLVDRUPUQUR
      $.

    $( The real numbers are a totally ordered set.  (Contributed by Thierry
       Arnoux, 21-Jan-2018.) $)
    retos $p |- R e. Toset $=
      ( vx ctos wcel cr clt wor cid cres cle wss ltso wbr idref leid cvv ccnfld
      cv cress mprgbir wa wb co ovex eqeltri rebase rele2 tosso ax-mp mpbir2an
      relt ) ADEZFGHZIFJKLZMUOCSZUPKNCFCFKOUPPUAAQEUMUNUOUBUCARFTUDQBRFTUEUFFGA
      KQABUGABUHABULUIUJUK $.

    $( The real numbers form a field.  (Contributed by Thierry Arnoux,
       1-Nov-2017.) $)
    refld $p |- R e. Field $=
      ( cfield wcel cdr ccrg ccnfld cr cress csubrg cfv resubdrg simpri eqeltri
      co cncrng simpli subrgcrng mp2an isfld mpbir2an ) ACDAEDAFDZAGHIOZEBHGJKD
      ZUCEDZLMNGFDUDUBPUDUELQHGABRSATUA $.

$(
    @( The real numbers form an ordered group. @)
    reogrp @p |- R e. oGrp @=
      ? @.
$)

    $d a b c R $.
    $( The real numbers form an ordered field.  (Contributed by Thierry Arnoux,
       21-Jan-2018.) $)
    reofld $p |- R e. oField $=
      ( va vb vc cofld wcel cfield cv cle wbr caddc co wi cr wral cc0 wa cmul
      ex refld retos w3a simpl simpr1 simpr2 simpr3 leadd1dd 3anassrs ralrimiva
      ctos mulge0 an4s rgen2a rebase replusg re0g remulr rele2 isofld mpbir3an
      jca ) AFGAHGAUKGCIZDIZJKZVCEIZLMVDVFLMJKZNZEOPZQVCJKZQVDJKZRZQVCVDSMJKZNZ
      RZDOPCOPABUAABUBVOCDOVCOGZVDOGZRZVIVNVRVHEOVRVFOGZRVEVGVPVQVSVEVGVPVQVSVE
      UCZRVCVDVFVPVTUDVPVQVSVEUEVPVQVSVEUFVPVQVSVEUGUHUITUJVRVLVMVPVJVQVKVMVCVD
      ULUMTVBUNOLSAJQCDEABUOABUPABUQABURABUSUTVA $.
  $}


$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        Topology
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Regular spaces
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
$(
    regclnei.1 @e |- X = U. J @.
    regclnei.2 @e |- B = ( ( Clsd ` J ) i^i ( ( nei ` J ) ` { A } ) ) @.
    @( For a regular space ` J ` , the set of closed neighborhoods of any point
       ` X ` is a filter base which generates the filter of neighborhoods of
       ` X ` . Condition O_III of [BourbakiTop1] p.  I.56. @)
    regclnei @p |- ( ( J e. Reg /\ A e. X ) ->
      ( B e. ( fBas ` X ) /\ ( X filGen B ) = ( ( nei ` J ) ` { A } ) ) ) @=
      ? @.

    @( Given any point ` A ` and neighborhood ` N ` of ` A ` , there is a
       closed neighborhood ` E ` of ` A `` that is a subset of  ` N ` .
       Same as ~ regsep ??? @)
    regclnei $p |- ( ( J e. Reg /\ A e. X /\ N e. ( ( nei ` J ) ` { A } ) )
      -> E. E e. ( ( Clsd ` J ) i^i ( ( nei ` J ) ` { A } ) ) E C_ N ) @=
      ? @.
$)
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
        Pseudometrics
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $( Declare new constant symbols and define their syntactical properties. $)
  $c ~Met $.
  $c pstoMet $.

  $( Extend class notation with the class of metric identifications. $)
  cmetid $a class ~Met $.

  $( Extend class notation with the metric induced by a pseudometric. $)
  cpstm $a class pstoMet $.

  ${
    $d d x y $.
    $( Define the metric identification relation for a pseudometric.
       (Contributed by Thierry Arnoux, 7-Feb-2018.) $)
    df-metid $a |- ~Met = ( d e. U. ran PsMet |-> { <. x , y >. |
      ( ( x e. dom dom d /\ y e. dom dom d ) /\ ( x d y ) = 0 ) } ) $.
  $}

  ${
    $d a b d x y z $.
    $( Define the metric induced by a pseudometric.  (Contributed by Thierry
       Arnoux, 7-Feb-2018.) $)
    df-pstm $a |- pstoMet = ( d e. U. ran PsMet |->
      ( a e. ( dom dom d /. ( ~Met ` d ) ) , b e. ( dom dom d /. ( ~Met ` d ) )
      |-> U. { z | E. x e. a E. y e. b z = ( x d y ) } ) ) $.
  $}

  ${
    $d d w x y z $.  $d d x y D $.  $d d x y X $.
    $( Value of the metric identification relation.  (Contributed by Thierry
       Arnoux, 7-Feb-2018.) $)
    metidval $p |- ( D e. ( PsMet ` X ) -> ( ~Met ` D ) =
      { <. x , y >. | ( ( x e. X /\ y e. X ) /\ ( x D y ) = 0 ) } ) $=
      ( vd vz vw cpsmet cfv wcel cv cdm wa co cc0 wceq copab cvv eleq2d wral wb
      crn cuni cmetid cmpt df-metid simpr dmeqd psmetdmdm adantr eqtr4d anbi12d
      a1i oveqd eqeq1d opabbidv wrex elfvdm fveq2 mpancom wfun cxad cle wbr cxr
      rspcev cxp cmap df-psmet funmpt2 elunirn ax-mp sylibr wss opabssxp elfvex
      crab xpexg syl2anc ssexg sylancr fvmptd ) CDHIZJZECAKZEKZLZLZJZBKZWHJZMZW
      EWJWFNZOPZMZABQZWEDJZWJDJZMZWEWJCNZOPZMZABQZHUBUCZUDRUDEXDWPUEPWDABEUFUMW
      DWFCPZMZWOXBABXFWLWSWNXAXFWIWQWKWRXFWHDWEXFWHCLZLZDXFWGXGXFWFCWDXEUGZUHUH
      WDDXHPXECDUIUJUKZSXFWHDWJXJSULXFWMWTOXFWFCWEWJXIUNUOULUPWDCWEHIZJZAHLZUQZ
      CXDJZDXMJWDXNCDHURXLWDADXMWEDPXKWCCWEDHUSSVFUTHVAXOXNUAARWJWJWFNOPWJFKZWF
      NGKZWJWFNXQXPWFNVBNVCVDGWETFWETMBWETEVEWEWEVGVHNVQHABFGEVIVJACHVKVLVMWDXC
      DDVGZVNXRRJZXCRJXAABDDVOWDDRJZXTXSCDHVPZYADDRRVRVSXCXRRVTWAWB $.

    $( As a relation, the metric identification is a subset of a cross
       product.  (Contributed by Thierry Arnoux, 7-Feb-2018.) $)
    metidss $p |- ( D e. ( PsMet ` X ) -> ( ~Met ` D ) C_ ( X X. X ) ) $=
      ( vx vy cpsmet cfv wcel cmetid cv wa cc0 wceq copab cxp metidval opabssxp
      co syl6eqss ) ABEFGAHFCIZBGDIZBGJSTAQKLZJCDMBBNCDABOUACDBBPR $.
  $}

  ${
    $d a b A $.  $d a b B $.  $d a b D $.  $d a b X $.
    $( ` A ` and ` B ` identify by the metric ` D ` if their distance is zero.
       (Contributed by Thierry Arnoux, 7-Feb-2018.) $)
    metidv $p |- ( ( D e. ( PsMet ` X ) /\ ( A e. X /\ B e. X ) )
      -> ( A ( ~Met ` D ) B <-> ( A D B ) = 0 ) ) $=
      ( va vb cpsmet cfv wcel wa cmetid wbr co cc0 wceq cv copab eleq1 adantl
      wb metidval adantr breqd bi2anan9 oveq12 eqeq1d anbi12d eqid brabga bitrd
      ibar bitr4d ) CDGHIZADIZBDIZJZJZABCKHZLZUPABCMZNOZJZVAUQUSABEPZDIZFPZDIZJ
      ZVCVECMZNOZJZEFQZLZVBUQURVKABUMURVKOUPEFCDUAUBUCUPVLVBTUMVJVBEFABVKDDVCAO
      ZVEBOZJZVGUPVIVAVMVDUNVNVFUOVCADRVEBDRUDVOVHUTNVCAVEBCUEUFUGVKUHUISUJUPVA
      VBTUMUPVAUKSUL $.
  $}

  ${
    $( Basic property of the metric identification relation.  (Contributed by
       Thierry Arnoux, 7-Feb-2018.) $)
    metideq $p |- ( ( D e. ( PsMet ` X ) /\
      ( A ( ~Met ` D ) B /\ E ( ~Met ` D ) F ) ) -> ( A D E ) = ( B D F ) ) $=
      ( wcel wbr wa co wceq cle cxr wss syl syl2anc sseldd psmetsym cxad cc0 wb
      cpsmet cfv cmetid simpl cdm metidss dmss dmxpid syl6sseq wrel xpss syl6ss
      cxp cvv df-rel sylibr simprl releldm syl3anc fovrnda syl12anc eqeltrd crn
      simprr psmetf rnss rnxpid eqeltrrd psmettri2 syl13anc jca metidv syl21anc
      relelrn biimpa eqtr3d oveq1d xaddid2 eqtrd breqtrd oveq2d xaddid1 xrletrd
      3eqtrd 3eqtr4d xrletri3 mpbird ) CFUBUCGZABCUDUCZHZDEWJHZIZIZADCJZBECJZKZ
      WOWPLHZWPWOLHZIZWNWRWSWNWOBDCJZWPWNWODACJZMWNWIAFGZDFGZWOXBKWIWMUEZWNWJUF
      ZFAWNWIXFFNXEWIXFFFUNZUFZFWIWJXGNZXFXHNCFUGZWJXGUHOFUIUJOZWNWJUKZWKAXFGWN
      WIXLXEWIWJUOUOUNZNXLWIWJXGXMXJFFULUMWJUPUQOZWIWKWLURZABWJUSPQZWNXFFDXKWNX
      LWLDXFGXNWIWKWLVEZDEWJUSPQZADCFRUTZWNWIXDXCXBMGZXEXRXPWIDAMFFCCFVFZVAVBZV
      CZWNWIBFGZXDXAMGZXEWNWJVDZFBWNWIYFFNXEWIYFXGVDZFWIXIYFYGNXJWJXGVGOFVHUJOZ
      WNXLWKBYFGXNXOABWJVOPQZXRWIBDMFFCYAVAVBZWNEBCJZWPMWNWIEFGZYDYKWPKXEWNYFFE
      YHWNXLWLEYFGXNXQDEWJVOPQZYIEBCFRUTZWNWIYLYDYKMGZXEYMYIWIEBMFFCYAVAVBZVIZW
      NWOBACJZXASJZXALWNWIYDXCXDWOYSLHXEYIXPXRADBCFVJVKWNYSTXASJZXAWNYRTXASWNAB
      CJZYRTWNWIXCYDUUAYRKXEXPYIABCFRUTWNWIXCYDIZWKUUATKZXEWNXCYDXPYIVLXOWIUUBI
      WKUUCABCFVMVPVNZVQVRWNYEYTXAKYJXAVSOVTWAWNXAYKEDCJZSJZWPLWNWIYLYDXDXAUUFL
      HXEYMYIXRBDECFVJVKWNUUFYKTSJZYKWPWNUUETYKSWNUUEDECJZTWNWIYLXDUUEUUHKXEYMX
      REDCFRUTWNWIXDYLIZWLUUHTKZXEWNXDYLXRYMVLXQWIUUIIWLUUJDECFVMVPVNZVTWBWNYOU
      UGYKKYPYKWCOYNWEWAWDWNWPAECJZWOYQWNWIXCYLUULMGZXEXPYMWIAEMFFCYAVAVBZYCWNW
      PUUAUULSJZUULLWNWIXCYDYLWPUUOLHXEXPYIYMBEACFVJVKWNUUOTUULSJZUULWNUUATUULS
      UUDVRWNUUMUUPUULKUUNUULVSOVTWAWNUULXBUUHSJZWOLWNWIXDXCYLUULUUQLHXEXRXPYMA
      EDCFVJVKWNXBTSJZXBUUQWOWNXTUURXBKYBXBWCOWNUUHTXBSUUKWBXSWFWAWDVLWNWOMGWPM
      GWQWTUAYCYQWOWPWGPWH $.

    $d x y z D $.  $d x y z X $.
    $( The metric identification is an equivalence relation.  (Contributed by
       Thierry Arnoux, 11-Feb-2018.) $)
    metider $p |- ( D e. ( PsMet ` X ) -> ( ~Met ` D ) Er X ) $=
      ( vx wcel cv wbr wa ssbrd imp brxp sylib co cc0 wceq metidv wb cle syldan
      cxad simpld cpsmet cfv cmetid cvv cxp wss wrel metidss xpss syl6ss df-rel
      vy sylibr psmetsym 3expb eqeq1d ancom2s 3bitr4d biimpd impancom mpd simpl
      vz simprr simprl simprd psmettri2 syl13anc eqtr3d oveq12d cxr 0xr xaddid1
      mpbid ax-mp breqtrd psmetge0 syl3anc psmetcl xrletri3 mpan2 syl mpbir2and
      syl6eq syl12anc mpbird psmet0 anabsan2 impbida iserd ) ABUAUBDZCULVCBAUCU
      BZWKWLUDUDUEZUFWLUGWKWLBBUEZWMABUHZBBUIUJWLUKUMWKCEZULEZWLFZGZWPBDZWQBDZG
      ZWQWPWLFZWSWPWQWNFZXBWKWRXDWKWLWNWPWQWOHIWPWQBBJKZWKXBWRXCWKXBGZWRXCXFWPW
      QALZMNZWQWPALZMNZWRXCXFXGXIMWKWTXAXGXINZWPWQABUNUOZUPWPWQABOZWKXAWTXCXJPW
      QWPABOUQURUSUTVAWKWRWQVCEZWLFZGZGZWPXNWLFZWPXNALZMNZXQXTXSMQFZMXSQFZXQXSX
      IWQXNALZSLZMQXQWKXAWTXNBDZXSYDQFWKXPVBZXQXAYEWKXPXOXAYEGZWKWRXOVDZWKXOGWQ
      XNWNFZYGWKXOYIWKWLWNWQXNWOHIWQXNBBJKRZTXQWTXAWKXPWRXBWKWRXOVEZXERZTZXQXAY
      EYJVFZWPXNWQABVGVHXQYDMMSLZMXQXIMYCMSXQXGXIMWKXPXBXKYLXLRXQWRXHYKWKXPXBWR
      XHPYLXMRVNVIXQXOYCMNZYHWKXPYGXOYPPYJWQXNABORVNVJMVKDZYOMNVLMVMVOWDVPXQWKW
      TYEYBYFYMYNWPXNABVQVRXQXSVKDZXTYAYBGPZXQWKWTYEYRYFYMYNWPXNABVSVRYRYQYSVLX
      SMVTWAWBWCXQWKWTYEXRXTPYFYMYNWPXNABOWEWFWKWTWPWPWLFZWKWTGYTWPWPALMNZWPABW
      GWKWTYTUUAPWPWPABOWHWFWKYTGZWTWTUUBWPWPWNFZWTWTGWKYTUUCWKWLWNWPWPWOHIWPWP
      BBJKTWIWJ $.
  $}

  ${
    $d a b c d x y z D $.  $d a b c d x y z X $.  $d a b c d x y z .~ $.
    pstmval.1 $e |- .~ = ( ~Met ` D ) $.
    $( Value of the metric induced by a pseudometric ` D ` .  (Contributed by
       Thierry Arnoux, 7-Feb-2018.) $)
    pstmval $p |- ( D e. ( PsMet ` X ) -> ( pstoMet ` D ) =
      ( a e. ( X /. .~ ) , b e. ( X /. .~ )
      |-> U. { z | E. x e. a E. y e. b z = ( x D y ) } ) ) $=
      ( vd vc cpsmet cfv wcel cv cdm co wceq wrex cvv cmetid cqs cab cuni cmpt2
      crn cpstm cmpt df-pstm wa psmetdmdm adantr dmeq dmeqd adantl eqtr4d qseq1
      a1i syl fveq2 syl6reqr eqtr2d mpt2eq12 syl2anc w3a simp1r eqeq2d 2rexbidv
      qseq2 oveqd abbidv unieqd mpt2eq3dva elfvdm eleq2d rspcev mpancom wfun wb
      eqtrd cc0 cxad cle wbr wral cxr cmap crab df-psmet funmpt2 elunirn sylibr
      cxp ax-mp elfvex qsexg eqid mpt2exg fvmptd ) DFLMZNZJDGHJOZPZPZXBUAMZUBZX
      FCOZAOZBOZXBQZRZBHOZSAGOZSZCUCZUDZUEZGHFEUBZXRXGXHXIDQZRZBXLSAXMSZCUCZUDZ
      UEZLUFUDZUGTUGJYEXQUHRXAABCGHJUIURXAXBDRZUJZXQGHXRXRXPUEZYDYGXFXRRZYIXQYH
      RYGXRXDEUBZXFYGFXDRXRYJRYGFDPZPZXDXAFYLRYFDFUKULYFXDYLRXAYFXCYKXBDUMUNUOU
      PFXDEUQUSYFYJXFRZXAYFEXERYMYFXEDUAMEXBDUAUTIVAEXEXDVIUSUOVBZYNGHXFXFXRXRX
      PVCVDYGGHXRXRXPYCYGXMXRNZXLXRNZVEZXOYBYQXNYACYQXKXTABXMXLYQXJXSXGYQXBDXHX
      IXAYFYOYPVFVJVGVHVKVLVMVTXADXHLMZNZALPZSZDYENZFYTNXAUUADFLVNYSXAAFYTXHFRY
      RWTDXHFLUTVOVPVQLVRUUBUUAVSATXMXMXBQWARXMXLXBQKOZXMXBQUUCXLXBQWBQWCWDKXHW
      EHXHWEUJGXHWEJWFXHXHWMWGQWHLAGHKJWIWJADLWKWNWLXAXRTNZUUDYDTNXAFTNUUDDFLWO
      FETWPUSZUUEGHXRXRYCTTYDYDWQWRVDWS $.

    $d a b e f z .~ $.  $d a b e f x y z A $.  $d a b e f x y z B $.
    $d e f z D $.  $d e f z X $.
    $( Function value of the metric induced by a pseudometric ` D `
       (Contributed by Thierry Arnoux, 11-Feb-2018.) $)
    pstmfval $p |- ( ( D e. ( PsMet ` X ) /\ A e. X /\ B e. X ) ->
      ( [ A ] .~ ( pstoMet ` D ) [ B ] .~ ) = ( A D B ) ) $=
      ( vx vy vz va vb ve wcel co cv wceq wrex cvv wbr wb vf cpsmet cfv w3a cec
      cpstm cqs cab cuni cmpt2 pstmval 3ad2ant1 cmetid eqeltri ecelqsi 3ad2ant2
      oveqd fvex 3ad2ant3 rexeq abbidv unieqd rexbidv eqid ecexg ax-mp ab2rexex
      uniex ovmpt2 syl2anc csn wa simpr3 simpl1 simpr1 cxp wss metidss syl5eqss
      wrel syl6ss df-rel sylibr adantr relelec mpbid breqi sylib simpr2 metideq
      xpss syl12anc eqtr4d adantlr 3anassrs oveq1 eqeq2d cbvrex2v biimpi adantl
      syl oveq2 r19.29_2a cc0 simpl2 psmet0 3syl a1i breqd metidv 3bitrd mpbird
      ex simpl3 simpr rspc2ev syl3anc impbid df-sn syl6eqr unisn syl6eq 3eqtrd
      ovex ) CEUBUCMZAEMZBEMZUDZADUEZBDUEZCUFUCZNYIYJGHEDUGZYLIOZJOZKOZCNZPZKHO
      ZQZJGOZQZIUHZUIZUJZNZYQKYJQZJYIQZIUHZUIZABCNZYHYKUUDYIYJYEYFYKUUDPYGJKICD
      EGHFUKULUQYHYIYLMZYJYLMZUUEUUIPYFYEUUKYGEADDCUMUCZRFCUMURUNZUOUPYGYEUULYF
      EBDUUNUOUSGHYIYJYLYLUUCUUIUUDYSJYIQZIUHZUIYTYIPZUUBUUPUUQUUAUUOIYSJYTYIUT
      VAVBYRYJPZUUPUUHUURUUOUUGIUURYSUUFJYIYQKYRYJUTVCVAVBUUDVDUUHJKIYIYJYPDRMZ
      YIRMUUNARDVEVFUUSYJRMUUNBRDVEVFVGVHVIVJYHUUIUUJVKZUIUUJYHUUHUUTYHUUHYMUUJ
      PZIUHUUTYHUUGUVAIYHUUGUVAYHUUGUVAYHUUGVLZYMLOZUAOZCNZPZUVALUAYIYJUVBUVCYI
      MZUVDYJMZUVFUVAYHUVGUVHUVFUDZUVAUUGYHUVIVLZYMUVEUUJYHUVGUVHUVFVMUVJYEAUVC
      UUMSZBUVDUUMSZUUJUVEPYEYFYGUVIVNUVJAUVCDSZUVKUVJUVGUVMYHUVGUVHUVFVOUVJDVT
      ZUVGUVMTYHUVNUVIYEYFUVNYGYEDRRVPZVQUVNYEDEEVPZUVOYEDUUMUVPFCEVRVSEEWKWADW
      BWCZULWDZUVCADWEXAWFAUVCDUUMFWGWHUVJBUVDDSZUVLUVJUVHUVSYHUVGUVHUVFWIUVJUV
      NUVHUVSTUVRUVDBDWEXAWFBUVDDUUMFWGWHAUVCCBUVDEWJWLWMWNWOUUGUVFUAYJQLYIQZYH
      UUGUVTYQUVFYMUVCYOCNZPJKLUAYIYJYNUVCPYPUWAYMYNUVCYOCWPWQYOUVDPUWAUVEYMYOU
      VDUVCCXBWQWRWSWTXCXMYHUVAUUGYHUVAVLZAYIMZBYJMZUVAUUGUWBUWCAACNXDPZUWBYEYF
      UWEYEYFYGUVAVNZYEYFYGUVAXEZACEXFVJUWBUWCAADSZAAUUMSZUWEUWBYEUVNUWCUWHTUWF
      UVQAADWEXGUWBDUUMAADUUMPUWBFXHZXIUWBYEYFYFUWIUWETUWFUWGUWGAACEXJWLXKXLUWB
      UWDBBCNXDPZUWBYEYGUWKUWFYEYFYGUVAXNZBCEXFVJUWBUWDBBDSZBBUUMSZUWKUWBYEUVNU
      WDUWMTUWFUVQBBDWEXGUWBDUUMBBUWJXIUWBYEYGYGUWNUWKTUWFUWLUWLBBCEXJWLXKXLYHU
      VAXOYQUVAYMAYOCNZPJKABYIYJYNAPYPUWOYMYNAYOCWPWQYOBPUWOUUJYMYOBACXBWQXPXQX
      MXRVAIUUJXSXTVBUUJABCYDYAYBYC $.

    $( The metric induced by a pseudometric is a full-fledged metric on the
       equivalence classes of the metric identification.  (Contributed by
       Thierry Arnoux, 11-Feb-2018.) $)
    pstmxmet $p |- ( D e. ( PsMet ` X ) ->
      ( pstoMet ` D ) e. ( *Met ` ( X /. .~ ) ) ) $=
      ( vx vy vz va vb wcel cxr cv co cc0 wceq wb wral wa cvv r19.29a vc cpsmet
      cfv cpstm cqs cxmt cxp wf cxad cle wbr wfn wrex cuni cmpt2 ab2rexex uniex
      cab vex rgen2w eqid fnmpt2 ax-mp pstmval fneq1d cec simpllr simpr oveq12d
      mpbiri simp-5l simp-4r simplr pstmfval syl3anc eqtrd psmetf eqeltrd elqsi
      fovrnd ad2antll ad2antrr ad2antrl ralrimivva ffnov sylanbrc simpll eqeq1d
      syl cmetid breqi metidv anassrs syl5bb bitr4d wer ereq1 sylibr erth bitrd
      metider adantllr adantlr adantr eqeq12d 3bitr4d simp-6l simp-6r psmettri2
      syl13anc simp-5r syl21anc breq12d adantl6r ad5antlr adantl5r ad4antlr jca
      mpbird adantl4r ad3antlr ralrimiva anasss elfvex qsexg isxmet 3syl ) ACUB
      UCJZAUDUCZCBUEZUFUCJZYJYJUGZKYIUHZELZFLZYIMZNOZYNYOOZPZYPGLZYNYIMZYTYOYIM
      ZUIMZUJUKZGYJQZRZFYJQEYJQZRZYHYMUUGYHYIYLULZYPKJZFYJQEYJQYMYHUUIEFYJYJYTH
      LZILZAMZOIYOUMHYNUMGURZUNZUOZYLULZUUOSJZFYJQEYJQUUQUUREFYJYJUUNHIGYNYOUUM
      EUSFUSUPUQUTEFYJYJUUOUUPSUUPVAVBVCYHYLYIUUPHIGABCEFDVDVEVJYHUUJEFYJYJYHYN
      YJJZYOYJJZRZRZYNUUKBVFZOZUUJHCUVBUUKCJZRZUVDRZYOUULBVFZOZUUJICUVGUULCJZRZ
      UVIRZYPUUMKUVLYPUVCUVHYIMZUUMUVLYNUVCYOUVHYIUVFUVDUVJUVIVGZUVKUVIVHZVIZUV
      LYHUVEUVJUVMUUMOZYHUVAUVEUVDUVJUVIVKZUVBUVEUVDUVJUVIVLZUVGUVJUVIVMZUUKUUL
      ABCDVNZVOVPUVLUUKUULKCCAUVLYHCCUGKAUHUVRACVQWIUVSUVTVTVRUVBUVIICUMZUVEUVD
      UUTUWBYHUUSICYOBVSZWAWBZTUUSUVDHCUMZYHUUTHCYNBVSZWCZTWDEFYJYJKYIWEWFYHUUF
      EFYJYJUVBYSUUEUVBUVDYSHCUVGUVIYSICUVLUVMNOZUVCUVHOZYQYRUVKUWHUWIPZUVIUVFU
      VJUWJUVDYHUVEUVJUWJUVAYHUVERZUVJRZUWHUUKUULBUKZUWIUWLUWHUUMNOZUWMUWLUVMUU
      MNUWLYHUVEUVJUVQYHUVEUVJWGZYHUVEUVJVMZUWKUVJVHUWAVOZWHUWMUUKUULAWJUCZUKZU
      WLUWNUUKUULBUWRDWKYHUVEUVJUWSUWNPUUKUULACWLWMWNWOUWLUUKUULBCUWLCUWRWPZCBW
      PZUWLYHUWTUWOACXAWIBUWROUXAUWTPDCBUWRWQVCWRUWPWSWTXBXCXDUVLYPUVMNUVPWHUVL
      YNUVCYOUVHUVNUVOXEXFUWDTUWGTYHUUSUUTUUEYHUUSRUUTRZUUDGYJUXBYTYJJZRUVDUUDH
      CYHUUSUUTUXCUVEUVDUUDYHUUTRUXCRUVERUVDRUVIUUDICYHUUTUXCUVEUVDUVJUVIUUDYHU
      XCRUVERUVDRUVJRUVIRYTUALZBVFZOZUUDUACYHUXCUVEUVDUVJUVIUXDCJZUXFUUDUWKUVDR
      ZUVJRZUVIRZUXGRZUXFRZUUDUUMUXDUUKAMZUXDUULAMZUIMZUJUKZUXLYHUXGUVEUVJUXPYH
      UVEUVDUVJUVIUXGUXFXGZUXJUXGUXFVMZYHUVEUVDUVJUVIUXGUXFXHZUXHUVJUVIUXGUXFVL
      ZUUKUULUXDACXIXJUXLYPUUMUUCUXOUJUXLYPUVMUUMUXLYNUVCYOUVHYIUWKUVDUVJUVIUXG
      UXFXKZUXIUVIUXGUXFVGZVIUXLYHUVEUVJUVQUXQUXSUXTUWQXLVPUXLUUAUXMUUBUXNUIUXL
      UUAUXEUVCYIMZUXMUXLYTUXEYNUVCYIUXKUXFVHZUYAVIUXLYHUXGUVEUYCUXMOUXQUXRUXSU
      XDUUKABCDVNVOVPUXLUUBUXEUVHYIMZUXNUXLYTUXEYOUVHYIUYDUYBVIUXLYHUXGUVJUYEUX
      NOUXQUXRUXTUXDUULABCDVNVOVPVIXMXSXNUXCUXFUACUMYHUVEUVDUVJUVIUACYTBVSXOTXP
      UUTUWBYHUXCUVEUVDUWCXQTXTUUSUWEYHUUTUXCUWFYATYBYCXRWDXRYHCSJYJSJYKUUHPACU
      BYDCBSYEEFGSYIYJYFYGXS $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Continuity - misc additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    hauseqcn.x $e |- X = U. J $.
    hauseqcn.k $e |- ( ph -> K e. Haus ) $.
    hauseqcn.f $e |- ( ph -> F e. ( J Cn K ) ) $.
    hauseqcn.g $e |- ( ph -> G e. ( J Cn K ) ) $.
    hauseqcn.e $e |- ( ph -> ( F |` A ) = ( G |` A ) ) $.
    hauseqcn.a $e |- ( ph -> A C_ X ) $.
    hauseqcn.c $e |- ( ph -> ( ( cls ` J ) ` A ) = X ) $.
    $( In a Hausdorff topology, two continuous functions which agree on a dense
       set agree everywhere.  (Contributed by Thierry Arnoux, 28-Dec-2017.) $)
    hauseqcn $p |- ( ph -> F = G ) $=
      ( wceq cin wss cfv wcel 3syl cuni cdm ccl ctop ccn co cntop1 dmin wf eqid
      syl cnf fdm ineq12d syl6eq syl5sseq cres wfn wb syl6sseq fnreseql syl3anc
      inidm ffn mpbid ccld hauseqlcld cldcls 3sstr3d syl5eqssr fneqeql2 syl2anc
      clsss mpbird ) ACDOZEUAZCDPUBZQZAVPGVQHABEUCRZRZVQVSRZGVQAEUDSZVQVPQBVQQZ
      VTWAQACEFUEUFZSZWBJCEFUGUKACUBZDUBZPZVQVPCDUHAWHVPVPPVPAWFVPWGVPAWEVPFUAZ
      CUIZWFVPOJCEFVPWIVPUJZWIUJZULZVPWICUMTADWDSZVPWIDUIZWGVPOKDEFVPWIWKWLULZV
      PWIDUMTUNVPVCUOUPACBUQDBUQOZWCLACVPURZDVPURZBVPQWQWCUSAWEWJWRJWMVPWICVDTZ
      AWNWOWSKWPVPWIDVDTZABGVPMHUTVPCDBVAVBVEVQBEVPWKVMVBNAVQEVFRSWAVQOACDEFIJK
      VGVQEVHUKVIVJAWRWSVOVRUSWTXAVPCDVKVLVN $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Topology of the closed unit
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $( The closed unit is a subset of the set of the complex numbers Useful lemma
     for manipulating probabilities within the closed unit.  (Contributed by
     Thierry Arnoux, 12-Dec-2016.) $)
  unitsscn $p |- ( 0 [,] 1 ) C_ CC $=
    ( cc0 c1 cicc co cr cc unitssre ax-resscn sstri ) ABCDEFGHI $.

  $( The closed unit is a subset of the set of the real numbers Useful lemma
     for manipulating probabilities within the closed unit.  (Contributed by
     Thierry Arnoux, 21-Dec-2016.) $)
  elunitrn $p |- ( A e. ( 0 [,] 1 ) -> A e. RR ) $=
    ( cc0 c1 cicc co wcel cr cle wbr 0re 1re elicc2i simp1bi ) ABCDEFAGFBAHIACH
    IBCAJKLM $.

  $( The closed unit is a subset of the set of the complext numbers Useful
     lemma for manipulating probabilities within the closed unit.  (Contributed
     by Thierry Arnoux, 21-Dec-2016.) $)
  elunitcn $p |- ( A e. ( 0 [,] 1 ) -> A e. CC ) $=
    ( cc0 c1 cicc co wcel elunitrn recnd ) ABCDEFAAGH $.

  $( An element of the closed unit is positive Useful lemma for manipulating
     probabilities within the closed unit.  (Contributed by Thierry Arnoux,
     20-Dec-2016.) $)
  elunitge0 $p |- ( A e. ( 0 [,] 1 ) -> 0 <_ A ) $=
    ( cc0 c1 cicc co wcel cr cle wbr 0re 1re elicc2i simp2bi ) ABCDEFAGFBAHIACH
    IBCAJKLM $.

  $( The closed unit is a subset of the set of the extended non-negative
     reals.  Useful lemma for manipulating probabilities within the closed
     unit.  (Contributed by Thierry Arnoux, 12-Dec-2016.) $)
  unitssxrge0 $p |- ( 0 [,] 1 ) C_ ( 0 [,] +oo ) $=
    ( cc0 cpnf cicc co wcel c1 wss cxr cle wbr 0xr pnfxr pnfge ax-mp lbicc2 1re
    mp3an rexri 0le1 mp2an w3a wb elicc1 mpbir3an iccss2 ) AABCDZEZFUFEZAFCDUFG
    AHEZBHEZABIJZUGKLUIUKKAMNABOQUHFHEZAFIJZFBIJZFPRZSULUNUOFMNUIUJUHULUMUNUAUB
    KLABFUCTUDABAFUET $.

  $( Necessary conditions for a quotient to be in the closed unit.  (somewhat
     too strong, it would be sufficient that A and B are in RR+) (Contributed
     by Thierry Arnoux, 20-Dec-2016.) $)
  unitdivcld $p |- ( ( A e. ( 0 [,] 1 ) /\ B e. ( 0 [,] 1 ) /\ B =/= 0 ) ->
                                   ( A <_ B <-> ( A / B ) e. ( 0 [,] 1 ) ) ) $=
    ( cc0 c1 cicc co w3a cle wbr cr wa elunitrn 3ad2ant1 simp3 adantr elunitge0
    wcel wb 0re 1re wne cdiv 3ad2ant2 redivcld clt ltlen sylancr biimpar 3com23
    3impb mpd3an3 3adant1 divge0 syl22anc a1i ledivmul syl112anc ax-1rid breq2d
    cmul syl bitr2d biimpa 3jca ex syl5ibr impbid elicc2i syl6bbr ) ACDEFZQZBVJ
    QZBCUAZGZABHIZABUBFZJQZCVPHIZVPDHIZGZVPVJQVNVOVTVNVOVTVNVOKVQVRVSVNVQVOVNAB
    VKVLAJQZVMALMZVLVKBJQZVMBLZUCZVKVLVMNUDOVNVRVOVNWACAHIZWCCBUEIZVRWBVKVLWFVM
    APMWEVLVMWGVKVLVMCBHIZWGVLWHVMBPOVLWHVMWGVLWHVMWGVLWGWHVMKZVLCJQWCWGWIRSWDC
    BUFUGUHUJUIUKULZABUMUNOVNVOVSVNVSABDUTFZHIZVOVNWADJQZWCWGVSWLRWBWMVNTUOWEWJ
    ADBUPUQVNWCWLVORWEWCWKBAHBURUSVAVBZVCVDVEVTVOVNVSVQVRVSNWNVFVGCDVPSTVHVI $.

  ${
    $d x y $.
    df-iis $e |- I = ( ( mulGrp ` CCfld ) |`s ( 0 [,] 1 ) ) $.
    $( The closed unit monoid is a topological monoid.  (Contributed by Thierry
       Arnoux, 25-Mar-2017.) $)
    iistmd $p |- I e. TopMnd $=
      ( vx vy ccnfld cmgp cfv ctmd wcel cc0 c1 cicc co csubmnd cnnrg mp2b cc cv
      cmul wral cnrg ctrg nrgtrg trgtmd wss unitsscn 1elunit iimulcl rgen2a w3a
      eqid cmnd wb crg nrgrng rngmgp cnfldbas mgpbas rngidval cnfldmul mgpplusg
      cnfld1 issubm ax-mp mpbir3an submtmd mp2an ) EFGZHIZJKLMZVHNGIZAHIEUAIZEU
      BIVIOEUCEVHVHUKZUDPVKVJQUEZKVJIZCRZDRZSMVJIZDVJTCVJTZUFUGVRCDVJVPVQUHUIVH
      ULIZVKVNVOVSUJUMVLEUNIVTOEUOEVHVMUPPCDQSVJVHKQEVHVMUQUREKVHVMVBUSESVHVMUT
      VAVCVDVEVJVHABVFVG $.
  $}


$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Topology of ` ( RR X. RR ) `
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    unicls.1 $e |- J e. Top $.
    unicls.2 $e |- X = U. J $.
    $( The union of the closed set is the underlying set of the topology.
       (Contributed by Thierry Arnoux, 21-Sep-2017.) $)
    unicls $p |- U. ( Clsd ` J ) = X $=
      ( ccld cfv cuni wss wcel wceq cpw cldss2 sspwuni mpbi ctop topcld unissel
      ax-mp mp2an ) AEFZGZBHZBTIZUABJTBKHUBABDLTBMNAOIUCCABDPRTBQS $.
  $}

  ${
    tpr2tp.0 $e |- J = ( topGen ` ran (,) ) $.
    $( The usual topology on ` ( RR X. RR ) ` is the product topology of the
       usual topology on ` RR ` .  (Contributed by Thierry Arnoux,
       21-Sep-2017.) $)
    tpr2tp $p |- ( J tX J ) e. ( TopOn ` ( RR X. RR ) ) $=
      ( cr ctopon cfv wcel ctx cxp cioo crn ctg retopon eqeltri txtopon mp2an
      co ) ACDEZFZRAAGPCCHDEFAIJKEQBLMZSAACCNO $.

    $( The usual topology on ` ( RR X. RR ) ` is the product topology of the
       usual topology on ` RR ` .  (Contributed by Thierry Arnoux,
       21-Sep-2017.) $)
    tpr2uni $p |- U. ( J tX J ) = ( RR X. RR ) $=
      ( cr cxp ctx co cuni tpr2tp toponunii eqcomi ) CCDZAAEFZGKLABHIJ $.
  $}

  ${
    $d r A $.  $d r B $.
    $( Rewrite the cartesian product of two sets as the intersection of their
       preimage by ` 1st ` and ` 2nd ` , the projections on the first and
       second elements.  (Contributed by Thierry Arnoux, 22-Sep-2017.) $)
    xpinpreima $p |- ( A X. B ) = ( ( `' ( 1st |` ( _V X. _V ) ) " A )
                                i^i ( `' ( 2nd |` ( _V X. _V ) ) " B ) ) $=
      ( vr c1st cfv wcel cvv cxp crab c2nd cin cres ccnv cima wf wceq fncnvima2
      wfn ffn mp2b cv wa inrab f1stres fvres eleq1d rabbiia f2ndres ineq12i xp2
      eqtri 3eqtr4ri ) CUAZDEZAFZCGGHZIZUMJEZBFZCUPIZKUOUSUBCUPIDUPLZMANZJUPLZM
      BNZKABHUOUSCUPUCVBUQVDUTVBUMVAEZAFZCUPIZUQUPGVAOVAUPRVBVGPGGUDUPGVASCUPAV
      AQTVFUOCUPUMUPFZVEUNAUMUPDUEUFUGUKVDUMVCEZBFZCUPIZUTUPGVCOVCUPRVDVKPGGUHU
      PGVCSCUPBVCQTVJUSCUPVHVIURBUMUPJUEUFUGUKUICABUJUL $.

    $d r E $.  $d r F $.
    $( Rewrite the cartesian product of two sets as the intersection of their
       preimage by ` 1st ` and ` 2nd ` , the projections on the first and
       second elements.  (Contributed by Thierry Arnoux, 22-Sep-2017.) $)
    xpinpreima2 $p |- ( ( A C_ E /\ B C_ F )
                -> ( A X. B ) = ( ( `' ( 1st |` ( E X. F ) ) " A )
                              i^i ( `' ( 2nd |` ( E X. F ) ) " B ) ) ) $=
      ( vr wss wa cxp c1st cfv wcel crab c2nd cin cres ccnv cima sseldd syl6eqr
      cvv cv xpss rabss2 mp1i simprl simpll simprrl simplr simprrr jca sylanbrc
      elxp7 rabss3d eqssd xp2 syl6reqr inrab wf wfn wceq f1stres fncnvima2 mp2b
      ffn fvres eleq1d rabbiia eqtri f2ndres ineq12i ) ACFZBDFZGZABHZEUAZIJZAKZ
      ECDHZLZVOMJZBKZEVRLZNZIVROZPAQZMVROZPBQZNVMVNVQWAGZEVRLZWCVMWIWHETTHZLZVN
      VMWIWKVRWJFWIWKFVMCDUBWHEVRWJUCUDVMWHEWJVRVMVOWJKZWHGZGZWLVPCKZVTDKZGVOVR
      KZVMWLWHUEWNWOWPWNACVPVKVLWMUFVMWLVQWAUGRWNBDVTVKVLWMUHVMWLVQWAUIRUJVOCDU
      LUKUMUNEABUOUPVQWAEVRUQSWEVSWGWBWEVOWDJZAKZEVRLZVSVRCWDURWDVRUSWEWTUTCDVA
      VRCWDVDEVRAWDVBVCWSVQEVRWQWRVPAVOVRIVEVFVGVHWGVOWFJZBKZEVRLZWBVRDWFURWFVR
      USWGXCUTCDVIVRDWFVDEVRBWFVBVCXBWAEVRWQXAVTBVOVRMVEVFVGVHVJS $.
  $}

  ${
    $( The complex square of side ` D ` is a subset of the complex circle of
       radius ` D ` .  (Contributed by Thierry Arnoux, 25-Sep-2017.) $)
    sqsscirc1 $p |- ( ( ( ( X e. RR /\ 0 <_ X ) /\ ( Y e. RR /\ 0 <_ Y ) )
      /\ D e. RR+ ) -> ( ( X < ( D / 2 ) /\ Y < ( D / 2 ) ) ->
      ( sqr ` ( ( X ^ 2 ) + ( Y ^ 2 ) ) ) < D ) ) $=
      ( cr wcel cc0 cle wbr wa c2 cdiv co clt csqr cfv a1i cmul 2re c1 c4 caddc
      crp simp-4l resqcld simpllr simpld readdcld sqge0d addge0d resqrcld rpred
      simplr rehalfcld simprl simp-4r rpge0d divge0d lt2sqd mpbid simprr simprd
      cexp 2rp lt2addd sqrltd rpre recnd 2timesd fveq2d rpge0 sqrsqd oveq2d 0re
      2pos ltleii sqrmuld cc 2cn sqrcld rpcn 2ne0 div32d 3eqtr4d eqtr3d 2lt4 wb
      wne 4re 4pos sqrlt mp4an mpbi sqrpclii ltdiv1ii sqrsq mp2an oveq1i fveq2i
      wceq sq2 dividi 3eqtr3i breqtri 1re ltmul1d mpbii mulid2d breqtrd eqbrtrd
      id syl lttrd ex ) BDEZFBGHZIZCDEZFCGHZIZIZAUBEZIZBAJKLZMHZCYCMHZIZBJVBLZC
      JVBLZUALZNOZAMHYBYFIZYJYCJVBLZYLUALZNOZAYKYIYKYGYHYKBXNXOXSYAYFUCZUDZYKCY
      KXQXRXPXSYAYFUEZUFZUDZUGZYKYGYHYPYSYKBYOUHYKCYRUHUIZUJYKYMYKYLYLYKYCYKAYK
      AXTYAYFULZUKZUMZUDZUUEUGZYKYLYLUUEUUEYKYCUUDUHZUUGUIZUJUUCYKYIYMMHYJYNMHY
      KYGYHYLYLYPYSUUEUUEYKYDYGYLMHYBYDYEUNYKBYCYOUUDXNXOXSYAYFUOYKAJUUCJUBEZYK
      VCPYKAUUBUPUQZURUSYKYEYHYLMHYBYDYEUTYKCYCYRUUDYKXQXRYQVAUUJURUSVDYKYIYMYT
      UUAUUFUUHVEUSYKYAYNAMHUUBYAYNJNOZJKLZAQLZAMYAJYLQLZNOZYNUUMYAUUNYMNYAYLYA
      YLYAYCYAAAVFZUMZUDZVGVHVIYAUUKYLNOZQLUUKYCQLUUOUUMYAUUSYCUUKQYAYCUUQYAAJU
      UPUUIYAVCPAVJUQVKVLYAJYLJDEZYARPZFJGHZYAFJVMRVNVOZPZUURYAYCUUQUHVPYAUUKJA
      YAJJVQEYAVRPZVSUVEAVTZJFWGYAWAPWBWCWDYAUUMSAQLZAMYAUULSMHUUMUVGMHUULTNOZJ
      KLZSMUUKUVHMHZUULUVIMHJTMHZUVJWEUUTUVBTDEFTGHUVKUVJWFRUVCWHFTVMWHWIVOJTWJ
      WKWLUUKUVHJJRVNWMTWHWIWMRVNWNWLJJVBLZNOZJKLJJKLUVISUVMJJKUUTUVBUVMJWSRUVC
      JWOWPWQUVMUVHJKUVLTNWTWRWQJVRWAXAXBXCYAUULSAYAUUKYAJUVAUVDUJUMSDEYAXDPYAX
      JXEXFYAAUVFXGXHXIXKXLXM $.
  $}

  ${
    $( The complex square of side ` D ` is a subset of the complex disc of
       radius ` D ` .  (Contributed by Thierry Arnoux, 25-Sep-2017.) $)
    sqsscirc2 $p |- ( ( ( A e. CC /\ B e. CC ) /\ D e. RR+ ) ->
      ( ( ( abs ` ( Re ` ( B - A ) ) ) < ( D / 2 ) /\
          ( abs ` ( Im ` ( B - A ) ) ) < ( D / 2 ) )
                                              -> ( abs ` ( B - A ) ) < D ) ) $=
      ( cc wcel wa co cfv cabs c2 clt wbr cexp caddc csqr cc0 cle recnd abscld
      cr crp cmin cre cim wi simplr simpll subcld recld absge0d jca imcld simpr
      cdiv sqsscirc1 syl21anc absval2d breq1d absresq syl oveq12d fveq2d bitr4d
      wceq sylibrd ) ADEZBDEZFZCUAEZFZBAUBGZUCHZIHZCJUNGZKLVKUDHZIHZVNKLFZVMJMG
      ZVPJMGZNGZOHZCKLZVKIHZCKLZVJVMTEZPVMQLZFVPTEZPVPQLZFVIVQWBUEVJWEWFVJVLVJV
      LVJVKVJBAVFVGVIUFVFVGVIUGUHZUIZRZSVJVLWKUJUKVJWGWHVJVOVJVOVJVKWIULZRZSVJV
      OWMUJUKVHVIUMCVMVPUOUPVJWDVLJMGZVOJMGZNGZOHZCKLWBVJWCWQCKVJVKWIUQURVJWAWQ
      CKVJVTWPOVJVRWNVSWONVJVLTEVRWNVDWJVLUSUTVJVOTEVSWOVDWLVOUSUTVAVBURVCVE $.
  $}

  ${
    $d x y F $.  $d x G $.  $d x y H $.  $d x y X $.  $d x y Y $.
    cnre2csqlem.1 $e |- ( G |` ( RR X. RR ) ) = ( H o. F ) $.
    cnre2csqlem.2 $e |- F Fn ( RR X. RR ) $.
    cnre2csqlem.3 $e |- G Fn _V $.
    cnre2csqlem.4 $e |- ( x e. ( RR X. RR ) -> ( G ` x ) e. RR ) $.
    cnre2csqlem.5 $e |- ( ( x e. ran F /\ y e. ran F )
                          -> ( H ` ( x - y ) ) = ( ( H ` x ) - ( H ` y ) ) ) $.
    $( Lemma for ~ cnre2csqima (Contributed by Thierry Arnoux, 27-Sep-2017.) $)
    cnre2csqlem $p |- ( ( X e. ( RR X. RR ) /\ Y e. ( RR X. RR ) /\ D e. RR+ )
      -> ( Y e. ( `' ( G |` ( RR X. RR ) )
                                " ( ( ( G ` X ) - D ) (,) ( ( G ` X ) + D ) ) )
           -> ( abs ` ( H ` ( ( F ` Y ) - ( F ` X ) ) ) ) < D ) ) $=
      ( cr wcel cfv cmin co clt wceq cxp crp w3a cres ccnv caddc cioo cima cabs
      wbr wa wfn wb cvv wss fnssres mp2an elpreima mp1i simplbda ex simp2 fvres
      ssv syl eleq1d simp1 cv fveq2 vtoclga simp3 rpred resubcld rexrd readdcld
      cxr elioo2 syl2anc biimpa simp2d simp3d jca sylbid absdiflt biimprd 3syld
      wi syl3anc crn fnfvelrn sylancr oveq1 fveq2d oveq1d oveq2 oveq2d vtocl2ga
      eqeq12d ccom fveq1i fvco2 3eqtr3a oveq12d eqtr4d breq1d sylibrd ) GNNUAZO
      ZHXGOZCUBOZUCZHEXGUDZUEGEPZCQRZXMCUFRZUGRZUHOZHEPZXMQRZUIPZCSUJZHDPZGDPZQ
      RZFPZUIPZCSUJXKXQHXLPZXPOZXNXRSUJZXRXOSUJZUKZYAXKXQYHXKXQXIYHXLXGULZXQXIY
      HUKUMXKEUNULXGUNUOYLKXGVDUNXGEUPUQXGHXPXLURUSUTVAXKYHXRXPOZYKXKYGXRXPXKXI
      YGXRTXHXIXJVBZHXGEVCVEZVFXKYMYKXKYMUKZYIYJYPXRNOZYIYJXKYMYQYIYJUCZXKXNVPO
      XOVPOYMYRUMXKXNXKXMCXKXHXMNOZXHXIXJVGZAVHZEPZNOZYSAGXGUUAGTUUBXMNUUAGEVIV
      FLVJVEZXKCXHXIXJVKVLZVMVNXKXOXKXMCUUDUUEVOVNXNXOXRVQVRVSZVTYPYQYIYJUUFWAW
      BVAWCXKYQYSCNOZYKYAWGXKXIYQYNUUCYQAHXGUUAHTUUBXRNUUAHEVIVFLVJVEUUDUUEYQYS
      UUGUCYAYKXRXMCWDWEWHWFXKYFXTCSXKYEXSUIXKYEYBFPZYCFPZQRZXSXKYBDWIZOZYCUUKO
      ZYEUUJTZXKDXGULZXIUULJYNXGHDWJWKXKUUOXHUUMJYTXGGDWJWKUUABVHZQRZFPZUUAFPZU
      UPFPZQRZTYBUUPQRZFPZUUHUUTQRZTUUNABYBYCUUKUUKUUAYBTZUURUVCUVAUVDUVEUUQUVB
      FUUAYBUUPQWLWMUVEUUSUUHUUTQUUAYBFVIWNWRUUPYCTZUVCYEUVDUUJUVFUVBYDFUUPYCYB
      QWOWMUVFUUTUUIUUHQUUPYCFVIWPWRMWQVRXKXRUUHXMUUIQXKYGHFDWSZPZXRUUHHXLUVGIW
      TYOXKUUOXIUVHUUHTJYNXGFDHXAWKXBXKGXLPZGUVGPZXMUUIGXLUVGIWTXKXHUVIXMTYTGXG
      EVCVEXKUUOXHUVJUUITJYTXGFDGXAWKXBXCXDWMXEXF $.
  $}


  ${
    $d x y z $.  $d u z F $.  $d u z X $.  $d u z Y $.
    cnre2csqima.1 $e |- F = ( x e. RR , y e. RR |-> ( x + ( _i x. y ) ) ) $.
    $( Image of a centered square by the canonical bijection from
       ` ( RR X. RR ) ` to ` CC ` .  (Contributed by Thierry Arnoux,
       27-Sep-2017.) $)
    cnre2csqima $p |- ( ( X e. ( RR X. RR ) /\ Y e. ( RR X. RR ) /\ D e. RR+ )
      -> ( Y e. ( ( ( ( 1st ` X ) - D ) (,) ( ( 1st ` X ) + D ) )
               X. ( ( ( 2nd ` X ) - D ) (,) ( ( 2nd ` X ) + D ) ) ) ->
           ( ( abs ` ( Re ` ( ( F ` Y ) - ( F ` X ) ) ) ) < D /\
             ( abs ` ( Im ` ( ( F ` Y ) - ( F ` X ) ) ) ) < D ) ) ) $=
      ( vz c1st cfv co caddc c2nd wcel cr cre cim cc wceq cvv vu cmin cioo cres
      cxp ccnv cima cin crp w3a cabs clt wbr wa wss wb xpinpreima2 eleq2d mp2an
      ioossre elin cv ci cmul ccj cdiv cmpt2 ccom simpl recnd ax-icn a1i mulcld
      c2 simpr addcld reval syl crre eqtr3d mpt2eq3ia wtru adantl cmpt df-re id
      fveq2 oveq12d oveq1d fmpt2co trud df1stres 3eqtr4ri wral wfn rgen2a ax-mp
      fnmpt2 wfo fo1st fofn xp1st crn cab rnmpt2 adantr eqeltrd rexlimivv abssi
      wrex ex eqsstri sseldi resubd cnre2csqlem imval crim df-im oveq1 df2ndres
      fveq2d fo2nd xp2nd imsubd anim12d syl5bi ) FEIJZCUBKZYGCLKZUCKZEMJZCUBKZY
      KCLKZUCKZUEZNZFIOOUEZUDZUFYJUGZMYQUDZUFYNUGZUHZNZEYQNFYQNCUINUJZFDJEDJUBK
      ZPJUKJCULUMZUUEQJUKJCULUMZUNZYJOUOZYNOUOZYPUUCUPYHYIUTYLYMUTUUIUUJUNYOUUB
      FYJYNOOUQURUSUUCFYSNZFUUANZUNUUDUUHFYSUUAVAUUDUUKUUFUULUUGHUACDIPEFABOOAV
      BZVCBVBZVDKZLKZUUPVEJZLKZVNVFKZVGZABOOUUMVGPDVHZYRABOOUUSUUMUUMONZUUNONZU
      NZUUPPJZUUSUUMUVDUUPRNZUVEUUSSUVDUUMUUOUVDUUMUVBUVCVIVJUVDVCUUNVCRNUVDVKV
      LUVDUUNUVBUVCVOVJVMVPZUUPVQVRUUMUUNVSVTWAUVAUUTSWBABHOORUUPHVBZUVHVEJZLKZ
      VNVFKZUUSDPUVDUVFWBUVGWCZDABOOUUPVGSWBGVLZPHRUVKWDSWBHWEVLUVHUUPSZUVJUURV
      NVFUVNUVHUUPUVIUUQLUVNWFUVHUUPVEWGWHWIWJWKABOOWLWMUVFBOWNAOWNDYQWOUVFABOU
      VGWPABOOUUPDRGWRWQZTTIWSITWOWTTTIXAWQUVHOOXBUVHDXCZNZUAVBZUVPNZUNZUVHUVRU
      VTUVPRUVHUVPUVNBOXJAOXJZHXDRABHOOUUPDGXEUWAHRUVNUVHRNZABOOUVDUVNUWBUVDUVN
      UNUVHUUPRUVDUVNVOUVDUVFUVNUVGXFXGXKXHXIXLZUVQUVSVIXMZUVTUVPRUVRUWCUVQUVSV
      OXMZXNXOHUACDMQEFABOOUUPVCVFKZPJZVGZABOOUUNVGQDVHZYTABOOUWGUUNUVDUUPQJZUW
      GUUNUVDUVFUWJUWGSUVGUUPXPVRUUMUUNXQVTWAUWIUWHSWBABHOORUUPUVHVCVFKZPJZUWGD
      QUVLUVMQHRUWLWDSWBHXRVLUVNUWKUWFPUVHUUPVCVFXSYAWJWKABOOXTWMUVOTTMWSMTWOYB
      TTMXAWQUVHOOYCUVTUVHUVRUWDUWEYDXOYEYFYF $.
  $}

  ${
    $d u v x y z $.  $d d m r x A $.  $d d r B $.  $d d m x G $.  $d d x J $.
    $d d x y m r X $.
    tpr2rico.0 $e |- J = ( topGen ` ran (,) ) $.
    tpr2rico.1 $e |- G = ( u e. RR , v e. RR |-> ( u + ( _i x. v ) ) ) $.
    tpr2rico.2 $e |- B = ran ( x e. ran (,) , y e. ran (,) |-> ( x X. y ) ) $.
    $( For any point of an open set of the usual topology on ` ( RR X. RR ) `
       there is an opened square which contains that point and is entirely in
       the open set.  This is square is actually a ball by the ` ( l ^ +oo ) `
       norm ` X ` .  (Contributed by Thierry Arnoux, 21-Sep-2017.) $)
    tpr2rico $p |- ( ( A e. ( J tX J ) /\ X e. A ) ->
      E. r e. B ( X e. r /\ r C_ A ) ) $=
      ( vd co wcel wa crp cr cc vz vm ctx c1st cfv cv cdiv cmin caddc cioo c2nd
      c2 cxp wss wrex wral crn cmpt2 wceq cxr wfn cpw clt df-ioo ixxf mp1i cuni
      wf ffn elssuni ctop retop eqeltri uniretop unieqi eqtr4i txunii syl6sseqr
      ctg ad2antrr simplr sseldd xp1st syl simpr rpred rehalfcld resubcld rexrd
      readdcld fnovrn syl3anc xp2nd eqeq2d eqid vex syl6eleqr ralrimiva cvv wbr
      rphalfcld ltsubrpd ltaddrpd w3a wb elioo1 syl2anc mpbir3and jca cabs cima
      eqidd cmnf cpnf mnfle pnfge mnfxr ioossioo mpanl12 ioomax syl6sseq sselda
      cle pnfxr wi adantr wf1o mp2b a1i syl21anc imp cnxmet ex wfun ax-mp f1odm
      cdm funfvima sylancr r19.29 xpeq1 xpeq2 rspc2ev xpex elrnmpt2 sylibr xpss
      sseldi elxp7 sylanbrc ccnv ccom cbl xpss12 expcom ancld imdistanri simpr1
      cre 3anassrs cnre2csqima ccnfld ctopn chmeo cnrehmeo cnfldtopon toponunii
      cim hmeof1o f1of ffvelrnd ffvelrnda sqsscirc2 rpxrd jctil cnmetdval elbl3
      cxmt eqbrtrd biimpar syldan syld f1ocnv f1ofun f1ocnvfv1 eleq1d biimpd ci
      3syld ssrdv cmul mpt2fun hmeoima cnfldtopn elmopn2 simprbi sseq1d rexbidv
      mpan oveq1 rspcva imass2 f1of1 f1imacnv sseq2d syl5ib reximdv sstr reximi
      wf1 mpd eleq2 sseq1 anbi12d rspcev rexlimivw ) EHHUCOZPZIEPZQZIUDUEZNUFZU
      LUGOZUHOZUYAUYCUIOZUJOZIUKUEZUYCUHOZUYGUYCUIOZUJOZUMZFPZIUYKPZUYKEUNZQZQZ
      NRUOZIJUFZPZUYREUNZQZJFUOZUXTUYLNRUPUYONRUOZUYQUXTUYLNRUXTUYBRPZQZUYKABUJ
      UQZVUFAUFZBUFZUMZURZUQZFVUEUYKVUIUSZBVUFUOAVUFUOZUYKVUKPVUEUYFVUFPZUYJVUF
      PZUYKUYKUSZVUMVUEUJUTUTUMZVAZUYDUTPZUYEUTPZVUNVUQUTVBZUJVHVURVUEABUAVCVCU
      JABUAVDVEVUQVVAUJVIVFZVUEUYDVUEUYAUYCVUEISSUMZPZUYASPVUEEVVCIUXREVVCUNZUX
      SVUDUXREUXQVGVVCEUXQVJHHSSHVUFVSUEZVKKVLVMZVVGSVVFVGHVGVNHVVFKVOVPZVVHVQZ
      VRZVTUXRUXSVUDWAWBZISSWCWDZVUEUYBVUEUYBUXTVUDWEZWFWGZWHWIZVUEUYEVUEUYAUYC
      VVLVVNWJWIZUTUTUYDUYEUJWKWLVUEVURUYHUTPZUYIUTPZVUOVVBVUEUYHVUEUYGUYCVUEVV
      DUYGSPVVKISSWMWDZVVNWHWIZVUEUYIVUEUYGUYCVVSVVNWJWIZUTUTUYHUYIUJWKWLVUEUYK
      XLVULVUPUYKUYFVUHUMZUSABUYFUYJVUFVUFVUGUYFUSVUIVWBUYKVUGUYFVUHUUAWNVUHUYJ
      USVWBUYKUYKVUHUYJUYFUUBWNUUCWLABVUFVUFVUIUYKVUJVUJWOVUGVUHAWPBWPUUDUUEUUF
      MWQWRUXTUYMNRUPUYNNRUOZVUCUXTUYMNRVUEIWSWSUMZPUYAUYFPZUYGUYJPZQUYMVUEVVCV
      WDISSUUGVVKUUHVUEVWEVWFVUEVWEUYAUTPZUYDUYAVCWTZUYAUYEVCWTZVUEUYAVVLWIVUEU
      YAUYCVVLVUEUYBVVMXAZXBVUEUYAUYCVVLVWJXCVUEVUSVUTVWEVWGVWHVWIXDXEVVOVVPUYD
      UYEUYAXFXGXHVUEVWFUYGUTPZUYHUYGVCWTZUYGUYIVCWTZVUEUYGVVSWIVUEUYGUYCVVSVWJ
      XBVUEUYGUYCVVSVWJXCVUEVVQVVRVWFVWKVWLVWMXDXEVVTVWAUYHUYIUYGXFXGXHXIIUYFUY
      JUUIUUJWRUXTUYKGUUKZIGUEZUYBXJUHUULZUUMUEZOZXKZUNZVWSEUNZQZNRUOZVWCUXTVWT
      NRUPVXANRUOZVXCUXTVWTNRVUEAUYKVWSVUEVUGUYKPZVUGVWSPZVUEVXEQVUEVUGVVCPZQZV
      XEQVXFVXEVUEVXHVXEVUEVXGVUEVXEVXGVUEUYKVVCVUGVUEUYFSUNUYJSUNUYKVVCUNVUEUY
      FXMXNUJOZSVUEXMUYDYCWTZUYEXNYCWTZUYFVXIUNZVUEVUSVXJVVOUYDXOWDVUEVUTVXKVVP
      UYEXPWDXMUTPZXNUTPZVXJVXKQVXLXQYDXMXNUYDUYEXRXSXGXTYAVUEUYJVXISVUEXMUYHYC
      WTZUYIXNYCWTZUYJVXIUNZVUEVVQVXOVVTUYHXOWDVUEVVRVXPVWAUYIXPWDVXMVXNVXOVXPQ
      VXQXQYDXMXNUYHUYIXRXSXGXTYAUYFSUYJSUUNXGYBUUOUUPUUQVXHVXEVXFVXHVXEVUGGUEZ
      VWRPZVXRVWNUEZVWSPZVXFVXHVXEVXRVWOUHOZUUSUEXJUEUYCVCWTVYBUVHUEXJUEUYCVCWT
      QZVXSVXHVVDVXGUYCRPVXEVYCYEUXRUXSVUDVXGVVDUXRUXSVUDVXGXDZQEVVCIUXRVVEVYDV
      VJYFUXRUXSVUDVXGUURWBUUTZVUEVXGWEZVXHUYBUXTVUDVXGWAZXADCUYCGIVUGLUVAWLVXH
      VYCVXSVXHVYCVYBXJUEZUYBVCWTZVXSVXHVYCVYIVXHVWOTPZVXRTPZVUDVYCVYIYEVXHVVCT
      IGVVCTGVHZVXHGUXQUVBUVCUEZUVDOPZVVCTGYGZVYLDCGHVYMLKVYMWOZUVEZGUXQVYMVVCT
      VVITVYMVYMVYPUVFUVGUVIZVVCTGUVJYHZYIVYEUVKZVUEVVCTVUGGVYLVUEVYSYIUVLZVYGV
      WOVXRUYBUVMYJYKVXHVYIQZVWPTUVRUEPZUYBUTPZQZVYJVYKQZVXRVWOVWPOZUYBVCWTZVXS
      WUBWUDWUCVXHWUDVYIVXHUYBVYGUVNYFYLUVOWUBVYJVYKVXHVYJVYIVYTYFZVXHVYKVYIWUA
      YFZXIWUBWUGVYHUYBVCWUBVYKVYJWUGVYHUSWUJWUIVXRVWOVWPVWPWOUVPXGVXHVYIWEUVSW
      UEWUFQVXSWUHVXRVWPVWOUYBTUVQUVTYJUWAYMUWBVXHVWNYNZVXRVWNYQZPVXSVYAYETVVCV
      WNYGZWUKVYNVYOWUMVYQVYRVVCTGUWCYHZTVVCVWNUWDYOVXHVXRTWULWUAWUMWULTUSWUNTV
      VCVWNYPYOWQVWRVXRVWNYRYSVXHVYAVXFVXHVXTVUGVWSVXHVYOVXGVXTVUGUSVYNVYOVXHVY
      QVYRVFVYFVVCTVUGGUWEXGUWFUWGUWIYKWDYMUWJWRUXTVWRGEXKZUNZNRUOZVXDUXTVWOWUO
      PZUBUFZUYBVWQOZWUOUNZNRUOZUBWUOUPZWUQUXTGYNZIGYQZPZUXSWURWVDUXTDCSSDUFUWH
      CUFUWKOUIOGLUWLYIUXTIVVCWVEUXREVVCIVVJYBVYNVYOWVEVVCUSVYQVYRVVCTGYPYHWQUX
      RUXSWEWVDWVFQUXSWUREIGYRYKYJUXRWVCUXSUXRWUOVYMPZWVCVYNUXRWVGVYQEGUXQVYMUW
      MUWSWVGWUOTUNZWVCWUCWVGWVHWVCQXEYLUBNWUOVWPVYMTVYMVYPUWNUWOYOUWPWDYFWVBWU
      QUBVWOWUOWUSVWOUSZWVAWUPNRWVIWUTVWRWUOWUSVWOUYBVWQUWTUWQUWRUXAXGUXRWUQVXD
      YEUXSUXRWUPVXANRWUPVWSVWNWUOXKZUNUXRVXAVWRWUOVWNUXBUXRWVJEVWSUXRVVCTGUXJZ
      VVEWVJEUSVYNVYOWVKVYQVYRVVCTGUXCYHVVJVVCTEGUXDYSUXEUXFUXGYFUXKVWTVXANRYTX
      GVXBUYNNRUYKVWSEUXHUXIWDUYMUYNNRYTXGUYLUYONRYTXGUYPVUBNRVUAUYOJUYKFUYRUYK
      USUYSUYMUYTUYNUYRUYKIUXLUYRUYKEUXMUXNUXOUXPWD $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Order topology - misc. additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    $d x y z A $.  $d x y B $.
    cnvordtrestixx.1 $e |- A C_ RR* $.
    cnvordtrestixx.2 $e |- ( ( x e. A /\ y e. A ) -> ( x [,] y ) C_ A ) $.
    $( The restriction of the 'greater than' order to an interval gives the
       same topology as the subspace topology.  (Contributed by Thierry Arnoux,
       1-Apr-2017.) $)
    cnvordtrestixx $p |- ( ( ordTop ` <_ ) |`t A ) =
      ( ordTop ` ( `' <_ i^i ( A X. A ) ) ) $=
      ( vz cle cordt cfv crest co wceq wtru cxr wcel ax-mp wss cv wa wbr cnvtsr
      ccnv cxp cin crn cdm lern df-rn eqtri ctsr letsr a1i crab wb brcnvg simpr
      adantlr simplr syl2anc anbi12d ancom syl6bb rabbidva sseldi iccval ancoms
      cicc simpl eqsstr3d eqsstrd adantl ordtrest2 trud cps tsrps oveq1i eqtr2i
      ordtcnv ) GUBZCCUCUDHIZVSHIZCJKZGHIZCJKVTWBLMBAFCVSNNGUEVSUFUGGUHUIVSUJOZ
      MGUJOZWDUKGUAPULCNQMDULBRZCOZARZCOZSZWFFRZVSTZWKWHVSTZSZFNUMZCQMWJWOWHWKG
      TZWKWFGTZSZFNUMZCWJWNWRFNWJWKNOZSZWNWQWPSWRXAWLWQWMWPWGWTWLWQUNWIWFWKCNGU
      OUQXAWTWIWMWPUNWJWTUPWGWIWTURWKWHNCGUOUSUTWQWPVAVBVCWJWSWHWFVGKZCWJWHNOWF
      NOXBWSLWJCNWHDWGWIUPVDWJCNWFDWGWIVHVDFWHWFVEUSWIWGXBCQEVFVIVJVKVLVMWAWCCJ
      GVNOZWAWCLWEXCUKGVOPGVRPVPVQ $.
  $}


$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Continuity in topological spaces - misc. additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    $d a b y .* $.  $d a x y .* $.  $d a b y .+ $.  $d a b C $.  $d a b y F $.
    $d a b J $.  $d a b K $.  $d x y .+ $.  $d x y B $.  $d x y F $.
    mndpluscn.f $e |- F e. ( J Homeo K ) $.
    mndpluscn.p $e |- .+ : ( B X. B ) --> B $.
    mndpluscn.t $e |- .* : ( C X. C ) --> C $.
    mndpluscn.j $e |- J e. ( TopOn ` B ) $.
    mndpluscn.k $e |- K e. ( TopOn ` C ) $.
    mndpluscn.h $e |- ( ( x e. B /\ y e. B ) ->
                           ( F ` ( x .+ y ) ) = ( ( F ` x ) .* ( F ` y ) ) ) $.
    mndpluscn.o $e |- .+ e. ( ( J tX J ) Cn J ) $.
    $( A mapping that is both a homeomorphism and a monoid homomorphism
       preserves the "continuousness" of the operation.  (Contributed by
       Thierry Arnoux, 25-Mar-2017.) $)
    mndpluscn $p   |- .* e. ( ( K tX K ) Cn K ) $=
      ( va vb cfv co cv ccnv cmpt2 ctx ccn cxp wf wfn wceq ffn fnov biimpi mp2b
      wcel wral wf1o chmeo toponunii hmeof1o ax-mp f1ocnvdm mpan anim12i rgen2a
      wa oveq1 fveq2d oveq1d eqeq12d oveq2d rspc2va sylancl f1ocnvfv2 oveqan12d
      fveq2 oveq2 eqtr2d mpt2eq3ia eqtri ctopon a1i cnmpt1st hmeocnvcn cnmpt21f
      wtru mp1i cnmpt2nd cnmpt22f hmeocn trud eqeltri ) GQRDDQUAZFUBZSZRUAZWMSZ
      ETZFSZUCZIIUDTIUETZGQRDDWLWOGTZUCZWSDDUFZDGUGGXCUHZGXBUIZLXCDGUJXDXEQRDDG
      UKULUMQRDDXAWRWLDUNZWODUNZVEZWRWNFSZWPFSZGTZXAXHWNCUNZWPCUNZVEAUAZBUAZETZ
      FSZXNFSZXOFSZGTZUIZBCUOACUOWRXKUIZXFXLXGXMCDFUPZXFXLFHIUQTUNZYCJFHICDCHMU
      RDINURUSUTZCDWLFVAVBYCXGXMYECDWOFVAVBVCYAABCOVDYAYBWNXOETZFSZXIXSGTZUIABW
      NWPCCXNWNUIZXQYGXTYHYIXPYFFXNWNXOEVFVGYIXRXIXSGXNWNFVOVHVIXOWPUIZYGWRYHXK
      YJYFWQFXOWPWNEVPVGYJXSXJXIGXOWPFVOVJVIVKVLXFXGXIWLXJWOGYCXFXIWLUIYECDWLFV
      MVBYCXGXJWOUIYECDWOFVMVBVNVQVRVSWSWTUNWEQRWQFIIHIDDIDVTSUNWENWAZYKWEQRWNW
      PEIIHHHDDYKYKWEQRWLWMIIIHDDYKYKWEQRIIDDYKYKWBYDWMIHUETUNWEJFHIWCWFZWDWEQR
      WOWMIIIHDDYKYKWEQRIIDDYKYKWGYLWDEHHUDTHUETUNWEPWAWHYDFHIUETUNWEJFHIWIWFWD
      WJWK $.
  $}

  ${
    $d x y F $.  $d x y S $.  $d x y T $.
    mhmhmeotmd.m $e |- F e. ( S MndHom T ) $.
    mhmhmeotmd.h $e |- F e. ( ( TopOpen ` S ) Homeo ( TopOpen ` T ) ) $.
    mhmhmeotmd.t $e |- S e. TopMnd $.
    mhmhmeotmd.s $e |- T e. TopSp $.
    $( Deduce a Topological Monoid using mapping that is both a homeomorphism
       and a monoid homomorphism.  (Contributed by Thierry Arnoux,
       21-Jun-2017.) $)
    mhmhmeotmd $p |- T e. TopMnd $=
      ( vx vy ctmd wcel cmnd cplusf cfv ctopn ctx co ax-mp wf eqid ctps mhmrcl2
      ccn cmhm cbs cxp mhmrcl1 mndplusf ctopon tmdtopon istps mpbi cv wa cplusg
      wceq mhmlin mp3an1 plusfval fveq2d mhmf ffvelrni syl2an 3eqtr4d mndpluscn
      tmdcn istmd mpbir3an ) BJKBLKZBUAKZBMNZBONZVLPQVLUCQKCABUDQKZVIDABCUBRZGH
      IAUENZBUENZAMNZCVKAONZVLEALKZVOVOUFVOVQSVMVSDABCUGRVOVQAVOTZVQTZUHRVIVPVP
      UFVPVKSVNVPVKBVPTZVKTZUHRAJKZVRVOUINKFAVRVOVRTZVTUJRVJVLVPUINKGVPVLBWBVLT
      ZUKULHUMZVOKZIUMZVOKZUNZWGWIAUONZQZCNZWGCNZWICNZBUONZQZWGWIVQQZCNWOWPVKQZ
      VMWHWJWNWRUPDVOWLWQABCWGWIVTWLTZWQTZUQURWKWSWMCVOWLVQAWGWIVTXAWAUSUTWHWOV
      PKWPVPKWTWRUPWJVOVPWGCVMVOVPCSDVOVPABCVTWBVARZVBVOVPWICXCVBVPWQVKBWOWPWBX
      BWCUSVCVDWDVQVRVRPQVRUCQKFVQAVRWEWAVFRVEVKBVLWCWFVGVH $.
  $}

  ${
    $d w x C $.  $d w x ph $.  $d x y z C $.
    rmulccn.1 $e |- J = ( topGen ` ran (,) ) $.
    rmulccn.2 $e |- ( ph -> C e. RR ) $.
    $( Multiplication by a real constant is a continuous function (Contributed
       by Thierry Arnoux, 23-May-2017.) $)
    rmulccn $p |- ( ph -> ( x e. RR |-> ( x x. C ) ) e. ( J Cn J ) ) $=
      ( vy vz vw cc cv cmul co cr cfv ccn wcel a1i wceq ax-resscn cmpt cres wss
      ccnfld ctopn crest ctopon eqid cnfldtopon cnmptid recnd cmpt2 ctx cxp wfn
      cnmptc wf ax-mulf ax-mp fnov mpbi mulcn eqeltrri oveq12 cnmpt12 toponunii
      ffn cnrest sylancl crn wb wral wa simpr adantr mulcld ralrimiva fnmpt syl
      fnssres fvres oveq1 fvmpt eqtrd remulcld eqeltrd fnfvrnss syl2anc cnrest2
      recn ovex syl3anc mpbid resmpt cioo tgioo2 eqtri oveq12i eqcomi 3eltr3g
      ctg ) ABJBKZCLMZUAZNUBZUDUEOZNUFMZXGPMZBNXCUAZDDPMZAXEXGXFPMQZXEXHQZAXDXF
      XFPMQNJUCZXKABGHXBCGKZHKZLMZXCXFXFXFXFJJJXFJUGOQZAXFXFUHZUIZRZABXFJXTUJAB
      CXFXFJJXTXTACFUKZUPXTXTGHJJXPULZXFXFUMMXFPMZQALYBYCLJJUNZUOZLYBSYDJLUQYEU
      RYDJLVGUSGHJJLUTVAXFXRVBVCRXNXBXOCLVDVETNXDXFXFJJXFXSVFVHVIAXQXEVJNUCZXMX
      KXLVKXTAXENUOZIKZXEOZNQZINVLYFAXDJUOZXMYGAXCJQZBJVLYKAYLBJAXBJQZVMXBCAYMV
      NACJQYMYAVOVPVQBJXCXDJXDUHZVRVSTJNXDVTVIAYJINAYHNQZVMZYIYHCLMZNYPYOYIYQSA
      YOVNZYOYIYHXDOZYQYHNXDWAYOYHJQYSYQSYHWJBYHXCYQJXDXBYHCLWBYNYHCLWKWCVSWDVS
      YPYHCYRACNQYOFVOWEWFVQINNXEWGWHXMATRNXEXGXFJWIWLWMXMXEXISTBJNXCWNUSXJXHDX
      GDXGPDWOVJXAOXGEXFXRWPWQZYTWRWSWT $.
  $}

  ${
    $d x y $.
    raddcn.1 $e |- J = ( topGen ` ran (,) ) $.
    $( Addition in the real numbers is a continuous function.  (Contributed by
       Thierry Arnoux, 23-May-2017.) $)
    raddcn $p |- ( x e. RR , y e. RR |-> ( x + y ) ) e. ( ( J tX J ) Cn J ) $=
      ( caddc cr cxp ctx co cfv crest ccn wcel wss ax-resscn mp2an ctop cvv crn
      cc cres ccnfld ctopn cv cmpt2 eqid addcn xpss12 cnfldtop toponunii txunii
      cnfldtopon cnrest wceq reex txrest mp4an cioo tgioo2 eqtr2i oveq12i eqtri
      ctg oveq1i eleqtri ctopon wb wfn wf ax-addf ax-mp fnssres fnov mpbi ovres
      mpt2eq3ia rneqi wral readdcl rgen2a rnmpt2ss eqsstri cnrest2 mp3an oveq2i
      ffn 3eltr3i ) EFFGZUAZCCHIZUBUCJZFKIZLIZABFFAUDZBUDZEIZUEZWJCLIWIWJWKLIZM
      ZWIWMMZWIWKWKHIZWHKIZWKLIZWREXAWKLIMWHTTGZNZWIXCMWKWKUFZUGFTNZXGXEOOFTFTU
      HPZWHEXAWKXDWKWKTTWKXFUIZXITWKWKXFULZUJZXKUKUMPXBWJWKLXBWLWLHIZWJWKQMZXMF
      RMZXNXBXLUNXIXIUOUOFFWKWKQQRRUPUQWLCWLCHCURSVCJWLDWKXFUSUTZXOVAVBVDVEWKTV
      FJMWISZFNXGWSWTVGXJXPWQSZFWIWQWIABFFWNWOWIIZUEZWQWIWHVHZWIXSUNEXDVHZXEXTX
      DTEVIYAVJXDTEWFVKXHXDWHEVLPABFFWIVMVNABFFXRWPWNWOFFEVOVPVBZVQWPFMZBFVRAFV
      RXQFNYCABFWNWOVSVTABFFWPFWQWQUFWAVKWBOFWIWJWKTWCWDVNYBWLCWJLXOWEWG $.
  $}

  ${
    $d x y C $.  $d x y F $.  $d x y ph $.
    xrmulc1cn.k $e |- J = ( ordTop ` <_ ) $.
    xrmulc1cn.f $e |- F = ( x e. RR* |-> ( x *e C ) ) $.
    xrmulc1cn.c $e |- ( ph -> C e. RR+ ) $.
    $( The operation multiplying an extended real number by a non-negative
       constant is continuous.  (Contributed by Thierry Arnoux, 5-Jul-2017.) $)
    xrmulc1cn $p |- ( ph -> F e. ( J Cn J ) ) $=
      ( vy cle cfv co wcel cxr wral cxmu wceq wa simpr ralrimiva cordt ccn ctsr
      wiso letsr a1i wf1o cv wbr wb wreu crp adantr rpxrd xmulcld cc0 wne rpred
      rpne0d xreceu syl3anc eqcom adantlr xmulcom eqeq1d syl5bb reubidva mpbird
      cr syl2anc f1ompt sylanbrc simplr ad2antrr xlemul1 cvv ovex sylancl oveq1
      fvmpt2 fvmpt adantl breq12d bitr4d df-isom ordthmeolem oveq12i syl6eleqr
      ledm ) ADJUAKZWJUBLZEEUBLAJUCMZWLNNJJDUDZDWKMWLAUEUFZWNANNDUGZBUHZIUHZJUI
      ZWPDKZWQDKZJUIZUJZINOZBNOWMAWPCPLZNMZBNOWQXDQZBNUKZINOWOAXEBNAWPNMZRZWPCA
      XHSXICACULMZXHHUMUNZUOTAXGINAWQNMZRZXGCWPPLZWQQZBNUKZXMXLCVIMCUPUQXPAXLSX
      MCAXJXLHUMZURXMCXQUSBWQCUTVAXMXFXOBNXFXDWQQXMXHRZXOWQXDVBXRXDXNWQXRXHCNMZ
      XDXNQXMXHSAXHXSXLXKVCWPCVDVJVEVFVGVHTBINNXDDGVKVLAXCBNXIXBINXIXLRZWRXDWQC
      PLZJUIZXAXTXHXLXJWRYBUJAXHXLVMZXIXLSAXJXHXLHVNWPWQCVOVAXTWSXDWTYAJXTXHXDV
      PMWSXDQYCWPCPVQBNXDVPDGVTVRXLWTYAQXIBWQXDYANDWPWQCPVSGWQCPVQWAWBWCWDTTBIN
      NJJDWEVLJJDUCUCNNWIWIWFVAEWJEWJUBFFWGWH $.
  $}

  ${
    $d b e x y B $.  $d b d e x y D $.  $d b d e x y E $.  $d b d e x y F $.
    $d b d e x y J $.  $d b d e x y K $.  $d b d e x y X $.  $d b d e x y Y $.
    fmcncfil.1 $e |- J = ( MetOpen ` D ) $.
    fmcncfil.2 $e |- K = ( MetOpen ` E ) $.
    $( The image of a Cauchy filter by a continuous filter map is a Cauchy
       filter.  (Contributed by Thierry Arnoux, 12-Nov-2017.) $)
    fmcncfil $p |- ( ( ( D e. ( CMet ` X ) /\ E e. ( *Met ` Y )
      /\ F e. ( J Cn K ) ) /\ B e. ( CauFil ` D ) ) ->
      ( ( Y FilMap F ) ` B ) e. ( CauFil ` E ) ) $=
      ( vx vb cfv wcel co wa cv cflim wex wral vy vd cms cxmt ccn w3a ccfil cfm
      ve simpl2 cflf wi wal simpl1 c0 wne cmetcvg n0 sylib sylancom cme cmetmet
      cfil metxmet 3syl cfilfil ctopon mopntopon simpl3 cnflf simplbda syl21anc
      syl wf wceq oveq2 fveq1d eleq2d raleqbidv rspcv sylc df-ral 19.29r pm3.35
      eximi syl2anc clt wbr crp metcn biimpa simpld flfval syl3anc exbidv mpbid
      wrex flimcfil ex exlimdv ) BGUCMNZCHUDMNZDEFUEONZUFZABUGMNZPZXBKQZDMZFAHD
      UHOMZROZNZKSZXICUGMNZXAXBXCXEUJZXFXHDFAUKOZMZNZKSZXLXFXGEAROZNZKSZXTXQULZ
      KUMZXRXDXEXAYAXAXBXCXEUNZXAXEPXSUOUPYABAEGIUQKXSURUSUTXFXQKXSTZYCXFAGVCMZ
      NZXHDFLQZUKOZMZNZKEYHROZTZLYFTZYEXDXEBGUDMNZYGXFXABGVAMNYOYDBGVBBGVDVEZBA
      GVFUTZXFEGVGMNZFHVGMNZXCYNXFYOYRYPBEGIVHVMXFXBYSXNCFHJVHVMZXAXBXCXEVIZYRY
      SPXCGHDVNZYNKLDEFGHVJVKVLYMYELAYFYHAVOZYKXQKYLXSYHAERVPUUCYJXPXHUUCDYIXOY
      HAFUKVPVQVRVSVTWAXQKXSWBUSYAYCPXTYBPZKSXRXTYBKWCUUDXQKXTXQWDWEVMWFXFXQXKK
      XFXPXJXHXFYSYGUUBXPXJVOYTYQXFUUBXGUAQZBOUBQWGWHXHUUEDMCOUIQWGWHULUAGTUBWI
      WQUIWITKGTZXFYOXBXCUUBUUFPZYPXNUUAYOXBPXCUUGKUIUBUABCDEFGHIJWJWKVLWLDFAHG
      WMWNVRWOWPXBXKXMKXBXKXMXHCXIFHJWRWSWTWA $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Topology of the extended non-negative real numbers monoid
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $( The extended non-negative reals are homeomorphic to the closed unit
     interval.  (Contributed by Thierry Arnoux, 24-Mar-2017.) $)
  xrge0hmph $p |- II ~= ( ( ordTop ` <_ ) |`t ( 0 [,] +oo ) ) $=
    ( vx cc0 c1 cicc co cv wceq cpnf cmin cdiv cif cmpt cii cle cordt cfv crest
    chmeo clt eqid wcel chmph wbr wiso iccpnfhmeo simpri hmphi ax-mp ) ABCDEZAF
    ZCGHUJCUJIEJEKLZMNOPBHDEZQEZREUAZMUMUBUCUIULSSUKUDUNAUKUMUKTUMTUEUFUKMUMUGU
    H $.

  ${
    $d x y $.
    xrge0iifhmeo.1 $e |- F = ( x e. ( 0 [,] 1 ) |->
                                       if ( x = 0 , +oo , -u ( log ` x ) ) ) $.
    $( Define a bijection from ` [ 0 , 1 ] ` to ` [ 0 , +oo ] ` .  (Contributed
       by Thierry Arnoux, 29-Mar-2017.) $)
    xrge0iifcnv $p |- ( F : ( 0 [,] 1 ) -1-1-onto-> ( 0 [,] +oo ) /\ `' F =
      ( y e. ( 0 [,] +oo ) |-> if ( y = +oo , 0 , ( exp ` -u y ) ) ) ) $=
      ( cc0 c1 co cpnf wceq wa wcel cxr cle wbr 0xr pnfxr wn clt cr wb cicc cfv
      wf1o ccnv cv cneg ce cif cmpt wtru clog pnfge ax-mp ubicc2 mp3an a1i cico
      icossicc cioc csn wo wi cun uncom rexri 0le1 snunioc eqtr3i eleq2i bitr3i
      1re elun pm2.53 sylbi elsni syl6 con1d imp cioo 0le0 ltpnf iocssioo mp4an
      crp wss ioorp sseqtri sseli relogcld renegcld rexrd w3a mp2an simp3bi 1rp
      elioc1 logled mpbid log1 syl6breq le0neg1d elico1 syl3anbrc sseldi ifclda
      syl adantl 0elunit iocssicc snunico cmnf mnfxr 0re xrleid icossioo ioomax
      mnflt reefcld efgt0 simp2bi le0neg2d efle sylancl ef0 eqeq2 bibi1d iftrue
      simpr eqeq2d syl5ibrcom wnel ubico df-nel mpbir neleq1 bibi2d cc ifbothda
      syl2an recnd mpbiri syl5ibcom iffalse eqeltrd ad2antrr syl5bi syld impbid
      ex wne ltned adantll neneqd eqeq1 notbid simplr 2falsed relogeftb negcon2
      eqcom 3bitr2d an4s anass1rs f1ocnv2d trud ) EFUAGZEHUAGZCUCCUDBUVGBUEZHIZ
      EUVHUFZUGUBZUHZUIIJUJABUVFUVGAUEZEIZHUVMUKUBZUFZUHZUVLCDUVMUVFKZUVQUVGKUJ
      UVRUVNHUVPUVGHUVGKZUVRUVNJELKZHLKZEHMNZUVSOPUVTUWBOEULUMZEHUNUOUPUVRUVNQZ
      JZEHUQGZUVGUVPEHURUWEUVMEFUSGZKZUVPUWFKZUVRUWDUWHUVRUWHUVNUVRUWHQZUVMEUTZ
      KZUVNUVRUWHUWLVAZUWJUWLVBUVRUVMUWGUWKVCZKUWMUWNUVFUVMUWKUWGVCZUWNUVFUWKUW
      GVDUVTFLKZEFMNUWOUVFIOFVKVEZVFEFVGUOVHVIUVMUWGUWKVLVJUWHUWLVMVNUVMEVOVPVQ
      VRZUWHUVPLKZEUVPMNZUVPHRNZUWIUWHUVPUWHUVOUWHUVMUWGWDUVMUWGEHVSGZWDUVTUWAE
      EMNFHRNZUWGUXBWEOPVTFSKUXCVKFWAUMEHEFWBWCWFWGWHZWIZWJZWKUWHUVOEMNUWTUWHUV
      OFUKUBZEMUWHUVMFMNZUVOUXGMNUWHUVMLKZEUVMRNZUXHUVTUWPUWHUXIUXJUXHWLTOUWQEF
      UVMWPWMWNUWHUVMFUXDFWDKUWHWOUPWQWRWSWTUWHUVOUXEXAWRUWHUVPSKUXAUXFUVPWAXFU
      VTUWAUWIUWSUWTUXAWLTOPEHUVPXBWMXCXFZXDXEXGUVHUVGKZUVLUVFKUJUXLUVIEUVKUVFE
      UVFKUXLUVIJXHUPUXLUVIQZJZUWGUVFUVKEFXIUXNUVHUWFKZUVKUWGKZUXLUXMUXOUXLUXOU
      VIUXLUXOQZUVHHUTZKZUVIUXLUXOUXSVAZUXQUXSVBUXLUVHUWFUXRVCZKUXTUYAUVGUVHUVT
      UWAUWBUYAUVGIOPUWCEHXJUOVIUVHUWFUXRVLVJUXOUXSVMVNUVHHVOVPVQVRZUXOUVKLKZEU
      VKRNZUVKFMNZUXPUXOUVKUXOUVJUXOUVHUWFSUVHUWFXKHVSGZSXKLKUWAXKERNZHHMNZUWFU
      YFWEXLPESKZUYGXMEXQUMUWAUYHPHXNUMXKHEHXOWCXPWGWHZWJZXRWKUXOUVJSKZUYDUYKUV
      JXSXFZUXOUVKEUGUBZFMUXOUVJEMNZUVKUYNMNZUXOEUVHMNZUYOUXOUVHLKZUYQUVHHRNZUV
      TUWAUXOUYRUYQUYSWLTOPEHUVHXBWMXTUXOUVHUYJYAWRUXOUYLUYIUYOUYPTUYKXMUVJEYBY
      CWRYDWTUVTUWPUXPUYCUYDUYEWLTOUWQEFUVKWPWMXCXFXDXEXGUVRUXLJZUVMUVLIZUVHUVQ
      IZTZUJUVIUVNVUBTUVMUVKIZVUBTZVUCUYTEUVKEUVLIUVNVUAVUBEUVLUVMYEYFUVKUVLIVU
      DVUAVUBUVKUVLUVMYEYFUYTUVIJZUVNVUBVUFVUBUVNUVIUYTUVIYHUVNUVQHUVHUVNHUVPYG
      YIYJVUFVUBUVQUWFYKZUVNVUFUVHUWFYKZVUBVUGVUFVUHHUWFYKZVUIHUWFKQZUYIUWAVUJX
      MPEHYLWMHUWFYMYNUVIVUHVUITUYTUVHHUWFYOXGUUAUVHUVQUWFYOUUBVUGUVQUWFKZQVUFU
      VNUVQUWFYMVUFUVNVUKUVRUWDVUKVBUXLUVIUVRUWDVUKUWEUVQUVPUWFUWDUVQUVPIUVRUVN
      HUVPUUCXGUXKUUDUUIUUEVQUUFUUGUUHUVNVUDUVITVUDUVHUVPIZTZVUEUYTUXMJZHUVPHUV
      QIUVIVUBVUDHUVQUVHYEYPUVPUVQIVULVUBVUDUVPUVQUVHYEYPVUNUVNJVUDUVIVUNUVNVUD
      QZVUNVUOUVNEUVKIZQVUNEUVKUXLUXMEUVKUUJUVRUXNEUVKUYIUXNXMUPUXNUXOUYDUYBUYM
      XFUUKUULUUMUVNVUDVUPUVMEUVKUUNUUOYJVRUYTUXMUVNUUPUUQUYTUWDUXMVUMUVRUWDUXL
      UXMVUMUWEUWHUXOVUMUXNUWRUYBUWHUXOJZVUDUVKUVMIZUVOUVJIZVULVUDVURTVUQUVMUVK
      UUTUPUWHUVMWDKUYLVUSVURTUXOUXDUYKUVMUVJUURYSUWHUVOYQKUVHYQKVUSVULTUXOUWHU
      VOUXEYTUXOUVHUYJYTUVOUVHUUSYSUVAYSUVBUVCYRYRXGUVDUVE $.

    $d x X $.
    $( The defined function's value in the real.  (Contributed by Thierry
       Arnoux, 1-Apr-2017.) $)
    xrge0iifcv $p |- ( X e. ( 0 (,] 1 ) -> ( F ` X ) = -u ( log ` X ) ) $=
      ( cc0 c1 cioc co wcel cfv wceq cpnf clog cneg cif cicc cxr syl cr wbr clt
      iocssicc sseli cv eqeq1 fveq2 negeqd ifbieq2d pnfxr elexi negex fvmpt cle
      ifex wn w3a wb 0xr 1re elioc2 mp2an simp2bi gt0ne0d neneqd iffalse eqtrd
      ) CEFGHZIZCBJZCEKZLCMJZNZOZVLVHCEFPHZIVIVMKVGVNCEFUBUCACAUDZEKZLVOMJZNZOV
      MVNBVOCKZVPVJVRVLLVOCEUEVSVQVKVOCMUFUGUHDVJLVLLQUIUJVKUKUNULRVHVJUOVMVLKV
      HCEVHCVHCSIZECUATZCFUMTZEQIFSIVHVTWAWBUPUQURUSEFCUTVAVBVCVDVJLVLVERVF $.

    $d w x y z F $.  $d x X $.
    $( The defined bijection from the closed unit interval and the extended
       non-negative reals is an order isomorphism.  (Contributed by Thierry
       Arnoux, 31-Mar-2017.) $)
    xrge0iifiso $p |- F Isom < , `' < ( ( 0 [,] 1 ) , ( 0 [,] +oo ) ) $=
      ( vw vz cc0 c1 co clt cpnf wbr cfv cxr wceq wcel cle 1re cr wb crp wor cv
      cicc ccnv wpo wfo wral wiso wss iccssxr xrltso soss cnvso mpbi sopo ax-mp
      wi mp2 poss wf1o cneg ce cif cmpt xrge0iifcnv simpli f1ofo csn wo cun 0xr
      cioc rexri 0le1 snunioc mp3an eleq2i elun bitr3i wa elunitrn adantr simpr
      elsn 0re elicc2i simp3bi w3a elioc2 mp2an syl3anbrc clog cioo pnfxr ltpnf
      iocssioo mp4an ioorp sseqtri sseli relogcl renegcld brcnvg sylancr mpbird
      0le0 xrge0iifcv breqtrrd ex breq1 fveq2 0elunit iftrue elexi fvmpt syl6eq
      syl breq1d imbi12d syl5ibr sylbi simpll ad2antlr a1i rpred ad2antrr lttrd
      simp2bi relogcld adantl ltnegd logltb syl2an negex brcnv biimpd breqan12d
      jca 3bitr4d sylibrd sylc exp31 jaoi imp rgen2a soisoi ) FGUCHZIUAZFJUCHZI
      UDZUEZUUGUUIBUFZDUBZEUBZIKZUUMBLZUUNBLZUUJKZUQZEUUGUGDUUGUGUUGUUIIUUJBUHU
      UGMUIMIUAZUUHFGUJUKUUGMIULURUUIMUIMUUJUEZUUKFJUJMUUJUAZUVAUUTUVBUKMIUMUNM
      UUJUOUPUUIMUUJUSURUUGUUIBUTZUULUVCBUDEUUIUUNJNFUUNVAVBLVCVDNAEBCVEVFUUGUU
      IBVGUPUUSDEUUGUUMUUGOZUUNUUGOZUUSUVDUUMFVHZOZUUMFGVLHZOZVIZUVEUUSUQZUVDUU
      MUVFUVHVJZOUVJUVLUUGUUMFMOZGMOFGPKUVLUUGNVKGQVMVNFGVOVPVQUUMUVFUVHVRVSUVG
      UVKUVIUVGUUMFNZUVKDFWDUVEUUSUVNFUUNIKZJUUQUUJKZUQUVEUVOUVPUVEUVOVTZUUNUVH
      OZUVPUVQUUNROZUVOUUNGPKZUVRUVEUVSUVOUUNWAZWBUVEUVOWCUVEUVTUVOUVEUVSFUUNPK
      UVTFGUUNWEQWFWGZWBUVMGROZUVRUVSUVOUVTWHSVKQFGUUNWIWJZWKUVRJUUNWLLZVAZUUQU
      UJUVRUUNTOZJUWFUUJKZUVHTUUNUVHFJWMHZTUVMJMOZFFPKGJIKZUVHUWIUIVKWNXFUWCUWK
      QGWOUPFJFGWPWQWRWSZWTZUWGUWHUWFJIKZUWGUWFROZUWNUWGUWEUUNXAXBZUWFWOXQUWGUW
      JUWOUWHUWNSWNUWPJUWFMRIXCXDXEXQABUUNCXGZXHXQXIUVNUUOUVOUURUVPUUMFUUNIXJUV
      NUUPJUUQUUJUVNUUPFBLZJUUMFBXKFUUGOUWRJNXLAFAUBZFNZJUWSWLLVAZVCJUUGBUWTJUX
      AXMCJMWNXNXOUPXPXRXSXTYAUVIUVEUUOUURUVIUVEVTZUUOVTZUVIUVRVTZUUOUURUXCUVIU
      VRUVIUVEUUOYBUXCUVSUVOUVTUVRUVEUVSUVIUUOUWAYCZUXCFUUMUUNFROUXCWEYDUVIUUMR
      OZUVEUUOUVIUUMUVHTUUMUWLWTZYEYFUXEUVIFUUMIKZUVEUUOUVIUXFUXHUUMGPKZUVMUWCU
      VIUXFUXHUXIWHSVKQFGUUMWIWJYHYFUXBUUOWCZYGUVEUVTUVIUUOUWBYCUWDWKYRUXJUXDUU
      OUUMWLLZVAZUWFUUJKZUURUXDUUOUXMUXDUXKUWEIKZUWFUXLIKZUUOUXMUXDUXKUWEUXDUUM
      UVIUUMTOZUVRUXGWBYIUXDUUNUVRUWGUVIUWMYJYIYKUVIUXPUWGUUOUXNSUVRUXGUWMUUMUU
      NYLYMUXMUXOSUXDUXLUWFIUXKYNUWEYNYOYDYSYPUVIUVRUUPUXLUUQUWFUUJABUUMCXGUWQY
      QYTUUAUUBUUCYAUUDUUEDEUUGUUIIUUJBUUFWQ $.

    $d x u $.
    xrge0iifhmeo.k $e |- J = ( ( ordTop ` <_ ) |`t ( 0 [,] +oo ) ) $.
    $( Expose a homeomorphism from the closed unit interval and the extended
       non-negative reals.  (Contributed by Thierry Arnoux, 1-Apr-2017.) $)
    xrge0iifhmeo $p |- F e. ( II Homeo J ) $=
      ( cle cc0 co cordt cfv cpnf chmeo cvv wcel wiso cps cxr mp2an mpbi cdm vy
      c1 cicc cxp cin ccnv ctsr letsr tsrps ax-mp elexi inex1 cnvps xrge0iifiso
      cii clt wss wb iccssxr gtiso isores1 isores2 wceq ledm psssdm eqcomi lern
      crn df-rn eqtri ordthmeo mp3an dfii5 crest iccss2 cnvordtrestixx eleqtrri
      cv oveq12i ) BFGUBUCHZVTUDZUEZIJZFUFZGKUCHZWEUDZUEZIJZLHZUOCLHWBMNWGMNVTW
      EWBWGBOZBWINFWAFPFUGNFPNZUHFUIUJZUKULWDWFWDPWKWDPNZWLFUMUJZUKULVTWEWBWDBO
      ZWJVTWEFWDBOZWOVTWEUPUPUFBOZWPABDUNVTQUQZWEQUQZWQWPURGUBUSZGKUSZVTWEBUTRS
      VTWEFWDBVASVTWEWBWDBVBSWBWGBMMVTWEWBTZVTWKWRXBVTVCWLWTVTFQVDVERVFWGTZWEWM
      WSXCWEVCWNXAWEWDQQFVHWDTVGFVIVJVERVFVKVLUOWCCWHLVMCFIJWEVNHWHEAUAWEXAGKAV
      RUAVRVOVPVJVSVQ $.


    $d x Y $.
    $( The defined function from the closed unit interval and the extended
       non-negative reals is also a monoid homomorphism.  (Contributed by
       Thierry Arnoux, 5-Apr-2017.) $)
    xrge0iifhom $p |- ( ( X e. ( 0 [,] 1 ) /\ Y e. ( 0 [,] 1 ) ) ->
      ( F ` ( X x. Y ) ) = ( ( F ` X ) +e ( F ` Y ) ) ) $=
      ( cc0 c1 co wcel wceq cfv cxad cxr wbr cpnf cmnf cr sseldi cicc cioc cmul
      wo csn cun cle 0xr 1re rexri 0le1 snunioc mp3an eleq2i elun bitr3i orim1i
      elsni sylbi wa 0elunit cv clog cneg iftrue pnfxr elexi fvmpt ax-mp oveq2i
      cif wne eqeq1 fveq2 negeqd ifbieq2d ifex a1i wn elunitrn adantr elunitge0
      negex simpr neneqad ne0gt0d elrpd relogcld renegcld rexrd ifclda pnfnemnf
      eqeltrd neeq1 renemnfd ifbothda eqnetrd xaddpnf1 syl5eq cc unitsscn simpl
      syl2anc mul01d fveq2d syl6eq eqtr4d oveq2d 3eqtr4rd oveq1i xrge0iifcv crp
      cioo clt wss ltpnf iocssioo mp4an ioorp sseqtri sseli syl xaddpnf2 rpssre
      0le0 sstri ax-resscn mul02d oveq1d caddc rexadd oveqan12d remulcld rpgt0d
      rpred mulgt0d iocssicc iimulcl 0re recnd elicc2i simp3bi w3a elioc2 mp2an
      wb syl3anbrc relogmuld negdid 3eqtrd jaoian sylan jaodan sylan2 ) EHIUAJZ
      KZDUUOKZEHLZEHIUBJZKZUDZDEUCJZBMZDBMZEBMZNJZLZUUPEHUEZKZUUTUDZUVAUUPEUVHU
      USUFZKUVJUVKUUOEHOKZIOKHIUGPUVKUUOLUHIUIUJUKHIULUMZUNEUVHUUSUOUPUVIUURUUT
      EHURUQUSUUQUURUVGUUTUUQUURUTZUVDHBMZNJZDHUCJZBMZUVFUVCUVNUVPQUVRUVNUVPUVD
      QNJZQUVOQUVDNHUUOKUVOQLVAAHAVBZHLZQUVTVCMZVDZVKZQUUOBUWAQUWCVEFQOVFVGZVHV
      IZVJUVNUVDOKZUVDRVLZUVSQLUUQUWGUURUUQUVDDHLZQDVCMZVDZVKZOADUWDUWLUUOBUVTD
      LZUWAUWIUWCUWKQUVTDHVMUWMUWBUWJUVTDVCVNVOVPFUWIQUWKUWEUWJWCVQVHZUUQUWIQUW
      KOQOKZUUQUWIUTZVFVRUUQUWIVSZUTZUWKUWRUWJUWRDUWRDUUQDSKUWQDVTWAZUWRDUWSUUQ
      HDUGPUWQDWBWAUWRDHUUQUWQWDWEWFWGWHWIZWJWKWMWAUUQUWHUURUUQUVDUWLRUWNUWIQRV
      LZUWKRVLUWLRVLUUQQUWKQUWLRWNUWKUWLRWNUXAUWPWLVRUWRUWKUWTWOWPWQWAUVDWRXCWS
      UVNUVRUVOQUVNUVQHBUVNDUVNUUOWTDXAUUQUURXBTXDXEUWFXFXGUVNUVEUVOUVDNUVNEHBU
      UQUURWDZXEXHUVNUVBUVQBUVNEHDUCUXBXHXEXIUUQUWIDUUSKZUDZUUTUVGUUQDUVHKZUXCU
      DZUXDUUQDUVKKUXFUVKUUODUVMUNDUVHUUSUOUPUXEUWIUXCDHURUQUSUWIUUTUVGUXCUWIUU
      TUTZUVOUVENJZHEUCJZBMZUVFUVCUXGUXHQUXJUXGUXHQUVENJZQUVOQUVENUWFXJUXGUVEOK
      ZUVERVLZUXKQLUXGUUTUXLUWIUUTWDZUUTUVEUUTUVEEVCMZVDZSABEFXKZUUTUXOUUTEUUSX
      LEUUSHQXMJZXLUVLUWOHHUGPIQXNPZUUSUXRXOUHVFYEISKZUXSUIIXPVIHQHIXQXRXSXTZYA
      WHWIWMZWJYBUXGUUTUXMUXNUUTUVEUYBWOYBUVEYCXCWSUXGUXJUVOQUXGUXIHBUXGEUXGUUS
      WTEUUSSWTUUSXLSUYAYDYFYGYFUXNTYHXEUWFXFXGUXGUVDUVOUVENUXGDHBUWIUUTXBZXEYI
      UXGUVBUXIBUXGDHEUCUYCYIXEXIUXCUUTUTZUWKUXPNJZUWKUXPYJJZUVFUVCUYDUWKSKUXPS
      KUYEUYFLUYDUWJUYDDUYDUUSXLDUYAUXCUUTXBZTZWHZWIUYDUXOUYDEUYDUUSXLEUYAUXCUU
      TWDZTZWHZWIUWKUXPYKXCUXCUUTUVDUWKUVEUXPNABDFXKUXQYLUYDUVCUVBVCMZVDZUWJUXO
      YJJZVDUYFUYDUVBUUSKZUVCUYNLUYDUVBSKZHUVBXNPZUVBIUGPZUYPUYDDEUYDDUYHYOZUYD
      EUYKYOZYMUYDDEUYTVUAUYDDUYHYNUYDEUYKYNYPUYDUVBUUOKZUYSUYDUUQUUPVUBUYDUUSU
      UODHIYQZUYGTUYDUUSUUOEVUCUYJTDEYRXCVUBUYQHUVBUGPUYSHIUVBYSUIUUAUUBYBUVLUX
      TUYPUYQUYRUYSUUCUUFUHUIHIUVBUUDUUEUUGABUVBFXKYBUYDUYMUYOUYDDEUYHUYKUUHVOU
      YDUWJUXOUYDUWJUYIYTUYDUXOUYLYTUUIUUJXIUUKUULUUMUUN $.

    $( Condition for the defined function, ` -u ( log `` x ) ` to be a monoid
       homomorphism.  (Contributed by Thierry Arnoux, 20-Jun-2017.) $)
    xrge0iif1 $p |- ( F ` 1 ) = 0 $=
      ( c1 cc0 cicc co wcel cfv wceq 1elunit cv cpnf clog cneg cif wn wne neeq1
      ax-1ne0 mpbiri neneqd iffalse syl fveq2 negeqd log1 negeqi neg0 eqtri a1i
      3eqtrd c0ex fvmpt ax-mp ) FGFHIZJFBKGLMAFANZGLZOUSPKZQZRZGURBUSFLZVCVBFPK
      ZQZGVDUTSVCVBLVDUSGVDUSGTFGTUBUSFGUAUCUDUTOVBUEUFVDVAVEUSFPUGUHVFGLVDVFGQ
      GVEGUIUJUKULUMUNDUOUPUQ $.

    $( The defined function from the closed unit interval and the extended
       non-negative reals is a monoid homomorphism.  (Contributed by Thierry
       Arnoux, 21-Jun-2017.) $)
    xrge0iifmhm $p |- F e. ( ( ( mulGrp ` CCfld ) |`s ( 0 [,] 1 ) )
                                         MndHom ( RR*s |`s ( 0 [,] +oo ) ) ) $=
      ( vy vz ccnfld cfv cc0 c1 cicc co cress wcel cmul wceq ax-mp cc cvv wa wf
      cmgp cxrs cpnf cmhm cmnd cv cxad wral ctmd eqid iistmd tmdmnd ccmn cmnmnd
      w3a xrge0cmn pm3.2i wf1o ccnv cneg ce cmpt xrge0iifcnv simpli xrge0iifhom
      cif rgen2a xrge0iif1 3pm3.2i wss cbs unitsscn cnfldbas ressbas2 xrge0base
      f1of mgpbas cnfldex ovex mgpress mp2an cmulr cnfldmul ressmulr xrge0plusg
      mgpplusg crg c0g cnrng 1elunit cnfld1 rngidss mp3an xrge00 ismhm mpbir2an
      ) BHUCIZJKLMZNMZUDJUELMZNMZUFMOXAUGOZXCUGOZUAWTXBBUBZFUHZGUHZPMBIXGBIXHBI
      UIMQZGWTUJFWTUJZKBIJQZUQXDXEXAUKOXDXAXAULZUMXAUNRXCUOOXEURXCUPRUSXFXJXKWT
      XBBUTZXFXMBVAFXBXGUEQJXGVBVCIVHVDQAFBDVEVFWTXBBVRRXIFGWTABCXGXHDEVGVIABCD
      EVJVKFGWTXBPUIXAXCBJKWTSVLZWTXAVMIQVNWTSXAWSXLSHWSWSULZVOVSVPRVQHWTNMZPXA
      HTOWTTOZXAXPUCIQVTJKLWAZWTHXPWSTTXPULZXOWBWCXQPXPWDIQXRWTHXPPTXSWEWFRWHWG
      HWIOXNKWTOKXAWJIQWKVNWLWTSHKXAXLVOWMWNWOWPWQWR $.

    $d x v $.  $d a b .+ $.  $d u v .+ $.  $d u v F $.
    xrge0pluscn.1 $e |- .+ = ( +e |` ( ( 0 [,] +oo ) X. ( 0 [,] +oo ) ) ) $.
    $( The addition operation of the extended non-negative real numbers monoid
       is continuous.  (Contributed by Thierry Arnoux, 24-Mar-2017.) $)
    xrge0pluscn $p   |- .+ e. ( ( J tX J ) Cn J ) $=
      ( vu vv cc0 co cmul cii wf wcel cc cxad cxr cfv ccnfld va vb vy cicc cpnf
      c1 cxp cres xrge0iifhmeo wfn cv wral wss unitsscn xpss12 mp2an wb ax-mulf
      ffn fnssresb mpbir wa ovres iimulcl eqeltrd rgen2a ffnov mpbir2an iccssxr
      mp2b xaddf fneq1i oveqi ge0xaddcl syl5eqel iitopon cle cordt crest ctopon
      letopon resttopon eqeltri wceq wf1o ccnv cneg cif cmpt xrge0iifcnv simpli
      f1of ax-mp ffvelrni syl2an syl5eq xrge0iifhom eqcomd fveq2d 3eqtr2rd cmgp
      ce cress ctmd ctx ccn eqid iistmd cvv cnfldex ovex mgpress mgptopn cplusf
      dfii4 cnfldbas mgpbas cnfldmul mgpplusg ressplusf eqcomi tmdcn mndpluscn
      ) HIJUFUDKZJUEUDKZLYDYDUGZUHZCBMDACDEFUIYFYDYGNYGYFUJZHUKZIUKZYGKZYDOZIYD
      ULHYDULYHYFPPUGZUMZYDPUMZYOYNUNUNYDPYDPUOUPYMPLNZLYMUJZYHYNUQURYMPLUSZYMY
      FLUTVJVAYLHIYDYIYDOZYJYDOZVBZYKYIYJLKZYDYIYJYDYDLVCZYIYJVDVEVFHIYDYDYDYGV
      GVHYEYEUGZYEBNBUUDUJZUAUKZUBUKZBKZYEOZUBYEULUAYEULUUEQUUDUHZUUDUJZUUKUUDR
      RUGZUMZYERUMZUUNUUMJUEVIZUUOYERYERUOUPUULRQNQUULUJUUKUUMUQVKUULRQUSUULUUD
      QUTVJVAUUDBUUJGVLVAUUIUAUBYEUUFYEOUUGYEOVBZUUHUUFUUGUUJKZYEBUUJUUFUUGGVMU
      UPUUQUUFUUGQKYEUUFUUGYEYEQVCUUFUUGVNVEVOVFUAUBYEYEYEBVGVHVPDVQVRSZYEVSKZY
      EVTSZFUURRVTSOUUNUUSUUTOWAUUOYEUURRWBUPWCUUAYICSZYJCSZBKZUVAUVBQKZUUBCSYK
      CSUUAUVCUVAUVBUUJKZUVDBUUJUVAUVBGVMYSUVAYEOUVBYEOUVEUVDWDYTYDYEYICYDYECWE
      ZYDYECNUVFCWFUCYEUCUKZUEWDJUVGWGXBSWHWIWDAUCCEWJWKYDYECWLWMZWNYDYEYJCUVHW
      NUVAUVBYEYEQVCWOWPACDYIYJEFWQUUAUUBYKCUUAYKUUBUUCWRWSWTTXASZYDXCKZXDOYGMM
      XEKMXFKOUVJUVJXGZXHYGUVJMTYDXCKZMUVJTXIOYDXIOUVJUVLXASWDXJJUFUDXKYDTUVLUV
      IXIXIUVLXGZUVIXGZXLUPUVLUVMXOXMUVJXNSYGYDPLUVIUVJPTUVIUVNXPXQUVKTLUVIUVNX
      RXSYPYQURYRWMUNXTYAYBWMYC $.
  $}

  ${
    $d x y C $.
    xrge0mulc1cn.k $e |- J = ( ( ordTop ` <_ ) |`t ( 0 [,] +oo ) ) $.
    xrge0mulc1cn.f $e |- F = ( x e. ( 0 [,] +oo ) |-> ( x *e C ) ) $.
    xrge0mulc1cn.c $e |- ( ph -> C e. ( 0 [,) +oo ) ) $.
    $( The operation multiplying a non-negative real numbers by a non-negative
       constant is continuous.  (Contributed by Thierry Arnoux, 6-Jul-2017.) $)
    xrge0mulc1cn $p |- ( ph -> F e. ( J Cn J ) ) $=
      ( vy cc0 wceq ccn co wcel cpnf cfv cxr a1i cxmu crp cioo ctopon csn cordt
      cicc wf cle crest wss letopon iccssxr resttopon mp2an eqeltri pnfxr pnfge
      wbr 0xr ax-mp lbicc2 mp3an cxp cv wa simpl oveq2d simpr sseldi xmul01 syl
      cmpt eqtrd mpteq2dva fconstmpt 3eqtr4g c0ex fconst2 sylibr cnconst adantl
      syl22anc cres eqid oveq1 cbvmptv xrmulc1cn letopuni cnrest sylancl resmpt
      id eqtr4i eqcomi oveq1i 3eltr3g ioorp ioossicc eqsstr3i ge0xmulcl syl2anc
      crn wb fmptd frn cnrest2 syl3anc mpbid oveq2i syl6eleqr eleq2s cico wo cr
      clt 0re ltpnf elicoelioo sylib mpjaodan ) ACJKZDEELMZNZCJOUAMZNZXTYBAXTEJ
      OUEMZUBPZNZYGJYENZYEJUCZDUFZYBYGXTEUGUDPZYEUHMZYFFYKQUBPNZYEQUIZYLYFNUJJO
      UKZYEYKQULUMUNRZYPYHXTJQNZOQNZJOUGUQZYHURUOYQYSURJUPUSJOUTVARXTDYEYIVBZKY
      JXTBYEBVCZCSMZVKZBYEJVKDYTXTBYEUUBJXTUUAYENZVDZUUBUUAJSMZJUUECJUUASXTUUDV
      EVFUUEUUAQNUUFJKUUEYEQUUAYOXTUUDVGVHUUAVIVJVLVMGBYEJVNVOYEJDVPVQVRJDEEYEY
      EVSWAVTYDYBAYBCTYCCTNZDEYLLMZYAUUGDEYKLMZNZDUUHNZUUGBQUUBVKZYEWBZYLYKLMZD
      UUIUUGUULYKYKLMNYNUUMUUNNUUGICUULYKYKWCBIQUUBIVCZCSMUUAUUOCSWDWEUUGWKWFYO
      YEUULYKYKQWGWHWIUUMUUCDYNUUMUUCKYOBQYEUUBWJUSGWLYLEYKLEYLFWMWNWOUUGYMDXAY
      EUIZYNUUJUUKXBYMUUGUJRUUGYEYEDUFUUPUUGBYEUUBYEDUUGUUDVDZUUDCYENUUBYENUUGU
      UDVGUUQTYECTYCYEWPJOWQWRUUGUUDVEVHUUACWSWTGXCYEYEDXDVJYNUUGYORYEDEYKQXEXF
      XGEYLELFXHXIWPXJVTACJOXKMNZXTYDXLZHYQYRJOXNUQZUURUUSXBURUOJXMNUUTXOJXPUSJ
      OCXQVAXRXS $.
  $}

  $( The extended non-negative real numbers monoid forms a topological space.
     (Contributed by Thierry Arnoux, 19-Jun-2017.) $)
  xrge0tps $p |- ( RR*s |`s ( 0 [,] +oo ) ) e. TopSp $=
    ( cxrs ctps wcel cc0 cpnf cicc co cvv cress xrstps ovex resstps mp2an ) ABC
    DEFGZHCANIGBCJDEFKNAHLM $.

  $( The topology of the extended non-negative real numbers.  (Contributed by
     Thierry Arnoux, 20-Jun-2017.) $)
  xrge0topn $p |- ( TopOpen ` ( RR*s |`s ( 0 [,] +oo ) ) ) =
                                       ( ( ordTop ` <_ ) |`t ( 0 [,] +oo ) ) $=
    ( cle cordt cfv cc0 cpnf cicc co crest cxrs cress ctopn eqid xrstopn eqcomi
    resstopn ) ABCZDEFGZHGIQJGZKCQRPIRLMON $.

  $( The topology of the extended non-negative real numbers is Hausdorff.
     (Contributed by Thierry Arnoux, 26-Jul-2017.) $)
  xrge0haus $p |- ( TopOpen ` ( RR*s |`s ( 0 [,] +oo ) ) ) e. Haus $=
    ( cxrs cc0 cpnf cicc cress ctopn cfv cle cordt crest cha xrge0topn wcel cvv
    co xrhaus ovex resthaus mp2an eqeltri ) ABCDOZEOFGHIGZUAJOZKLUBKMUANMUCKMPB
    CDQUAUBNRST $.

  ${
    $d x y $.
    $( The extended non-negative real numbers monoid is a topological monoid.
       (Contributed by Thierry Arnoux, 26-Mar-2017.)
       (Proof modification is discouraged.)  (New usage is discouraged.) $)
    xrge0tmdOLD $p |- ( RR*s |`s ( 0 [,] +oo ) ) e. TopMnd $=
      ( vx vy cxrs cc0 cpnf cicc co wcel cxad cxp cfv ax-mp wceq clog cneg eqid
      cv cif cxr cvv cress ctmd cmnd ctps cres cle cordt crest ctx ccn xrge0cmn
      ccmn cmnmnd xrge0tps cmpt eqeq1 fveq2 negeqd ifbieq2d cbvmptv xrge0pluscn
      c1 cplusf xrsbas xrsadd wf wfn ffn iccssxr ressplusf eqcomi xrge0base cts
      xaddf ovex xrstset resstset topnval istmd mpbir3an ) CDEFGZUAGZUBHWBUCHZW
      BUDHIWAWAJUEZUFUGKZWAUHGZWFUIGWFUJGHWBULHWCUKWBUMLUNAWDBDVBFGZBQZDMZEWHNK
      ZOZRZUOWFBAWGWLAQZDMZEWMNKZOZRWHWMMZWIWNWKWPEWHWMDUPWQWJWOWHWMNUQURUSUTWF
      PWDPVAWDWBWFWBVCKWDWASICWBVDWBPZVESSJZSIVFIWSVGVNWSSIVHLDEVIVJVKWAWEWBVLW
      ATHWEWBVMKMDEFVOWACWBWETWRVPVQLVRVSVT $.
  $}

  ${
    $d x y $.
    $( The extended non-negative real numbers monoid is a topological monoid.
       (Contributed by Thierry Arnoux, 26-Mar-2017.)  (Proof Shortened by
       Thierry Arnoux, 21-Jun-2017.) $)
    xrge0tmd $p |- ( RR*s |`s ( 0 [,] +oo ) ) e. TopMnd $=
      ( vx vy ccnfld cmgp cfv cc0 c1 cicc co cress cpnf cv wceq clog cneg chmeo
      cif cii cvv eqid cxrs cmpt ctopn nfcv eqeq1 fveq2 negeqd cbvmpt xrge0topn
      ifbieq2d xrge0iifmhm xrge0iifhmeo wcel cnfldex ovex mgpress mp2an mgptopn
      dfii4 oveq1i eleqtri iistmd xrge0tps mhmhmeotmd ) CDEZFGHIZJIZUAFKHIJIZAV
      FALZFMZKVINEZOZQZUBZBVNVHUCEZABVFVMBLZFMZKVPNEZOZQZBVMUDAVTUDVIVPMZVJVQVL
      VSKVIVPFUEWAVKVRVIVPNUFUGUJUHZUIUKVNRVOPIVGUCEZVOPIBVNVOWBUIULRWCVOPCVFJI
      ZRVGCSUMVFSUMVGWDDEMUNFGHUOVFCWDVESSWDTZVETUPUQWDWEUSURUTVAVGVGTVBVCVD $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Limits - misc additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    lmlim.j $e |- J e. ( TopOn ` Y ) $.
    lmlim.f $e |- ( ph -> F : NN --> X ) $.
    lmlim.p $e |- ( ph -> P e. X ) $.
    lmlim.t $e |- ( J |`t X ) = ( ( TopOpen ` CCfld ) |`t X ) $.
    lmlim.x $e |- X C_ CC $.
    $( Relate a limit in a given topology to a complex number limit, provided
       that topology agrees with the common topology on ` CC ` on the required
       subset.  (Contributed by Thierry Arnoux, 11-Jul-2017.) $)
    lmlim $p |- ( ph -> ( F ( ~~>t ` J ) P <-> F ~~> P ) ) $=
      ( clm cfv wbr c1 cvv cn cc wcel a1i crest ccnfld ctopn cli eqid nnuz cnex
      co wss ssexd ctop topontopi cz 1z wb fveq2i breqi cnfldtop wf fss sylancl
      lmss lmclimf sylancr bitr3d 3bitrd ) ACBDLMNCBDEUAUHZLMZNZCBUBUCMZEUAUHZL
      MZNZCBUDNZABCDVGOPEQVGUEUFAERPRPSAUGTERUIZAKTUJZDUKSAFDGULTIOUMSZAUNTZHVB
      VIVMUOACBVHVLVGVKLJUPUQTACBVJLMNZVMVNABCVJVKOPEQVKUEUFVPVJUKSAVJVJUEZURTI
      VRHVBAVQQRCUSZVSVNUOUNAQECUSVOWAHKQERCUTVABCVJOQVTUFVCVDVEVF $.
  $}

  ${
    lmlimxrge0.j $e |- J = ( TopOpen ` ( RR*s |`s ( 0 [,] +oo ) ) ) $.
    lmlimxrge0.f $e |- ( ph -> F : NN --> X ) $.
    lmlimxrge0.p $e |- ( ph -> P e. X ) $.
    lmlimxrge0.x $e |- X C_ ( 0 [,) +oo ) $.
    $( Relate a limit in the non-negative extended reals to a complex limit,
       provided the considered function is a real function.  (Contributed by
       Thierry Arnoux, 11-Jul-2017.) $)
    lmlimxrge0 $p |- ( ph -> ( F ( ~~>t ` J ) P <-> F ~~> P ) ) $=
      ( cc0 cpnf co cfv crest cxr wcel wss cvv cr cmnf cordt ctopon cress ctopn
      cicc cle cxrs xrge0topn eqtri letopon iccssxr resttopon mp2an ccnfld wceq
      eqeltri fvex cico icossicc sstri ovex restabs mp3an oveq1i cioo clt mnfxr
      wbr pnfxr mnflt ax-mp pnfge icossioo mp4an ioomax sseqtri xrrest2 3eqtr4i
      0re eqid cc ax-resscn lmlim ) ABCDEJKUELZDUFUAMZWDNLZWDUBMZDUGWDUCLUDMWFF
      UHUIZWEOUBMPWDOQWFWGPUJJKUKWDWEOULUMUPGHWFENLZWEENLZDENLUNUDMZENLZWERPEWD
      QWDRPWIWJUOUFUAUQEJKURLZWDIJKUSUTJKUEVAEWDWERRVBVCDWFENWHVDESQWLWJUOEWMSI
      WMTKVELZSTOPKOPZTJVFVHZKKUFVHZWMWNQVGVIJSPWPVSJVJVKWOWQVIKVLVKTKJKVMVNVOV
      PUTZEWKWEWKVTWEVTVQVKVRESWAWRWBUTWC $.
  $}

  ${
    $d j k x z F $.
    $( Implication of convergence for a non-negative series.  This could be
       used to shorten ~ prmreclem6 (Contributed by Thierry Arnoux,
       28-Jul-2017.) $)
    rge0scvg $p |- ( ( F : NN --> ( 0 [,) +oo ) /\ seq 1 ( + , F ) e. dom ~~> )
      -> sup ( ran seq 1 ( + , F ) , RR , < ) e. RR ) $=
      ( vz vx vj vk cn cc0 cpnf wf c1 cli wcel wa cr c0 cv cle wbr cmnf adantr
      cico co caddc cseq cdm crn wss wne wral wrex clt csup nnuz cz 1z a1i cioo
      cxr mnfxr pnfxr 0re mnflt ax-mp pnfge icossioo mp4an ioomax sseqtri mpan2
      fss ffvelrnda serfre frn syl 1nn fdm syl5eleqr ne0i dm0rn0 necon3bii 3syl
      sylib climdm biimpi adantl climrecl simpr simplll ffvelrn syl2anc elrege0
      cfv sseldi simprbi adantlr climserle ralrimiva wceq ralbidv rspcev wb wfn
      breq2 ffn breq1 ralrn rexbidv mpbird suprcl syl3anc ) FGHUAUBZAIZUCAJUDZK
      UELZMZXMUFZNUGZXPOUHZBPZCPZQRZBXPUIZCNUJZXPNUKULNLXLXQXNXLFNXMIZXQXLDAJFU
      MJUNLZXLUOUPXLFNDPZAXLXKNUGFNAIXKSHUQUBZNSURLHURLZSGUKRZHHQRZXKYGUGUSUTGN
      LYIVAGVBVCYHYJUTHVDVCSHGHVEVFVGVHZFXKNAVJVIVKVLZFNXMVMVNTXLXRXNXLYDJXMUEZ
      LZXRYLYDJFYMVOFNXMVPVQYNYMOUHXRYMJVRYMOXPOXMVSVTWBWATXOYCEPZXMWLZXTQRZEFU
      IZCNUJZXOXMKWLZNLYPYTQRZEFUIZYSXOYTEXMJFUMYEXOUOUPXNXMYTKRZXLXNUUCXMWCWDW
      EZXOFNYOXMXLYDXNYLTVKWFXOUUAEFXOYOFLZMZYTDAJYOFUMXOUUEWGXOUUCUUEUUDTUUFYF
      FLZMXLUUGYFAWLZNLZXLXNUUEUUGWHUUFUUGWGXLUUGMZXKNUUHYKFXKYFAWIZWMWJXOUUGGU
      UHQRZUUEXLUUGUULXNUUJUUHXKLZUULUUKUUMUUIUULUUHWKWNVNWOWOWPWQYRUUBCYTNXTYT
      WRYQUUAEFXTYTYPQXCWSWTWJXLYCYSXAXNXLYBYRCNXLYDXMFXBYBYRXAYLFNXMXDYAYQBEFX
      MXSYPXTQXEXFWAXGTXHCBXPXIXJ $.
  $}

  ${
    $d x y A $.  $d y J $.
    pnfneige0.j $e |- J = ( TopOpen ` ( RR*s |`s ( 0 [,] +oo ) ) ) $.
    $( A neighborhood of ` +oo ` contains an unbounded interval based at a real
       number.  See ~ pnfnei (Contributed by Thierry Arnoux, 31-Jul-2017.) $)
    pnfneige0 $p |- ( ( A e. J /\ +oo e. A ) ->
      E. x e. RR ( x (,] +oo ) C_ A ) $=
      ( vy wcel cpnf wa cioc co cc0 cin wss cr a1i wceq cxr cfv ctop cvv cv clt
      wrex wbr cif 0re wn simpllr ifclda rexr 0xr iocinif syl3anc ovif syl6reqr
      pnfxr ad2antlr cicc iocssicc sslin mp1i simpr ssin biimpri simpld ssinss1
      3syl sstrd eqsstrd oveq1 sseq1d rspcev syl2anc cordt crest ctopon letopon
      iccssxr resttopon mp2an topontopi ovex cress ctopn xrge0topn eqtri eleq2i
      cxrs biimpi elrestr letop restabs mp3an syl6eleq wb iocpnfordt ssid inss2
      restopnb syl23anc mpbird adantr ltpnf ubioc1 elin sylanbrc pnfnei r19.29a
      cle ax-mp ) BCFZGBFZHZEUAZGIJZBKGIJZLZMZAUAZGIJZBMZANUCZENXMXNNFZHZXRHZXN
      KUBUDZKXNUEZNFYGGIJZBMZYBYEYFKXNNKNFZYEYFHUFOXMYCXRYFUGUHUIYEYHXOXPLZBYCY
      HYKPXMXRYCYKYFXPXOUEZYHYCXNQFKQFZGQFZYKYLPXNUJYMYCUKOYNYCUPOXNKGULUMYFKXN
      GIUNUOUQYEYKXOKGURJZLZBXPYOMZYKYPMYEKGUSZXPYOXOUTVAYEXRXOBMZYPBMYDXRVBXRY
      SXOXPMZYSYTHXRXOBXPVCVDVEXOYOBVFVGVHVIYAYIAYGNXSYGPXTYHBXSYGGIVJVKVLVMXMX
      QXIVNRZFZGXQFZXRENUCXKUUBXLXKUUBXQUUAXPVOJZFZXKXQUUAYOVOJZXPVOJZUUDXKUUFS
      FZXPTFZBUUFFZXQUUGFUUHXKYOUUFUUAQVPRFYOQMUUFYOVPRFVQKGVRYOUUAQVSVTWAOUUIX
      KKGIWBOZXKUUJCUUFBCWHYOWCJWDRUUFDWEWFWGWIBXPUUFSTWJUMUUASFZYQYOTFUUGUUDPW
      KYRKGURWBXPYOUUASTWLWMWNXKUULUUIXPUUAFZXPXPMZXQXPMZUUBUUEWOUULXKWKOUUKUUM
      XKKWPOUUNXKXPWQOUUOXKBXPWROXPXPXQUUATWSWTXAXBXMXLGXPFZUUCXKXLVBUUPXMYMYNK
      GUBUDZUUPUKUPYJUUQUFKXCXJKGXDWMOGBXPXEXFEXQXGVMXH $.
  $}

  ${
    $d a j l x A $.  $d a j k l x F $.  $d a k l x J $.  $d a k l x ph $.
    lmxrge0.j $e |- J = ( TopOpen ` ( RR*s |`s ( 0 [,] +oo ) ) ) $.
    lmxrge0.6 $e |- ( ph -> F : NN --> ( 0 [,] +oo ) ) $.
    lmxrge0.7 $e |- ( ( ph /\ k e. NN ) -> ( F ` k ) = A ) $.
    $( Express "sequence ` F ` converges to plus infinity" (i.e. diverges), for
       a sequence of non-negative extended real numbers.  (Contributed by
       Thierry Arnoux, 2-Aug-2017.) $)
    lmxrge0 $p |- ( ph -> ( F ( ~~>t ` J ) +oo <-> A. x e. RR E. j e. NN
      A. k e. ( ZZ>= ` j ) x < A ) ) $=
      ( vl cpnf cfv wbr wcel cn cr cc0 wa cxr va clm cv cuz wral wrex wi clt co
      cicc ctopon cle cordt crest cxrs cress ctopn eqid xrstopn resstopn eqtr4i
      c1 wss letopon iccssxr resttopon mp2an eqeltri a1i nnuz cz 1z lmbrf pnfxr
      0xr pnfge ax-mp ubicc2 mp3an biantrur syl6bbr cioc cin rexr ltpnf syl3anc
      ubioc1 0re jctir elin sylibr ad2antlr ctop letop iocpnfordt inopn elrestr
      ovex wceq inss2 iocssicc sstri sseqin2 mpbi incom eqtr3i 3eltr4i wb eleq2
      cvv adantl biimprd simp-5r rexrd simpr simp-4r eleqtrd simplbi syl elioc1
      w3a mpan2 biimpa simp2d syl2anc ralimdva reximdva raleqdv cbvrexv syl6ibr
      ex fveq2 imim12d rspcimdv imp mpd ralrimdva simpllr simplr sseldd simplll
      pnfneige0 r19.29r simp-4l uznnssnn jca ffvelrnda eqeltrrd sseldi ad2antrr
      biimpar syl13anc adantlr syl21anc syl5bi expimpd rexlimdva syl12anc exp31
      syl5 impbid bitrd ) AFLGUBMNZLUAUCZOZCUVDOZEKUCZUDMZUEZKPUFZUGZUAGUEZBUCZ
      CUHNZEDUCZUDMZUEZDPUFZBQUEZAUVCLRLUJUIZOZUVLSUVLAUACLKEFGVBUVTPGUVTUKMZOA
      GULUMMZUVTUNUIZUWBGUOUVTUPUIZUQMUWDHUVTUWEUWCUOUWEURUSUTVAZUWCTUKMOUVTTVC
      UWDUWBOVDRLVEZUVTUWCTVFVGVHVIVJVBVKOAVLVIIJVMUWAUVLRTOZLTOZRLULNZUWAVOVNU
      WHUWJVORVPVQRLVRVSVTWAAUVLUVSAUVLUVRBQAUVMQOZSZUVLUVRUWLUVLSLUVMLWBUIZRLW
      BUIZWCZOZUVRUWKUWPAUVLUWKLUWMOZLUWNOZSUWPUWKUWQUWRUWKUVMTOZUWIUVMLUHNUWQU
      VMWDUWIUWKVNVIUVMWEUVMLWGWFUWHUWIRLUHNZUWRVOVNRQOUWTWHRWEVQRLWGVSWILUWMUW
      NWJWKWLUWLUVLUWPUVRUGZUWLUVKUXAUAUWOGUWOGOUWLUWOUVTWCZUWDUWOGUWCWMOZUVTXJ
      OUWOUWCOZUXBUWDOWNRLUJWRUXCUWMUWCOUWNUWCOUXDWNUVMWORWOUWMUWNUWCWPVSUWOUVT
      UWCWMXJWQVSUVTUWOWCZUWOUXBUWOUVTVCUXEUWOWSUWOUWNUVTUWMUWNWTRLXAXBUWOUVTXC
      XDUVTUWOXEXFUWFXGVIUWLUVDUWOWSZSZUWPUVEUVJUVRUXGUVEUWPUXFUVEUWPXHUWLUVDUW
      OLXIXKXLUXGUVJUVNEUVHUEZKPUFZUVRUXGUVIUXHKPUXGUVGPOZSZUVFUVNEUVHUXKEUCZUV
      HOZSZUVFUVNUXNUVFSZUWSCUWMOZUVNUXOUVMAUWKUXFUXJUXMUVFXMXNUXOCUWOOZUXPUXOC
      UVDUWOUXNUVFXOUWLUXFUXJUXMUVFXPXQUXQUXPCUWNOCUWMUWNWJXRXSUWSUXPSCTOZUVNCL
      ULNZUWSUXPUXRUVNUXSYAZUWSUWIUXPUXTXHVNUVMLCXTYBZYCYDYEYKYFYGUVQUXHDKPUVOU
      VGWSUVNEUVPUVHUVOUVGUDYLYHYIZYJYMYNYOYPYKYQAUVSUVKUAGAUVDGOZSZUVSUVEUVJUY
      DUVSSZUVESZAUWMUVDVCZBQUFZUVSUVJAUYCUVSUVEUUAUYFUYCUVEUYHAUYCUVSUVEYRUYEU
      VEXOBUVDGHUUBYEUYDUVSUVEYSAUYHUVSSZUVJUYIUYGUVRSZBQUFAUVJUYGUVRBQUUCAUYJU
      VJBQUWLUYGUVRUVJUVRUXIUWLUYGSZUVJUYBUYKUXHUVIKPUYKUXJSZUVNUVFEUVHUYLUXMSZ
      AUXLPOZSZUWKUYGUVNUVFUGUYMAUYNAUWKUYGUXJUXMUUDUYMUVHPUXLUXJUVHPVCUYKUXMUV
      GUUEWLUYLUXMXOYTUUFAUWKUYGUXJUXMXPUWLUYGUXJUXMYRUYOUWKSZUYGSZUVNUVFUYQUVN
      SUWMUVDCUYPUYGUVNYSUYPUVNUXPUYGUYPUVNSZUWSUXRUVNUXSUXPUYRUVMUYOUWKUVNYSXN
      UYOUXRUWKUVNUYOUVTTCUWGUYOUXLFMCUVTJAPUVTUXLFIUUGUUHUUIUUJZUYPUVNXOUYRUXR
      UXSUYSCVPXSUWSUXPUXTUYAUUKUULUUMYTYKUUNYFYGUUOUUPUUQUUTYOUURUUSYQUVAUVB
      $.
  $}

  ${
    $d j k l x F $.  $d j k l x ph $.
    lmdvg.1 $e |- ( ph -> F : NN --> ( 0 [,) +oo ) ) $.
    lmdvg.2 $e |- ( ( ph /\ k e. NN ) -> ( F ` k ) <_ ( F ` ( k + 1 ) ) ) $.
    lmdvg.3 $e |- ( ph -> -. F e. dom ~~> ) $.
    $( If a monotonic sequence of real numbers diverges, it is unbounded.
       (Contributed by Thierry Arnoux, 4-Aug-2017.) $)
    lmdvg $p |- ( ph
               -> A. x e. RR E. j e. NN A. k e. ( ZZ>= ` j ) x < ( F ` k ) ) $=
      ( vl cfv wbr wral cn cr wcel wa cle c1 cpnf co cv clt cuz wrex wn cli cdm
      crn csup nnuz cz 1z a1i wf cc0 cico wss cmnf cioo mnfxr pnfxr mnflt ax-mp
      cxr 0re pnfge mp4an ioomax sseqtri fss sylancl adantr caddc ralrimiva weq
      icossioo fveq2 oveq1 fveq2d breq12d cbvralv sylib r19.21bi adantlr breq1d
      simpr rexbii climsup cvv nnex fex ltso supex breldmg syl3anc syldan mtand
      ralnex sylibr simplr ffvelrnda ltnled rexbidva ralbidva ad2antrr uznnssnn
      rexnal syl6bb mpbird ad3antrrr ad3antlr sseldd simp-4l simpllr cfz fzssnn
      ffvelrnd cmin simplll syl2anc monoord syl21anc ltletrd ex reximdva mpd )
      ABUAZDUAZEJZUBKZDCUAZUCJZLZCMUDZBNAYGNOZPZYGYKEJZUBKZCMUDZYNAYSBNAYSBNLYQ
      YGQKZCMLZUEZBNLZAUUABNUDZUEUUCAUUDEUFUGOZHAUUDEEUHZNUBUIZUFKZUUEAUUDPZBIE
      RMUJRUKOUUIULUMAMNEUNZUUDAMUOSUPTZEUNZUUKNUQUUJFUUKURSUSTZNURVDOSVDOZURUO
      UBKZSSQKZUUKUUMUQUTVAUONOUUOVEUOVBVCUUNUUPVASVFVCURSUOSVPVGVHVIMUUKNEVJVK
      ZVLAIUAZMOZUUREJZUURRVMTZEJZQKZUUDAUVCIMAYIYHRVMTZEJZQKZDMLUVCIMLAUVFDMGV
      NUVFUVCDIMDIVOZYIUUTUVEUVBQYHUUREVQUVGUVDUVAEYHUURRVMVRVSVTWAWBWCZWDUUIUU
      DUUTYGQKZIMLZBNUDAUUDWFUUAUVJBNYTUVICIMCIVOYQUUTYGQYKUUREVQWEWAWGWBWHAUUH
      PZEWIOZUUGWIOZUUHUUEAUVLUUHAUULMWIOUVLFWJMUUKWIEWKVKVLUVMUVKNUUFUBWLWMUMA
      UUHWFEUUGWIWIUFWNWOWPWQUUABNWRWSAYSUUBBNYPYSYTUEZCMUDUUBYPYRUVNCMYPYKMOZP
      ZYGYQAYOUVOWTZYPMNYKEAUUJYOUUQVLZXAZXBXCYTCMXGXHXDXIWCYPYRYMCMUVPYRYMUVPY
      RPZYJDYLUVTYHYLOZPZYGYQYIUVPYOYRUWAUVQXEUVPYQNOYRUWAUVSXEUWBMNYHEYPUUJUVO
      YRUWAUVRXJUWBYLMYHUVOYLMUQYPYRUWAYKXFXKUVTUWAWFZXLXQUVPYRUWAWTUWBAUVOUWAY
      QYIQKAYOUVOYRUWAXMYPUVOYRUWAXNUWCAUVOPZUWAPZIEYKYHUWDUWAWFUWEUURYKYHXOTZO
      ZPZMNUUREAUUJUVOUWAUWGUUQXJUWHUWFMUURUVOUWFMUQAUWAUWGYKYHXPXKUWEUWGWFXLXQ
      UWEUURYKYHRXRTZXOTZOZPZAUUSUVCAUVOUWAUWKXSUWLUWJMUURUVOUWJMUQAUWAUWKYKUWI
      XPXKUWEUWKWFXLUVHXTYAYBYCVNYDYEYFVN $.
  $}

  ${
    $d j k x F $.  $d k x J $.  $d j k x ph $.
    lmdvglim.j $e |- J = ( TopOpen ` ( RR*s |`s ( 0 [,] +oo ) ) ) $.
    lmdvglim.1 $e |- ( ph -> F : NN --> ( 0 [,) +oo ) ) $.
    lmdvglim.2 $e |- ( ( ph /\ k e. NN ) -> ( F ` k ) <_ ( F ` ( k + 1 ) ) ) $.
    lmdvglim.3 $e |- ( ph -> -. F e. dom ~~> ) $.
    $( If a monotonic real number sequence ` F ` diverges, it converges in the
       extended real numbers and its limit is plus infinity.  (Contributed by
       Thierry Arnoux, 3-Aug-2017.) $)
    lmdvglim $p |- ( ph -> F ( ~~>t ` J ) +oo ) $=
      ( vx vj cpnf clm cfv wbr cv wral cn cc0 co wf clt wrex cr lmdvg cico cicc
      cuz wss icossicc fss sylancl wcel wa eqidd lmxrge0 mpbird ) ACKDLMNIOBOZC
      MZUANBJOUGMPJQUBIUCPAIJBCFGHUDAIURJBCDEAQRKUESZCTUSRKUFSZUHQUTCTFRKUIQUSU
      TCUJUKAUQQULUMURUNUOUP $.
  $}
