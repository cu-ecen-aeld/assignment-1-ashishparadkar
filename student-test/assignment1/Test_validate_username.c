#include "unity.h"
#include <stdbool.h>
#include <stdlib.h>
#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

/**
* This function should:
*   1) Call the my_username() function in autotest-validate.c to get your hard coded username.
*   2) Obtain the value returned from function malloc_username_from_conf_file() in username-from-conf-file.h within
*       the assignment autotest submodule at assignment-autotest/test/assignment1/
*   3) Use unity assertion TEST_ASSERT_EQUAL_STRING_MESSAGE to verify the two strings are equal.  See
*       the [unity assertion reference](https://github.com/ThrowTheSwitch/Unity/blob/master/docs/UnityAssertionsReference.md)
*/
void test_validate_my_username()
{
    const char *myusername_func_ptr = NULL;
    const char *conf_username_ptr = NULL;
    myusername_func_ptr = my_username();
    if(myusername_func_ptr == NULL) {
        TEST_ASSERT_TRUE_MESSAGE(false,"my_username() failed!");
    }

    conf_username_ptr = malloc_username_from_conf_file();
    if(conf_username_ptr == NULL) {
        TEST_ASSERT_TRUE_MESSAGE(false,"alloc_username_from_conf_file() failed!");
    }

    TEST_ASSERT_EQUAL_STRING_MESSAGE(myusername_func_ptr,conf_username_ptr,"Invalid username!!!");

}
