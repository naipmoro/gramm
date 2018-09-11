$(
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
      Integration
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$)

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Lebesgue integral - misc additions
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  ${
    $d k x ph $.  $d k A $.  $d k B $.  $d k C $.  $d k D $.
    itgeq12dv.2 $e |- ( ph -> A = B ) $.
    itgeq12dv.1 $e |- ( ( ph /\ x e. A ) -> C = D ) $.
    $( Equality theorem for an integral.  (Contributed by Thierry Arnoux,
       14-Feb-2017.) $)
    itgeq12dv $p |- ( ph -> S. A C _d x = S. B D _d x ) $=
      ( vk cc0 co cv cr cdiv cre cfv cle wa citg2 cmul c3 cfz cexp wcel wbr cif
      ci cmpt csu citg oveq1d fveq2d breq2d pm5.32da eleq2d anbi1d wceq adantrr
      bitrd wn eqidd ifbieq12d2 mpteq2dv oveq2d sumeq2sdv eqid dfitg 3eqtr4g )
      AJUAUBKZUGILUCKZBMBLZCUDZJEVJNKZOPZQUEZRZVNJUFZUHZSPZTKZIUIVIVJBMVKDUDZJF
      VJNKZOPZQUEZRZWCJUFZUHZSPZTKZIUIBCEUJBDFUJAVIVTWIIAVSWHVJTAVRWGSABMVQWFAV
      PWEVNJWCJAVPVLWDRWEAVLVOWDAVLRZVNWCJQWJVMWBOWJEFVJNHUKULZUMUNAVLWAWDACDVK
      GUOUPUSAVLVNWCUQVOWKURAVPUTRJVAVBVCULVDVEBCEVNIVNVFVGBDFWCIWCVFVGVH $.
  $}

$(
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
     Bochner integral
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
$)

  $c sitg $. $( Measure integral on simple functions $)
  $c sitm $. $( Integral metric $)
  $c itgm $. $( Measure integral $)

  $( Extend class notation with the (measure) Lebesgue integral. $)
  citgm $a class itgm $.

  $( Extend class notation with the integral metric for simple functions. $)
  csitm $a class sitm $.

  $( Extend class notation with the integral of simple functions. $)
  csitg $a class sitg $.

  ${
    $d f g m w x $.
    $( Define the integral of simple functions from a measurable space
       ` dom m ` to a generic space ` w ` equipped with the right scalar
       product. ` w ` will later be required to be a Banach space.

       These simple functions are required to take finitely many different
       values: this is expressed by ` ran g e. Fin ` in the definition.

       Moreover, for each ` x ` , the pre-image ` ( ``' g " { x } ) ` is
       requested to be measurable, of finite measure.

       In this definition, ` ( sigaGen `` ( TopOpen `` w ) ) ` is the Borel
       sigma-algebra on ` w ` , and the functions ` g ` range over the
       measurable functions over that Borel algebra.

       Definition 2.4.1 of [Bogachev] p. 118.  (Contributed by Thierry Arnoux,
       21-Oct-2017.) $)
    df-sitg $a |- sitg = ( w e. _V , m e. U. ran measures |-> ( f e.
      { g e. ( dom m MblFnM ( sigaGen ` ( TopOpen ` w ) ) ) | ( ran g e. Fin /\
          A. x e. ( ran g \ { ( 0g ` w ) } ) ( m ` ( `' g " { x } ) )
      e. ( 0 [,) +oo ) ) } |-> ( w gsum ( x e. ( ran f \ { ( 0g ` w ) } ) |-> (
          ( ( RRHom ` ( Scalar ` w ) ) ` ( m ` ( `' f " { x } ) ) )
      ( .s ` w ) x ) ) ) ) ) $.
  $}

  ${
    $d f g m w x $.
    $( Define the integral metric for simple functions, as the integral of the
       distances between the function values.  Since distances take
       non-negative values in ` RR* ` , the range structure for this integral
       is ` ( RR*s |``s ( 0 [,] +oo ) ) ` .  See definition 2.3.1 of [Bogachev]
       p. 116.  (Contributed by Thierry Arnoux, 22-Oct-2017.) $)
    df-sitm $a |- sitm = ( w e. _V , m e. U. ran measures |->
        ( f e. dom ( w sitg m ) , g e. dom ( w sitg m ) |->
     ( ( ( RR*s |`s ( 0 [,] +oo ) ) sitg m ) ` ( f oF ( dist ` w ) g ) ) ) ) $.
  $}

  ${
    $d f m w B $.  $d f g x F $.  $d f m w H $.  $d f g m w x M $.
    $d f g m w S $.  $d f g m w x W $.  $d f g m w x .0. $.  $d f m w .x. $.
    sitgval.b $e |- B = ( Base ` W ) $.
    sitgval.j $e |- J = ( TopOpen ` W ) $.
    sitgval.s $e |- S = ( sigaGen ` J ) $.
    sitgval.0 $e |- .0. = ( 0g ` W ) $.
    sitgval.x $e |- .x. = ( .s ` W ) $.
    sitgval.h $e |- H = ( RRHom ` ( Scalar ` W ) ) $.
    sitgval.1 $e |- ( ph -> W e. V ) $.
    sitgval.2 $e |- ( ph -> M e. U. ran measures ) $.
    $( Value of the simple function integral builder for a given space ` W `
       and measure ` M ` .  (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
    sitgval $p |- ( ph -> ( W sitg M ) = ( f e. { g e. ( dom M MblFnM S ) |
     ( ran g e. Fin /\ A. x e. ( ran g \ { .0. } ) ( M ` ( `' g " { x } ) )
        e. ( 0 [,) +oo ) ) } |-> ( W gsum ( x e. ( ran f \ { .0. } ) |-> (
        ( H ` ( M ` ( `' f " { x } ) ) ) .x. x ) ) ) ) ) $=
      ( vw vm cvv wcel cmeas crn cuni csitg cfn ccnv csn cima cfv cc0 cpnf cico
      co cv cdif wral cdm cmbfm crab cmpt cgsu wceq elex syl c0g ctopn csigagen
      wa csca crrh cvsca fveq2 fveq2d fveq2i eqtri syl6eqr oveq2d sneqd difeq2d
      raleqdv anbi2d rabeqbidv id fveq1d oveq123d mpteq12dv oveq12d dmeq oveq1d
      eqidd fveq1 eleq1d ralbidv simpl df-sitg ovex rabex mptex ovmpt2 syl2anc
      mpteq2dva ) ALUDUEZJUFUGUHZUELJUIURFGUSZUGZUJUEZXIUKBUSZULZUMZJUNZUOUPUQU
      RZUEZBXJMULZUTZVAZVMZGJVBZDVCURZVDZLBFUSZUGZXRUTZYEUKXMUMZJUNZHUNZXLEURZV
      EZVFURZVEZVGALKUEXGTLKVHVIUAUBUCLJUDXHFXKXNUCUSZUNZXPUEZBXJUBUSZVJUNZULZU
      TZVAZVMZGYOVBZYRVKUNZVLUNZVCURZVDZYRBYFYTUTZYHYOUNZYRVNUNZVOUNZUNZXLYRVPU
      NZURZVEZVFURZVEYNUIFXKYQBXSVAZVMZGUUDDVCURZVDZLBYGUUJHUNZXLEURZVEZVFURZVE
      YRLVGZFUUHUUQUVAUVEUVFUUCUUSGUUGUUTUVFUUFDUUDVCUVFUUFLVKUNZVLUNZDUVFUUEUV
      GVLYRLVKVQVRDIVLUNUVHPIUVGVLOVSVTWAWBUVFUUBUURXKUVFYQBUUAXSUVFYTXRXJUVFYS
      MUVFYSLVJUNMYRLVJVQQWAWCZWDWEWFWGUVFYRLUUPUVDVFUVFWHUVFBUUIUUOYGUVCUVFYTX
      RYFUVIWDUVFUUMUVBXLXLUUNEUVFUUNLVPUNEYRLVPVQRWAUVFUUJUULHUVFUULLVNUNZVOUN
      HUVFUUKUVJVOYRLVNVQVRSWAWIUVFXLWOWJWKWLWKYOJVGZFUVAUVEYDYMUVKUUSYAGUUTYCU
      VKUUDYBDVCYOJWMWNUVKUURXTXKUVKYQXQBXSUVKYPXOXPXNYOJWPWQWRWFWGUVKUVDYLLVFU
      VKBYGUVCYKUVKXLYGUEZVMZUVBYJXLEUVMUUJYIHUVMYHYOJUVKUVLWSWIVRWNXFWBWKBUBFG
      UCWTFYDYMYAGYCYBDVCXAXBXCXDXE $.

    $( The predicate " ` F ` is a simple function" relative to the Bochner
       integral.  (Contributed by Thierry Arnoux, 19-Feb-2018.) $)
    issibf $p |- ( ph -> ( F e. dom ( W sitg M ) <-> ( F e. ( dom M MblFnM S )
        /\ ran F e. Fin /\ A. x e. ( ran F \ { .0. } ) ( M ` ( `' F " { x } ) )
        e. ( 0 [,) +oo ) ) ) ) $=
      ( vg vf csitg cdm wcel cmbfm crn cfn ccnv csn cima cfv cc0 cpnf cico cdif
      co cv wral wa w3a crab cmpt cgsu cvv sitgval dmeqd eqid dmmpt syl6eq wceq
      eleq2d difeq1d cnveq imaeq1d fveq2d oveq1d mpteq12dv oveq2d eleq1d syl6bb
      rneq elrab ovex biantru syl6bbr raleqbidv anbi12d 3anass ) AFKIUCUQZUDZUE
      ZFIUDDUFUQZUEZFUGZUHUEZFUIZBURZUJZUKZIULZUMUNUOUQZUEZBWOLUJZUPZUSZUTZUTZW
      NWPXFVAAWLFUAURZUGZUHUEZXIUIZWSUKZIULZXBUEZBXJXDUPZUSZUTZUAWMVBZUEZXHAWLX
      TKBXEXAGULZWREUQZVCZVDUQZVEUEZUTZXTAWLFKBUBURZUGZXDUPZYGUIZWSUKZIULZGULZW
      REUQZVCZVDUQZVEUEZUBXSVBZUEYFAWKYRFAWKUBXSYPVCZUDYRAWJYSABCDEUBUAGHIJKLMN
      OPQRSTVFVGUBXSYPYSYSVHVIVJVLYQYEUBFXSYGFVKZYPYDVEYTYOYCKVDYTBYIYNXEYBYTYH
      WOXDYGFWBVMYTYMYAWREYTYLXAGYTYKWTIYTYJWQWSYGFVNVOVPVPVQVRVSVTWCWAYEXTKYCV
      DWDWEWFXRXGUAFWMXIFVKZXKWPXQXFUUAXJWOUHXIFWBZVTUUAXOXCBXPXEUUAXJWOXDUUBVM
      UUAXNXAXBUUAXMWTIUUAXLWQWSXIFVNVOVPVTWGWHWCWAWNWPXFWIWF $.

    ${
      $d x S $.  $d x ph $.
      sibf0.1 $e |- ( ph -> W e. TopSp ) $.
      sibf0.2 $e |- ( ph -> W e. Grp ) $.
      $( The constant zero function is a simple function.  (Contributed by
         Thierry Arnoux, 4-Mar-2018.) $)
      sibf0 $p |- ( ph -> ( U. dom M X. { .0. } ) e. dom ( W sitg M ) ) $=
        ( vx cdm cuni csn cxp csitg co wcel cmbfm crn cfn ccnv cv cima cfv cpnf
        cc0 cico cdif wral w3a cmeas csiga dmmeas syl csigagen cvv fvex eqeltri
        a1i sgsiga syl5eqel cmpt wceq fconstmpt cgrp grpidcl ctps tpsuni unieqi
        ctopn unisg syl5eq eqtr4d eleqtrd mbfmcst c0 xpeq1 0xp syl6eq rneqd rn0
        mp1i 0fin syl6eqel wne rnxp snfi pm2.61ine noel 0dif difid eleq2i mtbir
        difeq1d pm2.21i adantl ralrimiva 3jca issibf mpbird ) AGUBZUCZJUDZUEZIG
        UFUGUBUHXOXLCUIUGUHZXOUJZUKUHZXOULUAUMZUDUNGUOUQUPURUGUHZUAXQXNUSZUTZVA
        AXPXRYBAUAJXLCXOAGVBUJUCUHXLVCUJUCZUHRGVDVEACFVFUOZYCMAFVGFVGUHZAFIWAUO
        VGLIWAVHVIZVJVKVLXOUAXMJVMVNAUAXMJVOVJAJBCUCZAIVPUHJBUHTBIJKNVQVEABFUCZ
        YGAIVRUHBYHVNSBFIKLVSVEAYGYDUCZYHCYDMVTYEYIYHVNAYFFVGWBWMWCWDWEWFXRAXRX
        MWGXMWGVNZXQWGUKYJXQWGUJWGYJXOWGYJXOWGXNUEWGXMWGXNWHXNWIWJWKWLWJZWNWOXM
        WGWPZXQXNUKXMXNWQZJWRWOWSVJAXTUAYAXSYAUHZXTAYNXTYNXSWGUHXSWTYAWGXSYAWGV
        NXMWGYJYAWGXNUSWGYJXQWGXNYKXEXNXAWJYLYAXNXNUSWGYLXQXNXNYMXEXNXBWJWSXCXD
        XFXGXHXIAUABCDXOEFGHIJKLMNOPQRXJXK $.
    $}

    ${
      $d x A $.  $d f g B $.  $d f g x F $.  $d f H $.  $d f g M $.
      $d f g S $.  $d f W $.  $d f .x. $.  $d f g .0. $.  $d f x ph $.
      sibfmbl.1 $e |- ( ph -> F e. dom ( W sitg M ) ) $.
      $( A simple function is measurable.  (Contributed by Thierry Arnoux,
         19-Feb-2018.) $)
      sibfmbl $p |- ( ph -> F e. ( dom M MblFnM S ) ) $=
        ( vx cdm cmbfm co wcel crn cfn ccnv cv csn cima cfv cpnf cico cdif wral
        cc0 csitg w3a issibf mpbid simp1d ) AEHUBCUCUDUEZEUFZUGUEZEUHUAUIUJUKHU
        LUQUMUNUDUEUAVDKUJUOUPZAEJHURUDUBUEVCVEVFUSTAUABCDEFGHIJKLMNOPQRSUTVAVB
        $.

      $( A simple function is a function.  (Contributed by Thierry Arnoux,
         19-Feb-2018.) $)
      sibff $p |- ( ph -> F : U. dom M --> U. J ) $=
        ( cdm cuni wf cmeas crn wcel csiga dmmeas syl csigagen cfv cvv fvex a1i
        ctopn syl5eqel sgsiga sibfmbl mbfmf wceq unieqi unisg syl5eq feq3 mpbid
        wb ) AHUAZUBZCUBZEUCZVHGUBZEUCZAVGCEAHUDUEUBUFVGUGUEUBZUFSHUHUIACGUJUKZ
        VMNAGULAGJUOUKZULMVOULUFAJUOUMUNUPZUQUPABCDEFGHIJKLMNOPQRSTURUSAVIVKUTV
        JVLVFAVIVNUBZVKCVNNVAAGULUFVQVKUTVPGULVBUIVCVIVKVHEVDUIVE $.

      $( A simple function has finite range.  (Contributed by Thierry Arnoux,
         19-Feb-2018.) $)
      sibfrn $p |- ( ph -> ran F e. Fin ) $=
        ( vx cdm cmbfm co wcel crn cfn ccnv cv csn cima cfv cpnf cico cdif wral
        cc0 csitg w3a issibf mpbid simp2d ) AEHUBCUCUDUEZEUFZUGUEZEUHUAUIUJUKHU
        LUQUMUNUDUEUAVDKUJUOUPZAEJHURUDUBUEVCVEVFUSTAUABCDEFGHIJKLMNOPQRSUTVAVB
        $.

      $( Any preimage of a singleton by a simple function is measurable.
         (Contributed by Thierry Arnoux, 19-Feb-2018.) $)
      sibfima $p |- ( ( ph /\ A e. ( ran F \ { .0. } ) )
                          -> ( M ` ( `' F " { A } ) ) e. ( 0 [,) +oo ) ) $=
        ( vx ccnv cv csn cima cfv cc0 cpnf cico co wcel crn cdif wral cdm cmbfm
        cfn csitg w3a issibf mpbid simp3d wceq sneq imaeq2d fveq2d eleq1d rspcv
        mpan9 ) AFUCZUBUDZUEZUFZIUGZUHUIUJUKZULZUBFUMZLUEUNZUOZBVSULVKBUEZUFZIU
        GZVPULZAFIUPDUQUKULZVRURULZVTAFKIUSUKUPULWEWFVTUTUAAUBCDEFGHIJKLMNOPQRS
        TVAVBVCVQWDUBBVSVLBVDZVOWCVPWGVNWBIWGVMWAVKVLBVEVFVGVHVIVJ $.

      ${
        $d f g m w x y B $.  $d x z C $.  $d b f g p x z F $.
        $d b p x y z G $.  $d f m w H $.  $d x z J $.  $d b p x y z K $.
        $d b f g m p w x z M $.  $d f g m w S $.  $d f g m w x W $.
        $d f g m w x y .0. $.  $d b p x y z .+ $.  $d f m w .x. $.
        $d f p x y ph $.  $d b z ph $.
        sibfof.c $e |- C = ( Base ` K ) $.
        sibfof.0 $e |- ( ph -> W e. TopSp ) $.
        sibfof.1 $e |- ( ph -> .+ : ( B X. B ) --> C ) $.
        sibfof.2 $e |- ( ph -> G e. dom ( W sitg M ) ) $.
        sibfof.3 $e |- ( ph -> K e. TopSp ) $.
        sibfof.4 $e |- ( ph -> J e. Fre ) $.
        sibfof.5 $e |- ( ph -> ( .0. .+ .0. ) = ( 0g ` K ) ) $.
        $( Applying function operations on simple functions results in simple
           functions with regard to the the destination space, provided the
           operation fulfills a simple condition.  (Contributed by Thierry
           Arnoux, 12-Mar-2018.) $)
        sibfof $p |- ( ph -> ( F oF .+ G ) e. dom ( K sitg M ) ) $=
          ( vz vb vx vp vy co cdm wcel ctopn cfv csigagen cmbfm crn cfn ccnv cv
          csn cima cc0 cpnf cdif wral w3a cuni wa wf cvv ctps wceq tpsuni mpbid
          cxp syl sibff cmeas 3syl wb eqid fvex feq3 a1i syl2anc mpbird cin cun
          eqtri wfun ffun adantr ciun com wbr wss inss2 wfn ffn syl6eq c0 wo wn
          cdom simpr wi sselda ex sylib orbi12i sylibr ralrimiva adantl syl3anc
          biimpi eqeltrd jca cr cle wdisj sylancl cxr sylanl2 measvxrge0 sseldi
          clt orcd wne necon3bbii 0re pnfxr syl21anc cof csitg cico c0g xpeq12d
          feq2d fovrnda dmexg uniexg inidm off unieqi unisg ax-mp syl6eqr csiga
          sgsiga syl5eqel elmapg inundif imaeq2i unpreima syl5eqr dmmeas imaiun
          cmap iunid eqtr3i c1st c2nd ofpreima iuneq1 iunxun eldifbd cop difssd
          cnvimass fdm sstrd 1st2nd2 elxp6 biimpri con3d mpd ianor disjsn dffn3
          syl5sseq fimacnvdisj ineq1 incom in0 ineq2 jaao iuneq2 iun0 un0 eqtrd
          uneq2d ad2antrr simpll syl5ss eqeltri sibfmbl ccld tpstop cldssbrsiga
          inss1 ctop xp1st eleqtrd t1sncld sseldd syl6eleqr mbfmcnvima inelsiga
          ct1 xp2nd sibfrn xpfi mpi csdm isfinite sdomdom domtr nfcv sigaclcuni
          ssdomg ssralv mpsyl imafi ssfi syl5eqelr difpreima cnvimarndm difeq2i
          ofrn2 ssdif0 mpbi 0elsiga unelsiga ismbfm csu cesum measbasedom difss
          fveq2d sseli sylan2 sndisj disjpreima imaeq2d simpl disjxpin measvuni
          sneq disjss1 cicc iccssxr measge0 olcd oveq12 necon3ad anbi12i notbii
          oran nne bitri syl6ibr ralrimivva fniniseg df-ov eqtr3d elsn eqnetrrd
          simplr oveq1 neeq1d neeq1 orbi1d oveq2 orbi2d rspc2v mp2d elsnc orddi
          imbi12d eldif sibfima elico2 mp2an simp3d jaodan xrlelttr mp3an3 impl
          measssd imp xrre3 mpanl2 syl12anc elrege0 sylanbrc esumpfinval 3eqtrd
          jaod fsumrecl fsumge0 breqtrrd 3jca cvsca csca crrh issibf ) AGHDUUAU
          QZKLUUBUQURUSVXOLURZKUTVAZVBVAZVCUQUSZVXOVDZVEUSZVXOVFZULVGZVHZVIZLVA
          ZVJVKUUCUQZUSZULVXTKUUDVAZVHZVLZVMZVNAVXSVYAVYLAVXSVXOVXRVOZVXPVOZUVF
          UQUSZVYBUMVGZVIZVXPUSZUMVXRVMZVPAVYOVYSAVYOVYNVYMVXOVQZAVYNCVXOVQZVYT
          AULUNVYNVYNVYNDJVOZWUBCGHVRVRAVYCUNVGZCWUBWUBDABBWCZCDVQZWUBWUBWCZCDV
          QUGAWUDWUFCDABWUBBWUBANVSUSZBWUBVTZUFBJNPQWAWDZWUIUUEUUFWBZUUGABEFGIJ
          LMNOPQRSTUAUBUCUDWEZABEFHIJLMNOPQRSTUAUBUCUHWEZALWFVDVOZUSZVXPVRUSVYN
          VRUSZUCLWUMUUHVXPVRUUIWGZWUPVYNUUJUUKZACVYMVTWUAVYTWHACVXQVOZVYMAKVSU
          SCWURVTUICVXQKUEVXQWIZWAWDVYMVYMWURVXRVXRVXRWIZUULVXQVRUSZVYMWURVTKUT
          WJZVXQVRUUMUUNWQUUOCVYMVYNVXOWKWDWBAVYMVRUSZWUOVYOVYTWHAVXRUUPVDVOZUS
          WVCAVXRVXRWVDWUTAVXQVRWVAAWVBWLUUQUURZVXRWVDUUIWDWUPVYMVYNVXOVRVRUUSW
          MWNAVYRUMVXRAVYPVXRUSZVPZVYQVYBVYPVXTWOZVIZVYBVYPVXTVLZVIZWPZVXPWVGVY
          QVYBWVHWVJWPZVIZWVLWVMVYPVYBVYPVXTUUTUVAAWVNWVLVTZWVFAWUAVXOWRZWVOWUQ
          VYNCVXOWSZWVHWVJVXOUVBWGWTUVCWVGVXPWVDUSZWVIVXPUSWVKVXPUSZWVLVXPUSAWV
          RWVFAWUNWVRUCLUVDWDZWTZWVGWVIULWVHVYEXAZVXPVYBULWVHVYDXAZVIWWBWVIULVY
          BWVHVYDUVEWWCWVHVYBULWVHUVGUVAUVHWVGWVRVYEVXPUSZULWVHVMZWVHXBXLXCZWWB
          VXPUSWWAAWWEWVFWVHVXTXDZAWWDULVXTVMWWEVYPVXTXEZAWWDULVXTAVYCVXTUSZVPZ
          VYEUODVFVYDVIZGVDZHVDZWCZWOZGVFZUOVGZUVIVAZVHZVIZHVFZWWQUVJVAZVHZVIZW
          OZXAZVXPAVYEWXFVTZWWIAVYEWXFUOWWKWWNVLZWXEXAZWPZWXFAVYEUOWWKWXEXAZWXJ
          AVYNBBVYDDGHVRUOAVYNBGVQZVYNWUBGVQZWUKAWUHWXLWXMWHWUIBWUBVYNGWKWDWNAV
          YNBHVQZVYNWUBHVQZWULAWUHWXNWXOWHWUIBWUBVYNHWKWDWNWUPAWUEDWUDXFZUGWUDC
          DXGWDZUVKUOWWOWXHWPZWXEXAZWXKWXJWXRWWKVTWXSWXKVTWWKWWNUUTUOWXRWWKWXEU
          VLUUNUOWWOWXHWXEUVMUVHXHAWXJWXFXIWPWXFAWXIXIWXFAWXIUOWXHXIXAZXIAWXEXI
          VTZUOWXHVMWXIWXTVTAWYAUOWXHAWWQWXHUSZVPZWWLWWSWOXIVTZWWMWXCWOXIVTZXJZ
          WYAWYCWWRWWLUSZXKZWXBWWMUSZXKZXJZWYFWYCWYGWYIVPZXKZWYKWYCWWQWWNUSZXKW
          YMWYCWWQWWKWWNAWYBXMUVNWYCWYLWYNWYCWWQWUDUSZWWQWWRWXBUVOZVTZWYLWYNXNA
          WXHWUDWWQAWXHWWKWUDAWWKWWNUVPADURZWWKWUDDVYDUVQAWUEWYRWUDVTUGWUDCDUVR
          WDUWHZUVSXOWWQBBUVTZWYQWYLWYNWYNWYQWYLVPWWQWWLWWMUWAUWBXPWGUWCUWDWYGW
          YIUWEXQWYDWYHWYEWYJWWLWWRUWFWWMWXBUWFXRXSWYCVYNWWLGVQZVYNWWMHVQZWYFWY
          AXNAXUAWYBAGVYNXFZXUAAWXMXUCWUKVYNWUBGXGWDVYNGUWGXQWTAXUBWYBAHVYNXFZX
          UBAWXOXUDWULVYNWUBHXGWDVYNHUWGXQWTXUAWYDWYAXUBWYEXUAWYDWYAXUAWYDVPWWT
          XIVTZWYAVYNWWLWWSGUWIXUEWXEXIWXDWOZXIWWTXIWXDUWJXUFWXDXIWOXIXIWXDUWKW
          XDUWLWQXHWDXPXUBWYEWYAXUBWYEVPWXDXIVTZWYAVYNWWMWXCHUWIXUGWXEWWTXIWOXI
          WXDXIWWTUWMWWTUWLXHWDXPUWNWMUWDXTUOWXHWXEXIUWOWDUOWXHUWPXHUWSWXFUWQXH
          UWRZWTWWJWVRWXEVXPUSZUOWWOVMZWWOXBXLXCZWXFVXPUSAWVRWWIWVTWTWWJXUIUOWW
          OWWJWWQWWOUSZVPZWVRWWTVXPUSZWXDVXPUSZXUIAWVRWWIXULWVTUWTXUMAWYOXUNAWW
          IXULUXAZWWJWWOWUDWWQWWJWWOWWKWUDWWKWWNUXHZAWWKWUDXDWWIWYSWTUXBXOZAWYO
          VPZWWSVXPEGAWVRWYOWVTWTZAEWVDUSWYOAEJVBVAZWVDRAJVRJVRUSAJNUTVAVRQNUTW
          JUXCWLUUQUURWTZAGVXPEVCUQZUSWYOABEFGIJLMNOPQRSTUAUBUCUDUXDWTXUSWWSXVA
          EXUSJUXEVAZXVAWWSAXVDXVAXDZWYOAWUGJUXIUSXVEUFJNQUXFJUXGWGWTZXUSJUXQUS
          ZWWRWUBUSWWSXVDUSAXVGWYOUJWTZXUSWWRBWUBWYOWWRBUSZAWWQBBUXJZYAAWUHWYOW
          UIWTZUXKWWRJWUBWUBWIZUXLWMUXMRUXNUXOWMZXUMAWYOXUOXUPXURXUSWXCVXPEHXUT
          XVBAHXVCUSWYOABEFHIJLMNOPQRSTUAUBUCUHUXDWTXUSWXCXVAEXUSXVDXVAWXCXVFXU
          SXVGWXBWUBUSWXCXVDUSXVHXUSWXBBWUBWYOWXBBUSZAWWQBBUXRZYAXVKUXKWXBJWUBX
          VLUXLWMUXMRUXNUXOWMZWWTWXDVXPUXPYBZXTZAXUKWWIAWWOWWNXLXCZWWNXBXLXCZXU
          KAWWOWWNXDZXVSWWKWWNXEZAWWNVEUSZXWAXVSXNAWWLVEUSWWMVEUSXWCABEFGIJLMNO
          PQRSTUAUBUCUDUXSABEFHIJLMNOPQRSTUAUBUCUHUXSWWLWWMUXTWMZWWOWWNVEUYHWDU
          YAAXWCWWNXBUYBXCZXVTXWDXWCXWEWWNUYCYCWWNXBUYDWGWWOWWNXBUYEWMZWTWWOWXE
          VXPUOUOWWOUYFUYGYBYDXTWWDULWVHVXTUYIUYJWTAWWFWVFAWVHVXTXLXCZVXTXBXLXC
          ZWWFAWWGXWGWWHAVYAWWGXWGXNADWWNVIZVEUSZVXTXWIXDVYAADWRZXWCXWJAWUEXWKU
          GWUDCDWSWDXWDDWWNUYKWMAVYNWUBCDGHVRWUKWULWUJWUPUYQXWIVXTUYLWMZWVHVXTV
          EUYHWDUYAAVXTXBUYBXCZXWHAVYAXWMXWLVXTUYCXQVXTXBUYDWDWVHVXTXBUYEWMWTWV
          HVYEVXPULULWVHUYFUYGYBUYMAWVSWVFAWVKXIVXPAWVKVYQVYBVXTVIZVLZXIAWUAWVP
          WVKXWOVTWUQWVQVYPVXTVXOUYNWGXWOVYQVXOURZVLZXIXWNXWPVYQVXOUYOUYPVYQXWP
          XDXWQXIVTVXOVYPUVQVYQXWPUYRUYSWQXHAWVRXIVXPUSWVTVXPUYTWDYDWTWVIWVKVXP
          VUAYBYDXTYEAUMVXPVXRVXOWVTWVEVUBWNXWLAVYHULVYKAVYCVYKUSZVPZVYFYFUSVJV
          YFYGXCVYHXWSVYFWWOWXELVAZUOVUCZYFXWSVYFWXFLVAZWWOXWTUOVUDZXXAXWSVYEWX
          FLAWXGXWRXUHWTVUGXWSLVXPWFVAUSZXUJXUKUOWWOWXEYHZVPXXBXXCVTAXXDXWRAWUN
          XXDUCLVUEXQWTZXWRAWWIXUJVYKVXTVYCVXTVYJVUFVUHZXVRVUIXWSXUKXXEAXUKXWRX
          WFWTAXXEXWRXWAAUOWWNWXEYHZXXEXWBAUNWWLWWPWUCVHZVIZYHZUPWWMWXAUPVGZVHZ
          VIZYHZXXHAGWRZUNWWLXXIYHXXKAWXMXXPWUKVYNWUBGWSWDUNWWLVUJUNWWLXXIGVUKY
          IAHWRZUPWWMXXMYHXXOAWXOXXQWULVYNWUBHWSWDUPWWMVUJUPWWMXXMHVUKYIXXKXXOV
          PUNUPWWLWWMXXJXXNWWTWXDUOWUCWWRVTZXXIWWSWWPWUCWWRVUPVULXXLWXBVTZXXMWX
          CWXAXXLWXBVUPVULXXKXXOVUMXXKXXOXMVUNWMUOWWOWWNWXEVUQUYJWTYEUOWWOWXEVX
          PLVUOYBXWSWWOXWTUOAWWOVEUSZXWRAXWCXWAXXTXWDXWBWWNWWOUYLYIWTZXWSXULVPZ
          XWTYFUSZVJXWTYGXCZXWTVYGUSXYBXWTYJUSZXYDXWTVKYNXCZXYCXYBVJVKVURUQZYJX
          WTVJVKVUSZXYBXXDXUIXWTXYGUSXWSXXDXULXXFWTZXWRAWWIXULXUIXXGXVQYKZWXEVX
          PLYLWMYMZXYBXXDXUIXYDXYIXYJWXEVXPLVUTWMZXYBXWSXULWWTLVAZVKYNXCZWXDLVA
          ZVKYNXCZXJZXYFXWSXULVUMXWSXULXMZXYBAWWRWWLOVHZVLUSZWXBWWMXYSVLUSZXJZX
          YQXWRAWWIXULAXXGXUPYKZXYBWYGWWRXYSUSZXKZVPZWYIWXBXYSUSZXKZVPZXJZYUBXY
          BWYGWYIXJZWYGYUHXJZVPZYUEWYIXJZYUEYUHXJZVPZVPYUJXYBYUMYUPXYBYUKYULXYB
          WYGWYIXYBWYNWYGXYBWWOWWNWWQXWBXYRYMZWWQWWLWWMUXJWDZYOXYBWYGYUHYURYOYE
          XYBYUNYUOXYBWYIYUEXYBWYNWYIYUQWWQWWLWWMUXRWDVVAXYBWWROYPZWXBOYPZXJZYU
          OXYBWUCXXLDUQZVYIYPZWUCOYPZXXLOYPZXJZXNZUPBVMUNBVMZWWRWXBDUQZVYIYPZYV
          AXYBAYVHYUCAYVGUNUPBBAYVGWUCBUSXXLBUSVPAYVCWUCOVTZXXLOVTZVPZXKZYVFAYV
          MYVBVYIAYVMYVBVYIVTAYVMVPYVBOODUQZVYIYVMYVBYVOVTAWUCOXXLODVVBYAAYVOVY
          IVTYVMUKWTUWRXPVVCYVFYVDXKZYVEXKZVPZXKYVNYVDYVEVVFYVRYVMYVPYVKYVQYVLW
          UCOVVGXXLOVVGVVDVVEVVHVVIWTVVJWDXYBVYCYVIVYIXYBWYOWWQDVAZVYCVTZVPZVYC
          YVIVTXYBWWQWWKUSZYWAXWSWWOWWKWWQWWOWWKXDXWSXUQWLXOXYBWXPYWBYWAWHXYBAW
          XPYUCWXQWDWUDVYCWWQDVVKWDWBYWAYVSVYCYVIWYOYVTXMWYOYVSYVIVTYVTWYOYVSWY
          PDVAYVIWYOWWQWYPDWYTVUGWWRWXBDVVLUUOWTVVMWDXYBVYCVYJUSZXKVYCVYIYPXYBV
          YCVXTVYJAXWRXULVVPUVNYWCVYCVYIULVYIVVNYQXQVVOXYBXVIXVNYVHYVJYVAXNZXNX
          YBWYOXVIXWRAWWIXULWYOXXGXURYKZXVJWDXYBWYOXVNYWEXVOWDYVGYWDWWRXXLDUQZV
          YIYPZYUSYVEXJZXNUNUPWWRWXBBBXXRYVCYWGYVFYWHXXRYVBYWFVYIWUCWWRXXLDVVQV
          VRXXRYVDYUSYVEWUCWWROVVSVVTVWGXXSYWGYVJYWHYVAXXSYWFYVIVYIXXLWXBWWRDVW
          AVVRXXSYVEYUTYUSXXLWXBOVVSVWBVWGVWCWMVWDYUEYUSYUHYUTYUDWWROWWROWWQUVI
          WJVWEYQYUGWXBOWXBOWWQUVJWJVWEYQXRXSYEYEWYGYUEWYIYUHVWFXSXYTYUFYUAYUIW
          WRWWLXYSVWHWXBWWMXYSVWHXRXSAXYTXYQYUAAXYTVPZXYNXYPYWIXYMVYGUSZXYNAWWR
          BEFGIJLMNOPQRSTUAUBUCUDVWIYWJXYMYFUSZVJXYMYGXCZXYNYWJYWKYWLXYNVNZVJYF
          USZVKYJUSZYWJYWMWHYRYSVJVKXYMVWJVWKYCVWLWDYOAYUAVPZXYPXYNYWPXYOVYGUSZ
          XYPAWXBBEFHIJLMNOPQRSTUAUBUCUHVWIYWQXYOYFUSZVJXYOYGXCZXYPYWQYWRYWSXYP
          VNZYWNYWOYWQYWTWHYRYSVJVKXYOVWJVWKYCVWLWDVVAVWMWMXYBXYQXYFXYBXYNXYFXY
          PXYBXYEXYMYJUSZXWTXYMYGXCZXYNXYFXNXYKXYBXYGYJXYMXYHXYBXXDXUNXYMXYGUSX
          YIXWRAWWIXULXUNXXGXVMYKZWWTVXPLYLWMYMXYBWXEWWTVXPLXYIXYJYXCWXEWWTXDXY
          BWWTWXDUXHWLVWQXYEYXAVPZYXBVPXYNXYFYXDYXBXYNXYFXYEYXAYWOYXBXYNVPXYFXN
          YSXWTXYMVKVWNVWOVWPXPYTXYBXYEXYOYJUSZXWTXYOYGXCZXYPXYFXNXYKXYBXYGYJXY
          OXYHXYBXXDXUOXYOXYGUSXYIXWRAWWIXULXUOXXGXVPYKZWXDVXPLYLWMYMXYBWXEWXDV
          XPLXYIXYJYXGWXEWXDXDXYBWWTWXDXEWLVWQXYEYXEVPZYXFVPXYPXYFYXHYXFXYPXYFX
          YEYXEYWOYXFXYPVPXYFXNYSXWTXYOVKVWNVWOVWPXPYTVXFVWRYTXYEYWNXYDXYFVPXYC
          YRXWTVJVWSVWTVXAZXYLXWTVXBVXCVXDVXEZXWSWWOXWTUOXYAYXIVXGYDXWSVJXXAVYF
          YGXWSWWOXWTUOXYAYXIXYLVXHYXJVXIVYFVXBVXCXTVXJAULCVXRKVXKVAZVXOKVXLVAV
          XMVAZVXQLVSKVYIUEWUSWUTVYIWIYXKWIYXLWIUIUCVXNWN $.
      $}

      $( Value of the Bochner integral for a simple function ` F ` .
         (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
      sitgfval $p |- ( ph -> ( ( W sitg M ) ` F ) = ( W gsum ( x e. ( ran F \
        { .0. } ) |-> ( ( H ` ( M ` ( `' F " { x } ) ) ) .x. x ) ) ) ) $=
        ( vf vg cv crn csn cdif ccnv cima cfv cmpt cgsu cfn wcel cpnf cico wral
        co cc0 cdm cmbfm crab csitg cvv sitgval wceq simpr rneqd difeq1d cnveqd
        imaeq1d fveq2d oveq1d mpteq12dv oveq2d sibfmbl sibfrn sibfima ralrimiva
        jca32 rneq eleq1d cnveq raleqbidv anbi12d elrab sylibr ovex a1i fvmptd
        wa ) AUBFKBUBUDZUEZLUFZUGZWLUHZBUDZUFZUIZIUJZGUJZWQEURZUKZULURKBFUEZWNU
        GZFUHZWRUIZIUJZGUJZWQEURZUKZULURZUCUDZUEZUMUNZXMUHZWRUIZIUJZUSUOUPURZUN
        ZBXNWNUGZUQZWKZUCIUTDVAURZVBZKIVCURVDABCDEUBUCGHIJKLMNOPQRSTVEAWLFVFZWK
        ZXCXKKULYGBWOXBXEXJYGWMXDWNYGWLFAYFVGZVHVIYGXAXIWQEYGWTXHGYGWSXGIYGWPXF
        WRYGWLFYHVJVKVLVLVMVNVOAFYDUNZXDUMUNZXHXSUNZBXEUQZWKZWKFYEUNAYIYJYLACDE
        FGHIJKLMNOPQRSTUAVPACDEFGHIJKLMNOPQRSTUAVQAYKBXEAWQCDEFGHIJKLMNOPQRSTUA
        VRVSVTYCYMUCFYDXMFVFZXOYJYBYLYNXNXDUMXMFWAZWBYNXTYKBYAXEYNXNXDWNYOVIYNX
        RXHXSYNXQXGIYNXPXFWRXMFWCVKVLWBWDWEWFWGXLVDUNAKXKULWHWIWJ $.

      ${
        $d f g m w x .0. $.  $d f m w .x. $.  $d f g m w x B $.
        $d f g m x F $.  $d m G $.  $d f m w H $.  $d f g m w x y z M $.
        $d f g m w S $.  $d f g m w x W $.  $d f m x ph $.
        sitgclg.g $e |- G = ( Scalar ` W ) $.
        sitgclg.d $e |- D = ( ( dist ` G )
                                |` ( ( Base ` G ) X. ( Base ` G ) ) ) $.
        sitgclg.1 $e |- ( ph -> W e. TopSp ) $.
        sitgclg.2 $e |- ( ph -> W e. CMnd ) $.
        sitgclg.3 $e |- ( ph -> G e. DivRing ) $.
        sitgclg.4 $e |- ( ph -> G e. NrmRing ) $.
        sitgclg.5 $e |- ( ph -> ( ZMod ` G ) e. NrmMod ) $.
        sitgclg.6 $e |- ( ph -> ( chr ` G ) = 0 ) $.
        sitgclg.7 $e |- ( ph -> G e. TopSp ) $.
        sitgclg.8 $e |- ( ph -> G e. CUnifSp ) $.
        sitgclg.9 $e |- ( ph -> ( TopOpen ` G ) e. Haus ) $.
        sitgclg.10 $e |- ( ph -> ( UnifSt ` G ) = ( metUnif ` D ) ) $.
        sitgclg.11 $e |- ( ( ph /\ m e. ( H " ( 0 [,) +oo ) ) /\ x e. B )
                            -> ( m .x. x ) e. B ) $.
        $( Closure of the Bochner integral on a simple functions.  This version
           is very generic, thus the many hypothesis.  See ~ sitgclbn for the
           version for Banach spaces.  (Contributed by Thierry Arnoux,
           24-Feb-2018.) $)
        sitgclg $p |- ( ph -> ( ( W sitg M ) ` F ) e. B ) $=
          ( vy vz csitg co cfv crn csn cdif ccnv cv cima cmpt cgsu sitgfval cvv
          cdm wcel rnexg difexg 3syl wa cc0 cpnf cico simpl sibfima wfun wss wi
          cr csca cbs wf crrh cioo ctg ctopn cds cxp cres fveq2i reseq12i eqtri
          xpeq12i eqid cdr syl5eqelr cnrg czlm cnlm cchr syl5eqr ctps cuss rrhf
          ccusp cmetu feq1i sylibr ffun syl cxr 0re pnfxr icossre mp2an a1i fdm
          wceq sseqtr4d funfvima2 syl2anc imp cuni cmeas csiga cicc c0 com cdom
          w3a cfn sstri wbr wdisj cesum cpw wral isrnmeas csigagen fvex eqeltri
          simpld sgsiga syl5eqel sibfmbl mbfmf unieqi mp1i syl5eq tpsuni eqtr4d
          unisg sseqtrd ssdifd sselda eldifad simp2 eleq1 3anbi2d oveq1 imbi12d
          eleq1d vtoclg mpcom syl3anc fmptd sibfrn cnvimass dmmptss ssfi gsumcl
          frn difss eqeltrd ) AHNLUTVAZVBNBHVCZOVDZVEZHVFBVGZVDVHLVBZJVBZUWGFVA
          ZVIZVJVACABCEFHJKLMNOPQRSTUAUBUCUDVKAUWFCUWKNVLOPSUHAHUWCVMZVNUWDVLVN
          UWFVLVNUDHUWLVOUWDUWEVLVPVQABUWFUWJCUWKAUWGUWFVNZVRZAUWIJVSVTWAVAZVHZ
          VNZUWGCVNZUWJCVNZAUWMWBZUWNAUWHUWOVNZUWQUWTAUWGCEFHJKLMNOPQRSTUAUBUCU
          DWCAUXAUWQAJWDZUWOJVMZWEUXAUWQWFAWGNWHVBZWIVBZJWJZUXBAWGUXEUXDWKVBZWJ
          UXFAUXEDUXDWLVCWMVBZIWNVBDIWOVBZIWIVBZUXJWPZWQUXDWOVBZUXEUXEWPZWQUFUX
          IUXLUXKUXMIUXDWOUEWRUXJUXEUXJUXEIUXDWIUEWRZUXNXAWSWTUXHXBUXEXBIUXDWNU
          EWRAUXDIXCUEUIXDAUXDIXEUEUJXDAUXDXFVBIXFVBXGIUXDXFUEWRUKXDAUXDXHVBIXH
          VBVSIUXDXHUEWRULXIAUXDIXJUEUMXDAUXDIXMUEUNXDUOAUXDXKVBIXKVBDXNVBIUXDX
          KUEWRUPXIXLWGUXEJUXGUAXOXPZWGUXEJXQXRAUWOWGUXCUWOWGWEZAVSWGVNVTXSVNUX
          PXTYAVSVTYBYCYDAUXFUXCWGYFUXOWGUXEJYEXRYGUWOUWHJYHYIYJYIUWNUWGCUWEAUW
          FCUWEVEUWGAUWDCUWEAUWDEYKZCALVMZYKZUXQHWJUWDUXQWEAUXREHALYLVCYKVNZUXR
          YMVCYKZVNZUCUXTUYBUXRVSVTYNVALWJYOLVBVSYFURVGZYPYQUUAUSUYCUSVGZUUBVRU
          YCYKLVBUYCUYDLVBUSUUCYFWFURUXRUUDUUEYRURUSLUUFUUJXRAEKUUGVBZUYARAKVLK
          VLVNZAKNWNVBVLQNWNUUHUUIZYDUUKUULACEFHJKLMNOPQRSTUAUBUCUDUUMUUNUXSUXQ
          HUVTXRAUXQKYKZCAUXQUYEYKZUYHEUYERUUOUYFUYIUYHYFAUYGKVLUUTUUPUUQANXJVN
          CUYHYFUGCKNPQUURXRUUSUVAUVBUVCUVDUWQAUWQUWRYRZUWSAUWQUWRUVEAGVGZUWPVN
          ZUWRYRZUYKUWGFVAZCVNZWFUYJUWSWFGUWIUWPUYKUWIYFZUYMUYJUYOUWSUYPUYLUWQA
          UWRUYKUWIUWPUVFUVGUYPUYNUWJCUYKUWIUWGFUVHUVJUVIUQUVKUVLUVMUWKXBZUVNAU
          WDYSVNUWKVFVLUWEVEZVHZUWDWEZUYSYSVNACEFHJKLMNOPQRSTUAUBUCUDUVOUYTAUYS
          UWFUWDUYSUWKVMUWFUWKUYRUVPBUWFUWJUWKUYQUVQYTUWDUWEUWAYTYDUWDUYSUVRYIU
          VSUWB $.
      $}

      ${
        $d m x B $.  $d m x W $.  $d m F $.  $d m G $.  $d m x ph $.
        $d m .x. $.
        sitgclbn.g $e |- G = ( Scalar ` W ) $.
        sitgclbn.d $e |- D = ( ( dist ` G )
                                |` ( ( Base ` G ) X. ( Base ` G ) ) ) $.
        sitgclbn.1 $e |- ( ph -> W e. Ban ) $.
        sitgclbn.2 $e |- ( ph -> G e. CUnifSp ) $.
        sitgclbn.3 $e |- ( ph -> ( TopOpen ` G ) e. Haus ) $.
        sitgclbn.4 $e |- ( ph -> ( UnifSt ` G ) = ( metUnif ` D ) ) $.
        sitgclbn.5 $e |- ( ph -> ( ZMod ` G ) e. NrmMod ) $.
        sitgclbn.6 $e |- ( ph -> ( chr ` G ) = 0 ) $.
        $( Closure of the Bochner integral on a simple function.  This version
           is specific to Banach spaces, with additional conditions on its
           scalar field.  (Contributed by Thierry Arnoux, 24-Feb-2018.) $)
        sitgclbn $p |- ( ph -> ( ( W sitg M ) ` F ) e. B ) $=
          ( vx cbn wcel ccms cmt ctps bncms cmsms mstps 4syl clmod ccmn lmodcmn
          vm bnlmod 3syl cnvc clvec cdr bnnvc nvclvec lvecdrng cnlm cnrg nlmnrg
          bnnlm bnsca cv cc0 cpnf cico co cima w3a cbs cfv syl 3ad2ant1 imassrn
          crn crrh cr wss cioo ctg ctopn eqid rrhf frn csca fveq2i eqtr4i rneqi
          wf 3sstr4g syl5ss sseld imp 3adant3 simp3 lmodvscl syl3anc sitgclg )
          AUKBCDEVDFGHIJKLMNOPQRSTUAUBUCUDALULUMZLUNUMLUOUMLUPUMUELUQLURLUSUTAX
          NLVAUMZLVBUMUELVEZLVCVFAXNLVGUMLVHUMGVIUMUELVJLVKGLUCVLUTZAXNLVMUMGVN
          UMUELVPGLUCVOVFZUIUJAXNGUNUMGUOUMGUPUMUEGLUCVQGURGUSUTZUFUGUHAVDVRZHV
          SVTWAWBZWCZUMZUKVRZBUMZWDXOXTGWEWFZUMZYEXTYDEWBBUMAYCXOYEAXNXOUEXPWGW
          HAYCYGYEAYCYGAYBYFXTAYBHWJZYFHYAWIAGWKWFZWJZYFYHYFAWLYFYIXDYJYFWMAYFC
          GWNWJWOWFZGWPWFZUDYKWQYFWQZYLWQXQXRUIUJXSUFUGUHWRWLYFYIWSWGHYIHLWTWFZ
          WKWFYISGYNWKUCXAXBXCYMXEXFXGXHXIAYCYEXJXTEGYFBLYDNUCRYMXKXLXM $.
      $}

      ${
        sitgclcn.1 $e |- ( ph -> W e. Ban ) $.
        sitgclcn.2 $e |- ( ph -> ( Scalar ` W ) = CCfld ) $.
        $( Closure of the Bochner integral on a simple function.  This version
           is specific to Banach spaces on the complex numbers.  (Contributed
           by Thierry Arnoux, 24-Feb-2018.) $)
        sitgclcn $p |- ( ph -> ( ( W sitg M ) ` F ) e. B ) $=
          ( csca cfv cds cbs cxp cres ccnfld ccusp cnfldcusp syl6eqel ctopn cha
          eqid fveq2d cnfldhaus cuss cabs cmin ccom cnflduss cc cnfldds syl6eqr
          cmetu cnfldbas xpeq12d reseq12d cme wcel wceq cnmet cr wf wfn fnresdm
          metf ffn 3syl ax-mp syl6eq 3eqtr4a czlm cnlm cnzh cc0 cress co csubrg
          cchr resubdrg simpli subrgchr cofld reofld ofldchr eqtr3i sitgclbn
          cdr ) ABJUCUDZUEUDZXAUFUDZXCUGZUHZCDEXAFGHIJKLMNOPQRSTXAUOXEUOUAAXAUI
          UJUBUKULAXAUMUDUIUMUDZUNAXAUIUMUBUPXFXFUOUQULAUIURUDZUSUTVAZVFUDXAURU
          DXEVFUDXGXGUOVBAXAUIURUBUPAXEXHVFAXEXHVCVCUGZUHZXHAXBXHXDXIAXBUIUEUDX
          HAXAUIUEUBUPVDVEAXCVCXCVCAXCUIUFUDVCAXAUIUFUBUPVGVEZXKVHVIXHVCVJUDVKZ
          XJXHVLZVMXLXIVNXHVOXHXIVPXMXHVCVRXIVNXHVSXIXHVQVTWAWBUPWCAXAWDUDUIWDU
          DWEAXAUIWDUBUPWFULAXAWKUDUIWKUDZWGAXAUIWKUBUPUIVNWHWIZWKUDZXNWGVNUIWJ
          UDVKZXPXNVLXQXOWTVKWLWMVNUIWNWAXOWOVKXPWGVLXOXOUOWPXOWQWAWRWBWS $.
      $}

      ${
        sitgclre.1 $e |- ( ph -> W e. Ban ) $.
        sitgclre.3 $e |- ( ph -> ( Scalar ` W ) = ( CCfld |`s RR ) ) $.
        $( Closure of the Bochner integral on a simple function.  This version
           is specific to Banach spaces on the real numbers.  (Contributed by
           Thierry Arnoux, 24-Feb-2018.) $)
        sitgclre $p |- ( ph -> ( ( W sitg M ) ` F ) e. B ) $=
          ( csca cfv cds cbs cres eqid ccnfld cr cress co ccusp recusp syl6eqel
          cxp ctopn cha fveq2d cioo crn tgioo3 rehaus eqeltrri cuss cmetu reust
          ctg rebase syl6eqr xpeq12d reseq12d 3eqtr4a czlm cnlm rezh cchr cofld
          cc0 wcel wceq reofld ofldchr ax-mp syl6eq sitgclbn ) ABJUCUDZUEUDZWGU
          FUDZWIUPZUGZCDEWGFGHIJKLMNOPQRSTWGUHWKUHUAAWGUIUJUKULZUMUBWLWLUHZUNUO
          AWGUQUDWLUQUDZURAWGWLUQUBUSUTVAVHUDWNURWNWNUHVBVCVDUOAWLVEUDWLUEUDZUJ
          UJUPZUGZVFUDWGVEUDWKVFUDWLWMVGAWGWLVEUBUSAWKWQVFAWHWOWJWPAWGWLUEUBUSA
          WIUJWIUJAWIWLUFUDUJAWGWLUFUBUSWLWMVIVJZWRVKVLUSVMAWGVNUDWLVNUDVOAWGWL
          VNUBUSWLWMVPUOAWGVQUDWLVQUDZVSAWGWLVQUBUSWLVRVTWSVSWAWLWMWBWLWCWDWEWF
          $.
      $}
    $}

    ${
      $d f ph $.
      sitgf.1 $e |- ( ( ph /\ f e. dom ( W sitg M ) )
                    -> ( ( W sitg M ) ` f ) e. B ) $.
      $( The integral for simple functions is itself a function.  (Contributed
         by Thierry Arnoux, 13-Feb-2018.) $)
      sitgf $p |- ( ph -> ( W sitg M ) : dom ( W sitg M ) --> B ) $=
        ( vg vx csitg co cdm wfn crn wss wa wfun cfn wcel ccnv csn cima cfv cc0
        wf cpnf cico cdif wral cmbfm crab cmpt cgsu funmpt sitgval funeqd funfn
        cv mpbiri sylib ralrimiva r19.21bi fnfvrnss syl2anc jca df-f sylibr ) A
        JHUCUDZWAUEZUFZWAUGBUHZUIWBBWAURAWCWDAWAUJZWCAWEEUAVKZUGZUKULWFUMUBVKZU
        NZUOHUPUQUSUTUDULUBWGKUNZVAVBUIUAHUECVCUDVDZJUBEVKZUGWJVAWLUMWIUOHUPFUP
        WHDUDVEVFUDZVEZUJEWKWMVGAWAWNAUBBCDEUAFGHIJKLMNOPQRSVHVIVLWAVJVMZAWCWLW
        AUPBULZEWBVBWDWOAWPEWBAWPEWBAWPEWBTVNVOVNEWBBWAVPVQVRWBBWAVSVT $.
    $}
  $}

  ${
    $d m w D $.  $d f g m w M $.  $d f g m w W $.
    sitmval.d $e |- D = ( dist ` W ) $.
    sitmval.1 $e |- ( ph -> W e. V ) $.
    sitmval.2 $e |- ( ph -> M e. U. ran measures ) $.
    $( Value of the simple function integral metric for a given space ` W ` and
       measure ` M ` .  (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
    sitmval $p |- ( ph -> ( W sitm M ) =
      ( f e. dom ( W sitg M ) , g e. dom ( W sitg M ) |->
        ( ( ( RR*s |`s ( 0 [,] +oo ) ) sitg M ) ` ( f oF D g ) ) ) ) $=
      ( vw vm wcel co csitg cdm cv cof cfv wceq cmeas cuni csitm cxrs cpnf cicc
      cvv crn cc0 cress cmpt2 elex syl oveq1 dmeqd fveq2 ofeq oveqd mpt2eq123dv
      cds fveq2d oveq2 eqcomi ax-mp a1i fveq12d df-sitm ovex dmex mpt2ex ovmpt2
      syl2anc ) AGUGMZEUAUHUBZMGEUCNCDGEONZPZVPCQZDQZBRZNZUDUIUEUFNUJNZEONZSZUK
      ZTAGFMVMIGFULUMJKLGEUGVNCDKQZLQZONZPZWHVQVRWEUTSZRZNZWAWFONZSZUKWDUCCDGWF
      ONZPZWOVQVRGUTSZRZNZWLSZUKWEGTZCDWHWHWMWOWOWSWTWGWNWEGWFOUNUOZXAWTWKWRWLW
      TWJWQVQVRWTWIWPTWJWQTWEGUTUPWIWPUQUMURVAUSWFETZCDWOWOWSVPVPWCXBWNVOWFEGOV
      BUOZXCXBWRVTWLWBWFEWAOVBXBWQVSVQVRWQVSTZXBWPBTXDBWPHVCWPBUQVDVEURVFUSKCDL
      VGCDVPVPWCVOGEOVHVIZXEVJVKVL $.

    $d f g m w D $.  $d f g F $.  $d f g G $.  $d f g m w M $.  $d f g m w W $.
    $d f g ph $.
    sitmfval.1 $e |- ( ph -> F e. dom ( W sitg M ) ) $.
    sitmfval.2 $e |- ( ph -> G e. dom ( W sitg M ) ) $.
    $( Value of the integral distance between two simple functions.
       (Contributed by Thierry Arnoux, 30-Jan-2018.) $)
    sitmfval $p |- ( ph -> ( F ( W sitm M ) G ) =
      ( ( ( RR*s |`s ( 0 [,] +oo ) ) sitg M ) ` ( F oF D G ) ) ) $=
      ( vf vg csitg co cv cfv cvv wceq cdm cof cxrs cc0 cpnf cicc cress sitmval
      csitm wa simprl simprr oveq12d fveq2d wcel fvex a1i ovmpt2d ) AMNCDGEOPUA
      ZUSMQZNQZBUBZPZUCUDUEUFPUGPEOPZRCDVBPZVDRZGEUIPSABMNEFGHIJUHAUTCTZVADTZUJ
      UJZVCVEVDVIUTCVADVBAVGVHUKAVGVHULUMUNKLVFSUOAVEVDUPUQUR $.
  $}

  ${
    $d m x F $.  $d m x G $.  $d m x M $.  $d m x W $.  $d m x ph $.
    sitmcl.0 $e |- ( ph -> W e. Mnd ) $.
    sitmcl.1 $e |- ( ph -> W e. *MetSp ) $.
    sitmcl.2 $e |- ( ph -> M e. U. ran measures ) $.
    sitmcl.3 $e |- ( ph -> F e. dom ( W sitg M ) ) $.
    sitmcl.4 $e |- ( ph -> G e. dom ( W sitg M ) ) $.
    $( Closure of the integral distance between two simple functions, for an
       extended metric space.  (Contributed by Thierry Arnoux, 13-Feb-2018.) $)
    sitmcl $p |- ( ph -> ( F ( W sitm M ) G ) e. ( 0 [,] +oo ) ) $=
      ( co cfv cc0 eqid ccnfld cr cvv wcel wceq a1i vx csitm cds cxrs cpnf cicc
      cof cress csitg cxme sitmfval cxp cres cle cordt crest csigagen cxmu crrh
      vm xrge0base ctopn xrge0topn eqcomi xrge00 cvsca ovex ax-xrsvsca ressvsca
      ax-mp csca ax-xrssca resssca fveq2i cbs cdm cuni wf c0g sibff ctps xmstps
      wb tpsuni 3syl feq3 syl mpbird cmeas crn dmexg uniexg ofresid cpsmet cxmt
      xmsxmet xmetpsmet psmetxrge0 cha ct1 cmopn xmstopn methaus eqeltrd haust1
      xrge0tps cmnd mndidcl xmet0 syl2anc syl6eq sibfof rebase xpeq12i xrge0cmn
      reseq2i ccmn cdr ccrg cfield wa refld isfld mpbi simpli cnrg csubrg cnnrg
      resubdrg subrgnrg mp2an czlm cnlm rezh cchr cofld reofld reex cv cima w3a
      ofldchr cnfldtps ccusp recusp cabs cmin ccom cnfldtopn resstopn cnfldhaus
      resstps resthaus eqeltrri cuss cmetu reust cico cid rrhre imaeq1i wss cxr
      0re pnfxr icossre resiima eqtri icossicc eqsstri sseli 3ad2ant2 ge0xmulcl
      simp3 sitgclg ) ABCEDUBKKBCEUCLZUGKZUDMUEUFKZUHKZDUIKZLUVRAUVPBCDUJEUVPNG
      HIJUKAUAUVROPUHKZUCLZPPULZUMZUNUOLUVRUPKZUQLZURUTUVQUWAUWAUSLZUWEDQUVSMVA
      UVSVBLUWEVCVDUWFNVEUVRQRZURUVSVFLSMUEUFVGZUVRURUDUVSQUVSNZVHVIVJUWAUVSVKL
      ZUSUWHUWAUWKSUWIUVRUWAUDUVSQUWJVLVMVJZVNUVSQRAUDUVRUHVGTHAUVQBCUVPEVOLZUW
      MULZUMZUGKUVTVPADVPZVQZUWMUVPBCQAUWQUWMBVRZUWQEVBLZVQZBVRZAUWMUWSUQLZEVFL
      ZBEVKLUSLZUWSDUJEEVSLZUWMNZUWSNZUXBNZUXENZUXCNZUXDNZGHIVTAUWMUWTSZUWRUXAW
      CAEUJRZEWARZUXLGEWBZUWMUWSEUXFUXGWDWEZUWMUWTUWQBWFWGWHAUWQUWMCVRZUWQUWTCV
      RZAUWMUXBUXCCUXDUWSDUJEUXEUXFUXGUXHUXIUXJUXKGHJVTAUXLUXQUXRWCUXPUWMUWTUWQ
      CWFWGWHADWIWJVQZRUWPQRUWQQRHDUXSWKUWPQWLWEWMAUWMUVRUWOUXBUXCBCUXDUWSUVSDU
      JEUXEUXFUXGUXHUXIUXJUXKGHIVAAUXMUXNGUXOWGAUWOUWMWNLRZUWNUVRUWOVRAUXMUWOUW
      MWOLRZUXTGUWOEUWMUXFUWONZWPZUWOUWMWQWEUWOUWMWRWGJUVSWARAXFTZAUWSWSRUWSWTR
      AUWSUWOXALZWSAUXMUWSUYESGUWOUWSEUWMUXGUXFUYBXBWGAUXMUYAUYEWSRGUYCUWOUYEUW
      MUYENXCWEXDUWSXEWGAUXEUXEUWOKZMUVSVSLAUYAUXEUWMRZUYFMSAUXMUYAGUYCWGAEXGRU
      YGFUWMEUXEUXFUXIXHWGUXEUWOUWMXIXJVEXKXLXDUWLUWCUWAVOLZUYHULUWBPUYHPUYHUWA
      UWANZXMZUYJXNXPUYDUVSXQRAXOTUWAXRRZAUYKUWAXSRZUWAXTRUYKUYLYAUWAUYIYBUWAYC
      YDYETUWAYFRZAOYFRPOYGLRZUYMYHUYNUYKYIYEPOUWAUYIYJYKTUWAYLLYMRAUWAUYIYNTUW
      AYOLMSZAUWAYPRUYOUWAUYIYQUWAUUBVJTUWAWARZAOWARPQRZUYPUUCYRPOQUULYKTUWAUUD
      RAUWAUYIUUETUWAVBLZWSRAUUFUUGUUHXALZPUPKZUYRWSPUWAUYSOUYIOVBLZUYSVUAVUANU
      UIVDZUUJUYSWSRUYQUYTWSRUYSVUBUUKYRPUYSQUUMYKUUNTUWAUUOLUWDUUPLSAUWAUYIUUQ
      TAUTYSZUWGMUEUURKZYTZRZUAYSZUVRRZUUAVUCUVRRZVUHVUCVUGURKUVRRVUFAVUIVUHVUE
      UVRVUCVUEVUDUVRVUEUUSPUMZVUDYTZVUDUWGVUJVUDUUTUVAVUDPUVBZVUKVUDSMPRUEUVCR
      VULUVDUVEMUEUVFYKPVUDUVGVJUVHMUEUVIUVJUVKUVLAVUFVUHUVNVUCVUGUVMXJUVOXD $.
  $}

$(
  @{
    @( The integral metric is a pseudo metric on the simple functions. @)
    sitmpsmet @p |- ( ( W e. V /\ M e. U. ran measures ) ->
      ( W sitm M ) e. ( PsMet ` dom ( W sitg M ) ) ) @=
      ? @.
  @}
$)

$(
  @{
    @( The metric identification for simple functions. @)
    sitmmetid @p |- ( ( W e. V /\ M e. U. ran measures ) ->
      ( ~Met ` ( W sitm M ) ) = ( ( _I |` B ) ~ae M ) ) @=
      ? @.
  @}

  @{
    sitmmet.1 @e |- B = ( Base ` W ) @.
    @( The integral metric is a metric for the equivalence classes of simple
       functions equal almost everywhere. @)
    sitmmet @p |- ( ( W e. V /\ M e. U. ran measures ) -> ( W sitm M ) e.
     ( *Met ` ( dom ( W sitg M ) /. ( ( _I |` B ) ~ae M ) ) ) ) @=
      ? @.
  @}
$)

  ${
    $d w m $.
    $( Define the Bochner integral as the extension by continuity of the
       Bochnel integral for simple functions.

       Bogachev first defines 'fundamental in the mean' sequences, in
       definition 2.3.1 of [Bogachev] p. 116, and notes that those are actually
       Cauchy sequences for the pseudometric ` ( w sitm m ) ` .

       He then defines the Bochner integral in chapter 2.4.4 in [Bogachev]
       p. 118.  The definition of the Lebesgue integral, ~ df-itg .

       (Contributed by Thierry Arnoux, 13-Feb-2018.) $)
    df-itgm $a |- itgm = ( w e. _V , m e. U. ran measures |->
      ( ( ( metUnif ` ( w sitm m ) ) CnExt ( UnifSt ` w ) ) ` ( w sitg m ) ) )
      $.
  $}

$(
  @{
    @d w m f e n i @.
    @( TODO with the previous definiton, fundamental sequences shall be the
       Cauchy sequences for ` ( W sitm M ) ` : ` U. ( Cau `` ( W sitm M ) ) `

       Define the 'fundamental in the mean' sequences, in the sense of the
       definition 2.3.1 of [Bogachev] p. 116.  (Contributed by Thierry Arnoux,
       21-Oct-2017.) @)
    df-fndm @a |- Fundm = ( w e. _V , m e. U. ran measures |-> { f e. ( dom (
      w sitg m ) ^m NN ) | A. e e. RR+ E. n e. ZZ A. i e. ( ZZ>= ` n )
      ( ( RR*s sitg m ) ` ( ( f ` n ) ( dist ` w ) ( f ` i ) ) ) <_ e } ) @.
  @}

  @{
    @d f g h m n w x @.
    @( Old definition @)
    @( Define the Bochner integral, following definition 2.4.4 in [Bogachev]
       p. 118.  The definition of the Lebesgue integral, ~ df-itg .
       (Contributed by Thierry Arnoux, 21-Oct-2017.) @)
    df-itgm @a |- itgm = ( w e. _V , m e. U. ran measures |-> ( f e. ( ( Base `
      w ) ^m U. dom m ) |-> U. ran ( g e. { h e. ( w Fundm m ) | A. x e. U. dom
      m ( n e. NN |-> ( ( h ` n ) ` x ) ) ( ~~>t ` ( TopSet ` w ) ) ( f ` x ) }
      |-> ( ( ~~>t ` ( TopSet ` w ) ) ` ( ( w sitg m ) ` ( g ` n ) ) ) ) ) ) @.
  @}
$)

