package naipmoro.gramm;

//import org.hamcrest.Matcher;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
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
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "anatomy.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
            //assertThat(outContent.toString(), containsString("0 errors"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_AnatomyBad1_Fail() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "anatomy-bad1.mm")) {
            Verifier.mmVerify(is);

            //assertThat(outContent.toString(), not(containsString("0 errors")));
            //Matcher matcher = failRegex.matcher(outContent.toString());
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_AnatomyBad2_Fail() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "anatomy-bad2.mm")) {
            Verifier.mmVerify(is);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_AnatomyBad3_Fail() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "anatomy-bad3.mm")) {
            Verifier.mmVerify(is);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifier() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "big-unifier.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifierBad1_Fail() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "big-unifier-bad1.mm")) {
            Verifier.mmVerify(is);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifierBad2_Fail() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "big-unifier-bad2.mm")) {
            Verifier.mmVerify(is);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_BigUnifierBad3_Fail() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "big-unifier-bad3.mm")) {
            Verifier.mmVerify(is);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Demo0() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "demo0.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Demo0Bad1_Fail() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "demo0-bad1.mm")) {
            Verifier.mmVerify(is);
            assertTrue(failRegex.matcher(outContent.toString()).matches());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Demo0Includee() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "demo0-includee.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @Test
    public void mmVerify_Demo0Includer() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "demo0-includer.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Hol() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "hol.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Iset() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "iset.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Miu() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "miu.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Nf() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "nf.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_PeanoFixed() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "peano-fixed.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Ql() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "ql.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Set20100829() {
        try (InputStream is =
                     getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                     + "set.2010-08-29.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_SetDist() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("metamath-test/"
                                                                              + "set-dist.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Set02() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("set02.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void mmVerify_Set02N() {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream("set02N.mm")) {
            Verifier.mmVerify(is);
            assertSuccess(outContent.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
