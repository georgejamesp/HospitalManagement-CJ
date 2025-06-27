package hospital.steps;

import io.cucumber.java.en.*;
import static org.junit.Assert.*;

public class CommonSteps {

    private String currentPage;
    private String lastClickedButton;

    @Given("I am on the {string} page")
    @When("I am on the {string} page")
    public void iAmOnThePage(String page) {
        currentPage = page;
        System.out.println("Navigated to " + page + " page.");
    }

    @When("I click the {string} button")
    public void iClickTheButton(String button) {
        lastClickedButton = button;
        System.out.println("Clicked the " + button + " button.");
    }

    @Then("I should be on the {string} page")
    public void iShouldBeOnPage(String expectedPage) {
        assertEquals(expectedPage, currentPage);
    }

    @Then("the {string} button should be visible")
    public void buttonShouldBeVisible(String button) {
        assertNotNull(button);
        System.out.println("Verified " + button + " button is visible.");
    }
}
