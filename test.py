from robot.api import Language 

class Example(Language):
    test_case_header='Validations'
    tag_setting='Labels'
    given_prefixes=['Assuming']
    true_strings=['OK','\N{THUMBS UP SIGN}']