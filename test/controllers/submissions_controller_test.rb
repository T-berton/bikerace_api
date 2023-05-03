require "test_helper"

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  def test_create
    post_params = {
      submission: {
        firstname: 'John',
        lastname: 'Test',
        email_address: 'john.test@example.com',
        slogan_idea: 'Test Slogan'
      }
    }
    post submissions_url, params: post_params
    assert_response :created 
  end 
  def test_update
    submission = submissions(:one)
    put_params = {
      submission: {
        firstname: 'Updated'
      }
    }
    put submission_url(submission),params: put_params
    assert_response :accepted 
    assert_equal 'Updated',json_response['firstname']
  end 

  def test_slogan_idea_length
    post_params_valid = {
      submission: {
        firstname: 'John',
        lastname: 'Test',
        email_address: 'john.test@example.com',
        slogan_idea: 'B' * 50
      }
    }
  
    post_params_invalid = {
      submission: {
        firstname: 'John',
        lastname: 'Test',
        email_address: 'john.test@example.com',
        slogan_idea: 'B' * 51
      }
    }
  
    # Test avec un slogan_idea de 50 caractères (valide)
    post submissions_url, params: post_params_valid
    assert_response :created
  
    # Test avec un slogan_idea de 51 caractères (invalide)
    post submissions_url, params: post_params_invalid
    assert_response :unprocessable_entity
  end
  
  def test_presence_attributes
    post_params_valid = {
      submission: {
        firstname: 'John',
        lastname: 'Test',
        email_address: 'john.test@example.com',
        slogan_idea: 'A valid slogan'
      }
    }
  
    post_params_invalid = {
      submission: {
        firstname: '',
        lastname: '',
        email_address: '',
        slogan_idea: ''
      }
    }
  
    # Test avec des attributs valides
    post submissions_url, params: post_params_valid
    assert_response :created
  
    # Test avec des attributs invalides (vides)
    post submissions_url, params: post_params_invalid
    assert_response :unprocessable_entity
  end
  

  private
  def json_response
    JSON.parse(@response.body)
  end
  

end
