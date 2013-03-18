Feature: Merge Articles
  As a blog administrator
  In order to combine 2 related articles
  I want to be able to merge articles together
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
| title     | author | body   | created_at          | published |
| article 1 | admin  | text 1 | 2012-11-20 17:58:23 | true      |
| article 2 | user   | text 2 | 2012-11-20 17:58:23 | true      |

Scenario: Successfully merge articles
When I follow "All Articles"
Then I should see "article 1"
And show me the page
When I follow "article 1"
#Then show me the page
Then I should see "Merge Articles"
When I fill in "Article ID" with "article 2"
And I press "Merge"
Then I should see "text 1"
And I should see "text 2"
When I follow "New Article"
Then I should not see "Merge articles"

	
	
    
