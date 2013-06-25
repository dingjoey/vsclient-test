#include <vsclient.h> 
#include <gtest/gtest.h>

TEST(TESTSUITENAME, TESTCASENAME)
{
    VSResult result;
    const char *domain = "youhui.etao.com";
    select_ip(domain, &result);
    printf("Choose: %s\n", result.ip_str);
    printf("Show Success Message: %d\n", result.is_success);
    printf("Show Error Message: %s\n", result.er_msg);

    EXPECT_EQ(1,1);
}
