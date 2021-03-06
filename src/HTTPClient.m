#import "HTTPClient.h"
#import "HTTPRequestOperation.h"

@implementation HTTPClient

NSString * const BASE_URL = @"https://merchant.app:4567";

- (id)init {
  NSURL * url = [[[NSURL alloc] initWithString:BASE_URL] autorelease];
  self = [super initWithBaseURL:url];

  NSAssert([self registerHTTPOperationClass: [HTTPRequestOperation class]],
    @"failed to register HTTPRequestOperation class on %@", [self class]);

  return self;
}

@end
