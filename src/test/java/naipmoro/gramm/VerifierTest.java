package naipmoro.gramm;

//import org.hamcrest.Matcher;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.*;
import java.util.regex.Pattern;

import static org.hamcrest.CoreMatchers.allOf;
import static org.hamcrest.CoreMatchers.containsString;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

public class VerifierTest {
    private Pattern failRegex = Pattern.compile("^.*[1-9][0-9]* errors.*", Pattern.DOTALL);

    private static void assertSuccess(String reason) {
        assertThat(reason, allOf(containsString("0 errors"), not(containsString("Exception"))));
    }

    private final ByteArrayOutputStream outContent = new ByteArrayOutputStream();
    private final PrintStream originalOut = System.out;

    @Before
    public void setUp() {
        System.setOut(new PrintStream(outContent));
    }

    @After
    public void tearDown() {
        System.setOut(originalOut);
    }

    @Test
    public void mmVerify_Anatomy() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "anatomy.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_AnatomyBad1_Fail() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "anatomy-bad1.mm")
                            .getFile());
            Verifier.mmVerify(file);

            //assertThat(outContent.toString(), not(containsString("0 errors")));
            //Matcher matcher = failRegex.matcher(outContent.toString());
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_AnatomyBad2_Fail() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "anatomy-bad2.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_AnatomyBad3_Fail() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "anatomy-bad3.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifier() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "big-unifier.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifierBad1_Fail() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "big-unifier-bad1.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifierBad2_Fail() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "big-unifier-bad2.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifierBad3_Fail() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "big-unifier-bad3.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Demo0() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "demo0.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Demo0Bad1_Fail() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "demo0-bad1.mm")
                    .getFile());
            Verifier.mmVerify(file);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Demo0Includee() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "demo0-includee.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @Test
    public void mmVerify_Demo0Includer() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "demo0-includer.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Hol() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "hol.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Iset() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "iset.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Miu() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "miu.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Nf() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "nf.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_PeanoFixed() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "peano-fixed.mm")
                    .getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Ql() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "ql.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Set20100829() {
        try {
            File file =
                    new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                     + "set.2010-08-29.mm")
                            .getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_SetDist() {
        try {
            File file = new File(getClass().getClassLoader().getResource("metamath-test/"
                                                                         + "set-dist.mm")
                    .getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Set02() {
        try {
            File file = new File(getClass().getClassLoader().getResource("set02.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Set02N() {
        try {
            File file = new File(getClass().getClassLoader().getResource("set02N.mm").getFile());
            Verifier.mmVerify(file);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
